

var g_midpoint, g_window_height;
var in_auto_scroll = false;

var g_imgwraps = [];
var g_portraits_selectors, g_imgwrap_selectors;

var g_is_ios_or_ie 

$(function() {
/// add listeners, stuff
	g_is_ios_or_ie = navigator.userAgent.match(/iPad|iPhone/i) !== null || $.support.leadingWhitespace === false;
	g_imgwrap_selectors = $("div.imgwrap");
	
	$('img').load(function() {
		if ( $(this).parent().css('opacity') > 0 ) {
			$(this).css('opacity', 0).animate({'opacity':1.0}, 400)
		}
	})
	
	$("div.thumbnail-jump, div.iter").hover(function() {$(this).addClass('hover')}, function() {$(this).removeClass('hover')})
	$("a[href^='#']").click(function(e) {
		//console.log('in click: ' + $(this).attr('href'))
		e.preventDefault();
		scrollTo_autowrapfoo($(this).attr("href"), {duration:600})
	})
	
	$('footer.article-foot').each(function() {
		var ft = $(this);
		ft.find("nav div.next").click(function(e) {
			e.preventDefault();	scrollTo_autowrapfoo(ft.next(), {duration:400});
		});	
		ft.find("nav div.back").click(function(e) {
			e.preventDefault();	 
			scrollTo_autowrapfoo(ft.prev().prev(), {duration:300});
		});
		ft.find("nav div.home").click(function(e) {
			e.preventDefault();	 scrollTo_autowrapfoo(0, {duration:500});
		});
	});
	
	
	//set up image classes
	$("article.mousey").each(function() {	
		var that = $(this);
		that.data( 'portrait_selectors', that.find("section.row div.img-grid"))
	});

	
	var db = $.debounce(3, function() {
		var st =  $(this).scrollTop();
		var stb = st +g_window_height;
		if (g_imgwrap_selectors !== undefined) {
			g_imgwrap_selectors.each( function() {
				
				if ($(this).queue('fx').length === 0 ) {
					var that = $(this);

					if (that.css('opacity') < 1.0 && st+80 <= that.data('offset_bottom') && stb-80 >= that.data('offset_top') ) {
						if (that.data('is_revealed') === 1) {
							that.animate({opacity:1.0}, 200);
						}else{
							that.animate({opacity:1.0}, 'fast', function() {that.data('is_revealed', 1);});
						}
					}else if ( that.css('opacity') > 0 && (stb < that.data('offset_top')-100 || st > that.data('offset_bottom')+100 )) {					
					
						$.debounce(100, function() {that.css({opacity:0})})();
					}
				}
			})
			
		}

	});
	
	
	
	$(document).scroll(function() {
		if (in_auto_scroll !== true && !g_is_ios_or_ie) {
			db();
		}
	}); 

	
	$("article.mousey").each(function() {
		var that = $(this)
		that.mousemove(	
			function(mouse_e) {
					var tclass = mouse_e.pageX < g_midpoint ?  ['l','r'] : ['r','l'];	
					$(this).data('portrait_selectors').each(function() {
						var sclass = (mouse_e.pageX < $(this).offset().left || mouse_e.pageX > $(this).offset().left+$(this).width()) ? 'f' : 's' 
						var nclassPos  = tclass[0]+sclass;
						if (nclassPos !== that.classPos) {
							$(this).find("div.imgwrap."+tclass[0]).each(function() {
								$(this).children("img."+sclass).show()
								$(this).children("img").not("."+sclass).hide()
							});
							$(this).find("div.imgwrap."+tclass[1]).each(function() {
								$(this).children("img.x").show()
								$(this).children("img").not(".x").hide()
							});
							that.classPos = nclassPos;
						}
				});		
			});		
	});
	

});



/* -----------

window.load

------------ */

$(window).load(function() {
	
	// execute stuff for init
	calculate_browser_dims();
	if (!g_is_ios_or_ie) {
		$("div.imgwrap").css({opacity:0}).not(".mult").children("img").each(function() {
			$(this).wrap("<a class=\"lightbox\" href=\""+ $(this).attr("src") + "\" />");
		})
		
      	
	}
	
	
	
	$(window).resize($.debounce(200, function() {
			calculate_browser_dims();
	}));
	
  	
   
})



/* -----------

functions

------------ */

function calculate_browser_dims() {
	g_midpoint = $(document).width()/2;
	g_window_height = $(window).height();
	
	g_imgwrap_selectors.each(function() {
		var that = $(this);	
		
		that.data("offset_top", that.offset().top)
		that.data("offset_bottom", that.offset().top+ that.height());
		
		
//		$.data(that, "offset_top", that.offset().top);
//		$.data(that, "offset_bottom", that.offset().top+ that.height());
//		//console.log( that.data('offset_top') + ', ' + that.data('offset_bottom'));
	})
	
	$("article.mousey").each(function() {	
		$(this).data('portrait_selectors').find("div.imgwrap").each(function() {
			var div_midpoint = g_midpoint; //$(this).parent().parent().width()/2 + $(this).parent().parent().position().left;
			////console.log("div_midpoint: " + div_midpoint + " this.pos.left: " + $(this).offset().left)
			var pclass = $(this).offset().left < div_midpoint ? 'l' : 'r'
			$(this).addClass(pclass);
			var imgchildren = $(this).children('img');
			imgchildren.eq(0).addClass('s');
			imgchildren.eq(1).addClass("f");
			imgchildren.eq(2).addClass("x");
		})
	});
}

function scrollTo_autowrapfoo(target, opts) {
	if (in_auto_scroll === false && target !== undefined ) {
		in_auto_scroll = true;
		opts.onAfter = function() {
			in_auto_scroll=false; 
			$(document).trigger('scroll');
		};
		$(document).scrollTo(target, opts);
	}
}

function displayFullsizePicture (imageURL) {
 	javascript:document.getElementById('img_displayed').src= imageURL; 
  	document.getElementById('img_displayed_class').style.display='block';  
  
  $('body').css("overflowY", "hidden");
  
  	return false; 
	 
}
