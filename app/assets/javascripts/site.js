var refreshRating = function() {  
	//star rating system
	$('.rating').raty( { path: '/assets/images', scoreName: 'comment[rating]' });
	$('.rated').raty({ path: '/assets/images',
	readOnly: true,
	score: function(){
	  return $(this).attr('data-score');
	}
  });
};

$(document).on('turbolinks:load', function(){
	refreshRating();
	 //zoom in on products
  $('.img-zoom').elevateZoom();
});