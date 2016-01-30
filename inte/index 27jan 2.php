<!DOCTYPE html>
<html ng-app="app">

<?php require 'include/head.html' ?>

<body class="body" ng-controller="mainCtrl">

	<div id="wrapper">

		<?php require 'include/header.html' ?>
		<?php require 'include/contact.html' ?>

		<div class="main-content">
			<div ng-repeat="post in posts | filter:filters">
				<div id="{{post.id}}" class="list-item full {{post.category}}" ng-class-odd="'odd'" ng-class-even="'even'">
					<div class="post-image thumbnail quarter left" style="background-image: url('thumb/{{post.thumbnail_img}}')">
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