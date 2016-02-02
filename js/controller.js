app.controller('mainCtrl', function($scope, $http, $window) {

	// Load posts from mySQL and JSON
	$http.get('./include/query_posts.php').then(function (response) {
		$scope.posts = response.data.records;
		// Make duplicate for single post
		$scope.results = $scope.posts;
	});
	// Filtering posts in menu
	$scope.filters = { };
	$scope.categories = [
		{name: 'Web Dev', id: 'cat_dev'},
		{name: 'Typsnitt', id: 'cat_type'},
		{name: 'Målningar', id: 'cat_arts'}
	];
	// Show and hide contact
	$scope.showAbout = function() { $scope.showContact = true;  }
	$scope.hideAbout = function() { $scope.showContact = false; }

	// Show single post
	$scope.showPost = function(id) {
		console.log(id);
		// Change filter value in results repeat
		$scope.clickedPost = function(results) {
			return results.id === id;
		}
		// Show the post
		$scope.thePost = true;
		// Scroll to the top
		$window.scrollTo(0,0)
	}

	// Close single post
	$scope.hidePost = function() { $scope.thePost = false; }

});
