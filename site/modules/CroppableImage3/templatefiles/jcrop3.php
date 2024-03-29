<?php namespace ProcessWire;

if(isset($invalidFieldText) && $invalidFieldText) {

    echo "<p class='description'>{$invalidFieldText}</p>\n";

} else {

?>
    <div id='hd'>

        <p class='leftcolumn'><?php echo $descriptionText; ?></p>

        <form method="POST" action="./save/?modal=1">

            <div class='row'>
                <button type="submit" class="ui-button ui-widget ui-corner-all ui-state-default" id="cropButton">
                    <?php echo $applyCropText;?>
                </button>
                <button class="ui-button ui-widget ui-corner-all ui-state-default ui-priority-secondary" onclick='parent.caiCloseReviewWindow();'>
                    ESC
                </button>
                <div class='clearfix'></div>
            </div>

            <div class='row'>
                <label for="show_preview"><?php echo $showPreviewText; ?></label>
                <input type="checkbox" checked="checked" name="show_preview" id="show_preview">
            </div>

            <div class='row'>
                <!-- Sharpening -->
                <label <?php echo $manualSelectionAllowed;?> for="sharpening"><?php echo $sharpeningText ?></label>
                <select <?php echo $manualSelectionAllowed;?> id="sharpening" name="sharpening">
                    <option selected><?php echo $sharpening ?></option>
                    <option>none</option>
                    <option>soft</option>
                    <option>medium</option>
                    <option>strong</option>
                </select>
            </div>

            <div class='row'>
                <!-- Quality -->
                <label <?php echo $manualSelectionAllowed;?> for="quality"><?php echo $qualityText ?></label>
                <select <?php echo $manualSelectionAllowed;?> id="quality" name="quality">
                    <option selected><?php echo $quality ?></option>
                    <option>100</option>
                    <option>97</option>
                    <option>94</option>
                    <option>92</option>
                    <option>90</option>
                    <option>87</option>
                    <option>84</option>
                    <option>80</option>
                    <option>75</option>
                    <option>70</option>
                    <option>65</option>
                    <option>60</option>
                    <option>55</option>
                    <option>50</option>
                </select>
            </div>

            <p class='leftcolumn'><?php echo $descriptionText; ?></p>

            <input type="hidden" name="filename" value="<?php echo $filename ?>" />
            <input type="hidden" name="field" value="<?php echo $field ?>" />
            <input type="hidden" name="pages_id" value="<?php echo $pages_id ?>" />
            <input type="hidden" name="width" value="<?php echo $width ?>" />
            <input type="hidden" name="height" value="<?php echo $height ?>" />
            <input type="hidden" name="suffix" value="<?php echo $suffix ?>" />
            <input type="hidden" id="ci-image-width" name="image[w]" value="<?php echo $origWidth ?>">
            <input type="hidden" id="ci-image-height" name="image[h]" value="<?php echo $origHeight ?>">
            <input type="hidden" id="x1" name="crop[x1]" value="<?php echo $x1 ?>">
            <input type="hidden" id="y1" name="crop[y1]" value="<?php echo $y1 ?>">
            <input type="hidden" id="w" name="crop[w]" value="<?php echo $w ?>">
            <input type="hidden" id="h" name="crop[h]" value="<?php echo $h ?>">
            <input type="hidden" id="upscaling" name="upscaling" value="<?php echo $upscaling ?>">
        </form>
        <div class='clearfix'></div>
    </div>

    <div id='bd'>
        <img src='<?php echo $imageUrl ?>' data-width='<?php echo $width ?>' data-height='<?php echo $height ?>' id='jcrop_target' alt='' />
        <div id='preview-container' style='overflow:hidden; height:<?php echo $height ?>px; width:<?php echo $width ?>px;'>
            <img src='<?php echo $imageUrl ?>' id='preview' alt='' />
        </div>
    </div>

<?php
}

