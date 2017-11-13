
(function($){

	function loadLiveNow(){
		var str = $('html').attr('lang');
		var lang = str.split("-")[0];
		var pagePath = window.location.href.split(window.location.host)[1];
		var lastPartOfURL = window.location.href.substr(window.location.href.lastIndexOf('/') + 1);
		var isHomeFile = (lastPartOfURL==lang+".html")?true:false;
		var isIndexFile = (lastPartOfURL=="index.html")?true:false;
		if (isHomeFile) {
			var url = lang +'/live-now-feed.json';	
		} else if (isIndexFile) {
			var url = 'live-now-feed.json';	
		} else if (lastPartOfURL==lang) {
			var url = lang + '/live-now-feed.json';		
		} else{
			var url = 'live-now-feed.json';	
		}
		$.getJSON(url).done(function(data) {
			var d1;
			var d2;
			var d3;
			$.ajaxSetup({ cache: false });
			var firstPublished = false;
			$.each( data.nodes, function( i, item ) {
				//console.log('Title'+i+' = ' +item.node.title);
				//console.log('Link'+i+' = ' + item.node.field_link);
				//console.log('Publish'+i+' = ' + item.node.publish_on);
				//console.log('Unpublish'+i+' = ' + item.node.unpublish_on);
								
				d1=Date.parse(item.node.publish_on);
				d2=Date.now();
				d3=Date.parse(item.node.unpublish_on);
				
				//console.log ('Date now is --- ' + d2);
				//console.log ('Publish Date is --- ' + d1 + ' Current Date is -- ' + d2 + ' Unpublish is -- ' + d3);
				//console.log ('Delta publish ' + (d1-d2));
				//console.log ('Delta unpublish ' + (d3-d2));
				if (((d2-d1)>0|isNaN(d2-d1)) & (d2-d3)<0) {
				//	console.log('We can publish it now');
					$("div#block-un-home-11").html('<span class="live-now">'+item.node.field_display_label+'</span>:&nbsp;<a href="' + item.node.field_link +'" target="0">' +  item.node.title_field_et +'</a>' );
					firstPublished = true;
				} else {
				//	console.log('We can NOT publish it now');
					$("div#block-un-home-11").html('' );
				}
				
				if (firstPublished) {
					return false;
				}
				
				if ( i === 10 ) {
					return false;
				}
			});
			
		});
	}


	$(document).ready(function(){
		loadLiveNow();
		setInterval(loadLiveNow, 60000);
				
	});
	
})(jQuery);;
