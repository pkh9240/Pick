$(function() {

	jQuery.fn.serializeObject = function() {
	    var obj = null;
	    try {
	        if (this[0].tagName && this[0].tagName.toUpperCase() == "FORM") {
	            var arr = this.serializeArray();
	            if (arr) {
	                obj = {};
	                jQuery.each(arr, function() {
	                    obj[this.name] = this.value;
	                });
	            }//if ( arr ) {
	        }
	    } catch (e) {
	        alert(e.message);
	    } finally {
	    }
	 
	    return obj;
	};
	function maskImgs() {
		$.each($('.img-wrapper img'), function(index, img) {
			var src = $(img).attr('src');
			var parent = $(img).parent();
			parent
					.css('background',
							'url(' + src + ') no-repeat center center').css(
							'background-size', 'cover');
			$(img).remove();
		});
		//});
	}
	var preview = {
		init : function() {
			preview.setPreviewImg();
			preview.listenInput();
		},
		setPreviewImg : function(fileInput) {
			var path = $(fileInput).val();
			var uploadText = $(fileInput).siblings('.file-upload-text');
			if (!path) {
				$(uploadText).val('');
			} else {
				path = path.replace(/^C:\\fakepath\\/, "");
				$(uploadText).val(path);
				preview.showPreview(fileInput, path, uploadText);
			}
		},
		showPreview : function(fileInput, path, uploadText) {
			var file = $(fileInput)[0].files;
			if (file && file[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					var previewImg = $(fileInput).parents(
							'.file-upload-wrapper').siblings('.preview');
					var img = $(previewImg).find('img');
					if (img.length == 0) {
						$(previewImg).html(
								'<img src="' + e.target.result + '" alt=""/>');
					} else {
						img.attr('src', e.target.result);
					}
					uploadText.val(path);
					maskImgs();
				}
				reader.onloadstart = function() {
					$(uploadText).val('uploading..');
				}
				reader.readAsDataURL(file[0]);
			}
		},
		listenInput : function() {
			$('.file-upload-native').on('change', function() {
				preview.setPreviewImg(this);
			});
		}
	};
	preview.init();
});
$(document).ready(function() {
	$('select').material_select();
});