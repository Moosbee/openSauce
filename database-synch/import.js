const sql_file = "../opensause.sql";

const host = "localhost";
const user = "root";
const password = "";
const database = "opensauce";

const sql_statement_del = `DROP DATABASE IF EXISTS ${database};`;
const sql_statement_cre = `CREATE DATABASE ${database};`;

function delite(sta) {
  var mysql = require("mysql");

  var con = mysql.createConnection({
    host: host,
    user: user,
    password: password,
  });

  con.connect(function (err) {
    if (err) throw err;
    console.log("Connected!");
    con.query(sql_statement_del, function (err, result) {
      if (err) throw err;
      console.log("Deleted!");
      con.query(sql_statement_cre, function (err, result) {
        if (err) throw err;
        console.log("Created!");
        con.end();
        if (sta) {
          importiere();
        }
      });
    });
  });
}

function importiere() {
  const Importer = require("mysql-import");
  const importer = new Importer({ host, user, password, database });

  // New onProgress method, added in version 5.0!
  importer.onProgress((progress) => {
    var percent =
      Math.floor((progress.bytes_processed / progress.total_bytes) * 10000) /
      100;
    console.log(`${percent}% Completed!`);
  });

  importer
    .import(sql_file)
    .then(() => {
      var files_imported = importer.getImported();
      console.log(`${files_imported.length} SQL file(s) imported!`);
    })
    .catch((err) => {
      console.error(err);
    });
}

delite(true);
// importiere();
