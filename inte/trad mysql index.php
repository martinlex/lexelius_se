<?php require 'conn.php' ?>

<!DOCTYPE html>
<html>

<?php require 'head.html' ?>

<body class="body">

<!--

<div class="thumbnail">
  <img src="landscape-img.jpg" alt="Image" />
</div>
<div class="thumbnail">
  <img src="portrait-img.jpg" class="portrait" alt="Image" />
</div>

.thumbnail {
  position: relative;
  width: 200px;
  height: 200px;
  overflow: hidden;
}
.thumbnail img {
  position: absolute;
  left: 50%;
  top: 50%;
  height: 100%;
  width: auto;
  -webkit-transform: translate(-50%,-50%);
      -ms-transform: translate(-50%,-50%);
          transform: translate(-50%,-50%);
}
.thumbnail img.portrait {
  width: 100%;
  height: auto;
}

-->

	<div id="wrapper">

		<?php require 'header.html' ?>

		<div class="main-content">

			<?php
			mysqli_query($dbhandle, "SET NAMES 'utf8'");
			$result = mysqli_query($dbhandle, "SELECT id,category,thumbnail_img,title FROM posts ORDER by timestamp DESC");
			while ($row = mysqli_fetch_array($result)) {
			?>

				<div id="<?php echo $row['id']; ?>" class="list-item full <?php echo $row['category']; ?>">
					<div class="xy post-image quarter left">
						<img class="thumbnail" src="images/ " . <?php echo $row['thumbnail_img']; ?> . "" alt="">
					</div>
					<div class="post-title ellipsified left">
						<h1><?php echo $row['title']; ?></h1>
					</div>
				</div>

			<?php
			}
			mysqli_close($dbhandle);
			?>

		</div>

	</div>

</body>
</html>

<footer>
</footer>