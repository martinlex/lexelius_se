app.controller('filterCtrl', function($scope, $http) {

	$http.get('query_posts.php').then(function (response) {
		$scope.posts = response.data.records;
	});
	$scope.filters = { };
	$scope.categories = [
		{name: 'Web Dev', id: 'cat_dev'},
		{name: 'Typsnitt', id: 'cat_type'},
		{name: 'Målningar', id: 'cat_arts'}
	];
});
