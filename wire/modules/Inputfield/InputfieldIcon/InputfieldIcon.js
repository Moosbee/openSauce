function InputfieldIcon() {
	
	$('.InputfieldIcon select').change(function() {
		var $select = $(this);
		var val = $select.val();
		if(val.length > 0) {
			$select.closest('.InputfieldIcon').find('.InputfieldHeader > i.fa:first-child')
				.attr('class', 'fa fa-fw ' + val)
				.parent().effect('highlight', 500);
			var $all = $select.siblings('.InputfieldIconAll');
			if($all.is(':visible')) {
				$all.find('.on').removeClass('on');
				$all.find('.' + val).addClass('on');
			}
		}
		$select.removeClass('on');
	});

	$('.InputfieldIconAll').hide();

	$('a.InputfieldIconShowAll').on('click', function() {

		var $a = $(this);
		var $ai = $a.prev('i');
		var $all = $a.siblings('.InputfieldIconAll');
		var $select = $a.siblings("select");
		
		$ai.toggleClass('fa-angle-down fa-angle-right');

		if($all.is(":visible")) {
			$all.hide();
			return false;
		}

		$all.show();

		if($all.hasClass('initialized')) return false;

		$all.addClass('initialized');

		$select.children('option').each(function() {
			var val = $(this).val();
			if(val.length == 0) return;
			$all.append("<i class='fa fw " + val + "' title='" + val + "'>");
		});

		$all.on('click', 'i', function() {
			var $i = $(this);
			if($i.hasClass('on')) {
				$i.removeClass('on');
				$select.val('').change();
				return;
			}
			$all.find('.on').removeClass('on');
			$i.addClass('on');
			if(!$select.hasClass('on')) {
				$select.val($i.attr('title')).change();
			}
		});

		var val = $select.val();
		if(val.length > 0) {
			$all.find('.' + val).addClass('on');
		}

		return false;
	});

}

$(document).ready(function() {
	InputfieldIcon();
});

