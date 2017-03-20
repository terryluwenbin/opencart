<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
 <!-- -->
  <link href="https://fonts.googleapis.com/css?family=Lato&subset=latin,latin-ext" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700|Open+Sans:400italic,400,700,600,300" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400|" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,300|" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400italic|" rel="stylesheet" type="text/css">
  <!-- -->
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/javascript/jquery/spinner/bootstrap-spinner.css" rel="stylesheet" type="text/css" />
<script src="catalog/view/javascript/jquery/spinner/jquery.spinner.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/jquery/cloud-zoom/cloud-zoom.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/javascript/jquery/thumbelina/thumbelina.css" rel="stylesheet" type="text/css" />
<script src="catalog/view/javascript/jquery/cloud-zoom/cloud-zoom.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/thumbelina/thumbelina.js" type="text/javascript"></script>

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<nav id="top">
  <div class="container">
    <!-- insert logo-->
    <div id="logo" class="pull-left">
      <?php if ($logo) { ?>
      <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
      <?php } else { ?>
      <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
      <?php } ?>
    </div>
    <!--disable currency select-->
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <!--remove the contact-->
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $logindesc; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $logindesc; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-left">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>

            <?php /* >
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <*/?>

            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <!--remove the wishlist-->
        <li>
          <?php echo($cart) ?>
        </li>
        <!--remove checkout-->
        <!-- add the bbs link 2016.09.12 start -->
        <li ><a href="http://bbs.xlight.ca/sso" target="_blank" class="sso"><i class="fa fa-commenting"></i>XFans</a></li>
        <!-- add the bbs link 2016.09.12 end -->
      </ul>
    </div>
  </div>
</nav>
<!--remove the search -->
<?php /* ?>
<<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-5"><?php echo $search; ?>
      </div>
      <div class="col-sm-3"><?php echo $cart; ?></div>
    </div>
  </div>
</header>
< */ ?>
<script src="catalog/view/javascript/so_megamenu.js" type="text/javascript"></script>

<link href="catalog/view/javascript/css/so_megamenu.css" rel="stylesheet">
<link href="catalog/view/javascript/css/so-categories.css" rel="stylesheet">
<link href="catalog/view/javascript/css/so-listing-tabs.css" rel="stylesheet">
<link href="catalog/view/javascript/css/theme.css" rel="stylesheet">
<style>
  .animated {
    -webkit-animation-duration: 0.4s;
    animation-duration: 0.4s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
  }

  @-webkit-keyframes flip_InX {
    from {
      -webkit-transform: perspective(400px) rotate3d(1, 0, 0, -90deg);
      transform: perspective(400px) rotate3d(1, 0, 0, -90deg);
      transform-origin: 50% 0 0;
      opacity: 0;
      transition: all 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94) 0s;
    }

    to {
      -webkit-transform: perspective(400px);
      transform: perspective(400px);
    }
  }

  @keyframes flip_InX {
    from {
      -webkit-transform: perspective(400px) rotate3d(1, 0, 0, -90deg);
      transform: perspective(400px) rotate3d(1, 0, 0, -90deg);
      transform-origin: 50% 0 0;
      opacity: 0;
      transition: all 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94) 0s;
    }

    to {
      -webkit-transform: perspective(400px);
      transform: perspective(400px);
    }
  }

  .flip_InX {
    -webkit-backface-visibility: visible !important;
    backface-visibility: visible !important;
    -webkit-animation-name: flip_InX;
    animation-name: flip_InX;
  }
</style>

<?php if ($categories) { ?>
  <nav id="menu" >
    <div class="container">
    <div class="navbar-header"  ><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav megamenu">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <?php if ($category['name']=='Lamps') { ?>
        <li class="with-sub-menu hover " >
          <p class="close-menu"></p>
          <a href="<?php echo $category['href']; ?>" class="clearfix">
            <strong><?php echo $category['name']; ?></strong>
            <span class="label"></span>
            <b class="caret"></b>
          </a>
          <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
          <div class="sub-menu animated flip_InX" style="width: 550%; display: none;">
            <div class="content" >
              <div class="row">
                <div class="col-sm-12">
                  <div class="row">
                    <?php foreach ($children as $child) { ?>
                    <div class="col-md-3 img img1">
                      <a href="<?php echo $child['href']; ?>"><img src="<?php echo $child['image']; ?>" alt="banner1"></a>
                    </div>
                    <?php } ?>
                  </div>
                </div>
              </div>

              <div class="row">
                <?php foreach ($children as $child) { ?>
                <div class="col-md-3">
                  <a href="<?php echo $child['href']; ?>" class="title-submenu"><?php echo $child['name']; ?></a>
                </div>
                <?php } ?>

              </div>
            </div>
          </div>
          <?php } ?>
        </li>
        <?php } else { ?>
        <script language="javascript" type="text/javascript">
            $(document).ready(function() {
              $(".categorymenu").click(function(){
              window.location.href=$(this).attr("href");
              });
            });
        </script>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle categorymenu" data-toggle="dropdown"><?php echo $category['name']; ?><b class="caret"></b></a>
          <div class="dropdown-menu animated flip_InX">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } ?>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
    </div>
  </nav>
<?php } ?>


