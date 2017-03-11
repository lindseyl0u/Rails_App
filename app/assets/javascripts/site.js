$(document).on('turbolinks:load', function(){
	 //zoom in on products
  $('.img-zoom').elevateZoom();
  
	//star rating system
	$('.rating').raty( { path: '/assets/images', scoreName: 'comment[rating]' });
	$('.rated').raty({ path: '/assets/images',
	readOnly: true,
	score: function(){
	  return $(this).attr('data-score');
	}
  });
});