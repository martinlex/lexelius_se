<!DOCTYPE html>
<html ng-app="app">

<?php require 'head.html' ?>

<body class="body" ng-controller="filterCtrl">

	<div id="wrapper">

		<?php require 'header.html' ?>

		<div class="main-content">

<div ng-repeat="post in posts | filter:filters">
			<div id="{{post.id}}" class="list-item full {{post.category}}" ng-class-odd="'odd'" ng-class-even="'even'">
				<div class="xy post-image quarter left">
					<img class="thumbnail" src="thumb/{{post.thumbnail_img}}" alt="">
				</div>
				<div class="post-title ellipsified left">
					<h1>{{post.title}}</h1>
				</div>
			</div>
</div>

		</div> <!-- End main-content -->
	</div> <!-- End wrapper -->

</body>
</html>