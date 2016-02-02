<!DOCTYPE html>
<html ng-app="app">

<?php require 'include/head.html' ?>

<body class="body" ng-controller="mainCtrl">

	<div id="wrapper">

		<?php require 'include/header.html' ?>
		<?php require 'include/contact.html' ?>

		<!-- Single post -->
		<div class="singlePost" ng-show="thePost">
			<div class="postContent" ng-repeat="result in results | filter:clickedPost">
				<div ng-click="hidePost();">
					<svg class="right" xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="cursor:pointer" viewBox="0 0 53.858 53.858"><path d="M26.845 52.556c-14.195 0-25.71-11.517-25.71-25.71S12.65 1.133 26.844 1.133c14.194 0 25.71 11.517 25.71 25.71S41.04 52.557 26.846 52.557zM5.42 26.846c0 11.817 9.606 21.425 21.425 21.425 11.817 0 21.426-9.607 21.426-21.425S38.664 5.42 26.846 5.42C15.027 5.42 5.42 15.026 5.42 26.844z"/><path d="M40.11 36.92l-3.19 3.188c-.42.422-1.006.656-1.592.656s-1.172-.234-1.593-.656l-6.89-6.89-6.89 6.89a2.273 2.273 0 0 1-1.594.656c-.584 0-1.17-.234-1.592-.656L13.58 36.92a2.272 2.272 0 0 1-.656-1.592c0-.586.234-1.172.656-1.594l6.89-6.89-6.89-6.89a2.273 2.273 0 0 1-.656-1.594c0-.586.234-1.172.656-1.594l3.188-3.187a2.277 2.277 0 0 1 1.593-.657c.587 0 1.173.235 1.595.656l6.89 6.89 6.89-6.89c.42-.422 1.007-.657 1.593-.657s1.172.235 1.593.656l3.19 3.186c.42.422.655 1.008.655 1.594a2.28 2.28 0 0 1-.656 1.594l-6.89 6.89 6.89 6.89c.42.422.655 1.008.655 1.594 0 .586-.235 1.172-.656 1.593z"/></svg>
				</div>
				<!-- Title -->
				<h1>{{result.title}}</h1>
				<!-- First img -->
				<img src="images/{{result.img_1}}" />
				<!-- Body -->
				<p>{{result.body_1}}</p>
				<p ng-show="result.body_2 != ''">{{result.body_2}}</p>
				<!-- More images -->
				<br>
				<img ng-show="result.img_2 != ''" src="images/{{result.img_2}}" />
				<img ng-show="result.img_3 != ''" src="images/{{result.img_3}}" />
				<img ng-show="result.img_4 != ''" src="images/{{result.img_4}}" />
				<img ng-show="result.img_5 != ''" src="images/{{result.img_5}}" />
				<!-- Tags -->
				<div class="tags">
					<code ng-show="result.tag_1 != ''">{{result.tag_1}}&nbsp;</code>
					<code ng-show="result.tag_2 != ''">{{result.tag_2}}&nbsp;</code>
					<code ng-show="result.tag_3 != ''">{{result.tag_3}}&nbsp;</code>
					<code ng-show="result.tag_4 != ''">{{result.tag_4}}&nbsp;</code>
					<code ng-show="result.tag_5 != ''">{{result.tag_5}}&nbsp;</code>
				</div>
			</div>
		</div>

		<!-- All posts -->
		<div class="main-content">
			<div ng-repeat="post in posts | filter:filters">
				<div class="list-item full {{post.category}}" ng-class-odd="'odd'" ng-class-even="'even'">
					<div class="post-image thumbnail quarter left" style="background-image: url('thumb350/{{post.thumbnail_img}}')" data="{{post.id}}" ng-click="showPost(post.id)">
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