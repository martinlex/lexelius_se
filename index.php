<!DOCTYPE html>
<html ng-app="app">

<?php require 'include/head.html' ?>

<body class="body" ng-controller="mainCtrl">

	<div id="wrapper">

		<?php require 'include/header.html' ?>
		<?php require 'include/contact.html' ?>

		<!-- Single post -->
		<div ng-show="thePost">
			<div ng-repeat="result in results | filter:clickedPost">
			{{result.id}}, {{result.title}}, {{result.body}}
			<span ng-click="hidePost();">[x]</span>
			</div>
		</div>

		<!-- All posts -->
		<div class="main-content">
			<div ng-repeat="post in posts | filter:filters">
				<div class="list-item full {{post.category}}" ng-class-odd="'odd'" ng-class-even="'even'">
					<div class="post-image thumbnail quarter left" style="background-image: url('thumb/{{post.thumbnail_img}}')" data="{{post.id}}" ng-click="showPost(post.id)">
					</div>
					<div class="post-title ellipsified left">
						<h1 data="{{post.id}}" ng-click="showPost(post.id);">{{post.title}}</h1>
					</div>
				</div>
			</div>
		</div>

	</div> <!-- End wrapper -->

</body>
</html>