Zepto(function($) {

	console.log('Zepto js : running')

	/* Filtering */
	$('nav > a.category').on('click', function(){
		// Get category from menu on click
		var clickedCategory = $(this).attr('id')
		console.log(clickedCategory)
		// Hide all
		$('div.list-item').hide()
		// Show matching category
		$('.'+clickedCategory).show()
		repaintEvenOdd()
	}) // - End Filtering

	/* Show All */
	$('nav > a#all').on('click', function(){
		$('div.list-item').show()
		repaintEvenOdd()
	}) // - End Show All



	// Iterate over DOM and repaint even odd CSS
	function repaintEvenOdd(){
		var n = 0
		$('div.list-item').each(function(){
			if ( $(this).css('display') == 'block' ) { 
				console.log(n)
				if (n % 2 == 0) {
					$(this).css('background','#ccc')
				} else {
					$(this).css('background','#ddd')
				}
				n++
			}
		})
	}

}) // - End Zepto
