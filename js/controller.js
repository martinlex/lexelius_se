app.controller('mainCtrl', function($scope, $http) {

	// Load posts from mySQL and JSON
	$http.get('./include/query_posts.php').then(function (response) {
		$scope.posts = response.data.records;
	});
	// Filtering posts in nav
	$scope.filters = { };
	$scope.categories = [
		{name: 'Web Dev', id: 'cat_dev'},
		{name: 'Typsnitt', id: 'cat_type'},
		{name: 'Målningar', id: 'cat_arts'}
	];
	// Show and hide
	$scope.showMe = function() {
		$scope.show = true;
	}
	$scope.hideMe = function() {
		$scope.show = false;
	}

});
