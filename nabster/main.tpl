<!DOCTYPE html>
<html>
   <head>
      {headers}
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <meta name="author" content="">
      <link rel="shortcut icon" href="{THEME}/images/favicon.ico">
      <link rel="apple-touch-icon" href="{THEME}/images/touch-icon-iphone.png">
      <link rel="apple-touch-icon" sizes="76x76" href="{THEME}/images/touch-icon-ipad.png">
      <link rel="apple-touch-icon" sizes="120x120" href="{THEME}/images/touch-icon-iphone-retina.png">
      <link rel="apple-touch-icon" sizes="152x152" href="{THEME}/images/touch-icon-ipad-retina.png">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">
      <link href="{THEME}/css/ssg.css" type="text/css" rel="stylesheet">
      <link href="{THEME}/css/bootstrap.css" type="text/css" rel="stylesheet">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.css">
      <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
      <!--<link href="{THEME}/css/engine.css" type="text/css" rel="stylesheet">
         <link href="{THEME}/css/styles.css" type="text/css" rel="stylesheet">-->
      <link rel="stylesheet" href="{THEME}/css/owl.carousel.css">
      <link rel="stylesheet" href="{THEME}/css/animate.css">
      <link rel="stylesheet" href="{THEME}/css/magnific-popup.css">
   </head>
   <script>
      $(document).ready(function(){
      	$('.owl-carousel').owlCarousel({
      	    loop:true,
      	    margin:30,
      			autoplay:3000,
      	    responsiveClass:true,
      			dots : false,
      		/*
      			navText : ['<i class="fa fa-angle-left" aria-hidden="true"></i>','<i class="fa fa-angle-right" aria-hidden="true"></i>'],
      			navContainer: '.main-content .custom-nav',*/
      
      	    responsive:{
      	        0:{
      	            items:1,
      	            nav:false
      	        },
      					360:{
      	            items:1,
      	            nav:false
      	        },
      	        600:{
      	            items:2,
      	            nav:false
      	        },
      	        1000:{
      	            items:3,
      	            nav:false,
      	            loop:false
      	        }
      	    }
      	})
      });
      
      $(document).ready(function() {
      	$submenu = $('.child-menu-ul');
      	$('.child-menu .toggle-right').on('click', function(e) {
      		e.preventDefault();
      		$this = $(this);
      		$parent = $this.parent().next();
      		// $parent.addClass('active');
      		$tar = $('.child-menu-ul');
      		if (!$parent.hasClass('active')) {
      			$tar.removeClass('active').slideUp('fast');
      			$parent.addClass('active').slideDown('fast');
      		} else {
      			$parent.removeClass('active').slideUp('fast');
      		}
      	});
      });
      $(window).scroll(function() {
          if($(this).scrollTop() > 26)
          {
              $('.navbar').removeClass('navbar-light');
              $('.navbar').addClass('navbar-dark bg-dark2 rounded-0');
          } else {
              $('.navbar').removeClass('navbar-dark bg-dark2 rounded-0');
              $('.navbar').addClass('navbar-light');
          }
      });
      $(function () {
        $('[data-toggle="tooltip"]').tooltip()
      })
      $(function () {
        $('[data-toggle="popover"]').popover()
      })
      $( document ).ready(function() {
        $( "#gcom" ).click(function() {
          $('.toast').toast('show');
        });
      });
   </script>
   <body>
      <div class="container tb">
         {include file="modules/menu.tpl"}
         <div class="wrap">
            <div class="row">
               <div class="col-md-9">
                  [aviable=main]
                  <div class="tab-content" id="pills-tabContent">
                     <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                     </div>
                     <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">...</div>
                     <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">...</div>
                  </div>
                  <div class="main-content">
                     <div class="owl-carousel owl-theme">
                        {custom categoryexclude="24" template="topthems" limit="12" order="date" sort="desc" cache="no"}
                     </div>
                     <div class="owl-theme ">
                        <div class="owl-controls">
                           <div class="custom-nav owl-nav"></div>
                        </div>
                     </div>
                  </div>
                 [/aviable]
                  {info}{content}
                </div>
               <div class="col-md-3">
                  {include file="modules/sidebar.tpl"}
               </div>
            </div>
         </div>
         <div class="footer">
            <div class="row f90">
               <span class="f90">
               © N-D-P.RU 2018-2019. все права защищены.
               </span>
            </div>
         </div>
      </div>
      {AJAX}
      <script src="{THEME}/js/owl.carousel.min.js"></script>
      <script src="{THEME}/js/lib.js"></script>
      <script type="text/javascript" src="{THEME}/js/scrollpup.min.js"></script>
      <script type="text/javascript">
         scrollpup({
           background: 'linear-gradient(to right, #ff416c, #ff4b2b)'
         })
      </script>
      <script src="{THEME}/js/jquery.magnific-popup.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/frappe-charts@1.1.0/dist/frappe-charts.min.iife.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
      <script type="text/javascript" src="{THEME}/js/bootstrap.js"></script>
      <script type="text/javascript" id="cookieinfo"
         src="//cookieinfoscript.com/js/cookieinfo.min.js"
         data-cookie="CookieInfoScript"
         data-text-align="left"
         data-message="Этот веб-сайт использует файлы cookie для повышения удобства работы с веб-сайтом. Переход по ссылке на наш веб-сайт или работа на веб-сайте подразумевают согласие со сбором данных посредством файлов cookie."
         data-linkmsg="Подробнее"
         data-moreinfo="https://www.n-d-p.ru/policy.html"
         data-close-text="Принять"></script>
   </body>
   [group=5]
   <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
         <div class="modal-content">
            <div class="modal-body p-0">
               {login}
            </div>
         </div>
      </div>
   </div>
   [/group]
</html>