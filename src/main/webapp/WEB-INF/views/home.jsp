<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>homepage</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/snap.svg/0.3.0/snap.svg-min.js"></script>

<style>
*, *:before, *:after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}
a {color:#F7F7F7; /*new colour*/
	background: #19899D  ;
	}
a span {color:#aaaaaa; /*originalcolour*/}


html, body {
  font-size: 82.5%;
  height: 100%;
  overflow: hidden;
}

.instant {
  -webkit-transition: 0 0 !important;
          transition: 0 0 !important;
}

.scene {
  position: relative;
  height: 100%;
  background: #fff;
  -webkit-transition: -webkit-transform 0.5s;
          transition: transform 0.5s;
  will-change: transform;
}
.scene.menu-visible .menu__btn {
  background: #000;
  color: #000;
}
.scene.menu-visible .menu__btn:after {
  -webkit-transform: scale(1.5) !important;
      -ms-transform: scale(1.5) !important;
          transform: scale(1.5) !important;
}
.scene.menu-visible .menu__heading {
  opacity: 1;
  -webkit-transition: opacity 0.5s 1.7s;
          transition: opacity 0.5s 1.7s;
}

.content {
  position: relative;
  height: 100%;
  -webkit-transition: -webkit-transform 0.6s, opacity 0.4s 0.1s;
          transition: transform 0.6s, opacity 0.4s 0.1s;
  will-change: transform, opacity;
}
.content.inactive {
  opacity: 0;
  -webkit-transform: scale(0.9);
      -ms-transform: scale(0.9);
          transform: scale(0.9);
}

.back,
.front {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  -webkit-transition: -webkit-transform 0.5s 0.5s;
          transition: transform 0.5s 0.5s;
  will-change: transform;
}
.back__bg,
.front__bg {
  position: absolute;
  left: 0;
  width: 100%;
  height: 100%;
  background-size: cover;
  -webkit-transition: -webkit-transform 0.5s;
          transition: transform 0.5s;
  will-change: transform;
}
.back__bg-1,
.front__bg-1 {
  background-image: url(https://securionpay.com/wp-content/uploads/2016/03/5-turning-points-in-the-history-of-e-payments.svg);
}
.back__bg-2,
.front__bg-2 {
  background-image: url(https://securionpay.com/wp-content/uploads/2016/03/How-to-define-e-payments.svg);
}
.back__bg-3,
.front__bg-3 {
  background-image: url(https://securionpay.com/wp-content/uploads/2016/09/Everything-You-Have-to-Know-About-Payment-Security.svg);
}
.back__bg-4,
.front__bg-4 {
  background-image: url(http://u207420721.hostingerapp.com/wp-content/uploads/2019/01/Things-that-prove-your-payment-processing-is-secure.png);
}

.back__bg.hidden {
  display: none;
}
.back__bg:after {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.5);
}
.back__bg-1 {
  top: 0%;
}
.back__bg-2 {
  top: 100%;
}
.back__bg-3 {
  top: 200%;
}
.back__bg-4 {
  top: 300%;
}

.front__bg {
  -webkit-transform: scale(0.8);
      -ms-transform: scale(0.8);
          transform: scale(0.8);
}
.front__bg.active {
  -webkit-transform: scale(1);
      -ms-transform: scale(1);
          transform: scale(1);
}
.front__bg:after {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.25);
}
.front__bg-0 {
  top: 100%;
}
.front__bg-1 {
  top: 0%;
}
.front__bg-2 {
  top: -100%;
}
.front__bg-3 {
  top: -200%;
}
.front__bg-4 {
  top: -300%;
}

.nav {
  position: absolute;
  left: 0;
  bottom: 70%;
  width: 100%;
  text-align: center;
}
.nav__el {
  display: inline-block;
  position: relative;
  font-size: 2.5rem;
  height: 3.5rem;
  text-transform: uppercase;
  color: rgba(255, 255, 255, 0.5);
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
  margin: 1rem 2rem;
  padding-left: 1.5rem;
  cursor: pointer;
  overflow: hidden;
}
.nav__el-clone {
  position: absolute;
  top: 0;
  left: 0;
  overflow: hidden;
  -webkit-transition: -webkit-transform 0.5s;
          transition: transform 0.5s;
  will-change: transform;
  -webkit-transform: translateX(-100%);
      -ms-transform: translateX(-100%);
          transform: translateX(-100%);
}
.nav__el-clone > div {
  margin: 0;
  color: #fff;
  -webkit-transition: -webkit-transform 0.5s;
          transition: transform 0.5s;
  will-change: transform;
  -webkit-transform: translateX(100%);
      -ms-transform: translateX(100%);
          transform: translateX(100%);
}
.nav__el.active:after {
  -webkit-transform: scale(1);
      -ms-transform: scale(1);
          transform: scale(1);
}
.nav__el.active .nav__el-clone {
  -webkit-transform: scale(1);
      -ms-transform: scale(1);
          transform: scale(1);
  -webkit-transition: -webkit-transform 6s 2s;
          transition: transform 6s 2s;
}
.nav__el.active .nav__el-clone .nav__el {
  -webkit-transform: scale(1);
      -ms-transform: scale(1);
          transform: scale(1);
  -webkit-transition: -webkit-transform 6s 2s;
          transition: transform 6s 2s;
}
.nav__el:before {
  position: absolute;
  top: 50%;
  margin-top: -1rem;
  left: -0.3rem;
  font-size: 1.5rem;
  -webkit-transform: rotate(-90deg);
      -ms-transform: rotate(-90deg);
          transform: rotate(-90deg);
}
.nav__el:after {
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
  height: 1px;
  background: #fff;
  -webkit-transition: -webkit-transform 1.5s;
          transition: transform 1.5s;
  -webkit-transform: scale(0);
      -ms-transform: scale(0);
          transform: scale(0);
}
.nav__el-1:before {
 
}
.nav__el-2:before {
  
}
.nav__el-3:before {
 
}
.nav__el-4:before {
  content: "04";
}

.menu__btn {
  z-index: 5;
  position: absolute;
  top: 5%;
  right: 5%;
  width: 5.2rem;
  height: 5.2rem;
  border: 2px solid;
  color: #fff;
  overflow: hidden;
  cursor: pointer;
  -webkit-transition: background-color 0.5s;
          transition: background-color 0.5s;
}
.menu__btn:hover:after {
  -webkit-transform: scale(1);
      -ms-transform: scale(1);
          transform: scale(1);
}
.menu__btn:hover .menu__btn-line:nth-child(1) {
  -webkit-animation: animateMenuBtn 0.7s 0s;
          animation: animateMenuBtn 0.7s 0s;
}
.menu__btn:hover .menu__btn-line:nth-child(2) {
  -webkit-animation: animateMenuBtn 0.7s 0.2s;
          animation: animateMenuBtn 0.7s 0.2s;
}
.menu__btn:hover .menu__btn-line:nth-child(3) {
  -webkit-animation: animateMenuBtn 0.7s 0.4s;
          animation: animateMenuBtn 0.7s 0.4s;
}
.menu__btn:after {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border: 0.5rem solid #fff;
  -webkit-transition: -webkit-transform 0.6s;
          transition: transform 0.6s;
  will-change: transform;
  -webkit-transform: scale(1.5);
      -ms-transform: scale(1.5);
          transform: scale(1.5);
}
.menu__btn-inner {
  position: absolute;
  top: 1.6rem;
  left: 1.2rem;
  width: 2.4rem;
  height: 1.6rem;
  overflow: hidden;
}
.menu__btn-line {
  position: absolute;
  left: 0;
  width: 100%;
  height: 2px;
  background: #fff;
}
.menu__btn-line:nth-child(1) {
  top: 0;
}
.menu__btn-line:nth-child(2) {
  top: 0.7rem;
}
.menu__btn-line:nth-child(3) {
  top: 1.4rem;
}
.menu__block {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  display: none;
  text-align: center;
}
.menu__block.visible {
  display: block;
}
.menu__block-bg {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-size: cover;
  background-image: url(http://i.imgur.com/3pu2X8D.jpg);
}
.menu__block-svg {
  overflow: visible;
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}
.menu__block-svgPath {
  fill: #fff;
}
.menu__heading {
  position: absolute;
  max-width: 60rem;
  top: 50%;
  left: 50%;
  -webkit-transform: translateX(-50%) translateY(-50%);
      -ms-transform: translateX(-50%) translateY(-50%);
          transform: translateX(-50%) translateY(-50%);
  font-size: 4rem;
  color: #000;
  text-transform: uppercase;
  opacity: 0;
  -webkit-transition: opacity 0.3s;
          transition: opacity 0.3s;
  text-align: center;
}

@-webkit-keyframes animateMenuBtn {
  49.9% {
    -webkit-transform: translateX(100%);
            transform: translateX(100%);
  }
  50% {
    -webkit-transform: translateX(-100%);
            transform: translateX(-100%);
  }
  100% {
    -webkit-transform: translateX(0);
            transform: translateX(0);
  }
}

@keyframes animateMenuBtn {
  49.9% {
    -webkit-transform: translateX(100%);
            transform: translateX(100%);
  }
  50% {
    -webkit-transform: translateX(-100%);
            transform: translateX(-100%);
  }
  100% {
    -webkit-transform: translateX(0);
            transform: translateX(0);
  }
}

</style>
</head>
<body>

<c:set value="${pageContext.request.queryString}" var="alert"></c:set>

<c:if test="${alert == 'success'}">
	<script type="text/javascript">
	alert("Registration Successfull");
	</script>
</c:if>



<script>
$(document).ready(function() {
	  
	  var $scene = $(".scene"),
	      $content = $(".content"),
	      $back = $(".back"),
	      $backBgs = $(".back__bg"),
	      $front = $(".front"),
	      $frontBgs = $(".front__bg"),
	      $menuBlock = $(".menu__block"),
	      $svgPath = $(".menu__block-svgPath"),
	      animating = false,
	      menuActive = false,
	      menuAnimTime = 600,
	      blockAnimTime = 1500,
	      $sliderCont = $(".menu-slider__content"),
	      curSlide = 1,
	      sliderXDiff = 0,
	      curPage = 1,
	      nextPage = 0,
	      numOfPages = $(".front__bg").length,
	      scaleTime = 500,
	      transTime = 500,
	      totalTime = scaleTime + transTime,
	      changeTimeout,
	      timeoutTime = 8000,
	      winW = $(window).width(),
	      winH = $(window).height();
	  
	  // init nav element timeout animation
	  $(".nav__el-1").addClass("active");
	  
	  //default debounce function from David Walsh blog
	  function debounce(func, wait, immediate) {
	    var timeout;
	    return function() {
	      var context = this, args = arguments;
	      var later = function() {
	        timeout = null;
	        if (!immediate) func.apply(context, args);
	      };
	      var callNow = immediate && !timeout;
	      clearTimeout(timeout);
	      timeout = setTimeout(later, wait);
	      if (callNow) func.apply(context, args);
	    };
	  };
	  
	  function changePages() {
	    $(".back__bg, .front__bg, .nav__el").removeClass("active");
	    $(".nav__el-"+curPage).addClass("active");
	    $back.css("transform", "translate3d(0,"+(curPage-1)*-100+"%,0)");
	    $front.css("transform", "translate3d(0,"+(curPage-1)*100+"%,0)");
	    createTimeout();

	    setTimeout(function() {
	      $(".back__bg-"+curPage+", .front__bg-"+curPage).addClass("active");
	    }, totalTime);
	  };
	  
	  $(document).on("click", ".nav__el:not(.active)", function() {
	    curPage = $(this).attr("data-page");
	    changePages();
	  });
	  
	  // ugly hack for animation reset when you coming back from menu section
	  function resetTimeoutAnimation() {
	    var $activeNavEl = $(".nav__el.active"),
	        $activeParts = $activeNavEl.find(".nav__el-clone, .nav__el")
	    $activeParts.addClass("instant");
	    $activeNavEl.removeClass("active");
	    $activeParts.css("top");
	    $activeParts.removeClass("instant");
	    $activeParts.css("top");
	    $activeNavEl.addClass("active");
	  }
	  
	  /* creates timeOut for change of slides.
	  Call's itself from inside of changePages() function
	  */
	  function createTimeout() {
	    window.clearTimeout(changeTimeout);
	    resetTimeoutAnimation();
	    changeTimeout = setTimeout(function() {
	      if (curPage >= numOfPages) {
	        curPage = 1;
	      } else {
	        curPage++;
	      }
	      changePages();
	    }, timeoutTime);
	  };
	  
	  createTimeout();
	  
	  /* creates path D attribute strings for animation
	  initial d = fullScreen
	  mid d = Q curves with 5% padding
	  final d = centered 90% width/height block
	  */
	  function createD(type) {
	    var types = {"init": ["M0,0",
	                          "Q"+winW/2+",0",
	                          winW+",0",
	                          "Q"+winW+","+winH/2,
	                          winW+","+winH,
	                          "Q"+winW/2+","+winH,
	                          "0,"+winH,
	                          "Q0,"+winH/2,
	                          "0,0"],
	                 "mid": ["M0,0",
	                         "Q"+winW/2+","+winH*0.05,
	                         winW+",0",
	                         "Q"+winW*0.95+","+winH/2,
	                         winW+","+winH,
	                         "Q"+winW/2+","+winH*0.95,
	                         "0,"+winH,
	                         "Q"+winW*0.05+","+winH/2,
	                         "0,0"],
	                 "final": ["M"+winW*0.05+","+winH*0.05,
	                           "Q"+winW/2+","+winH*0.05,
	                           winW*0.95+","+winH*0.05,
	                           "Q"+winW*0.95+","+winH/2,
	                           winW*0.95+","+winH*0.95,
	                           "Q"+winW/2+","+winH*0.95,
	                           winW*0.05+","+winH*0.95,
	                           "Q"+winW*0.05+","+winH/2,
	                           winW*0.05+","+winH*0.05]};
	    return types[type].join(" ");
	  }
	  
	  // animates path d with SnapSVG
	  function animateBlock(reverse) {
	    winW = $(window).width();
	    winH = $(window).height();
	    var initD = createD("init"),
	        midD = createD("mid"),
	        finalD = createD("final");
	    
	    if (!reverse) {
	      $svgPath.attr("d", initD);
	      Snap($svgPath[0]).animate({"path": midD}, blockAnimTime/2, mina.elastic, function() {
	        Snap($svgPath[0]).animate({"path": finalD}, blockAnimTime/2, mina.elastic);
	      });
	    } else {
	      Snap($svgPath[0]).animate({"path": midD}, blockAnimTime/2, mina.elastic, function() {
	        Snap($svgPath[0]).animate({"path": initD}, blockAnimTime/2, mina.elastic);
	      });
	    }
	    
	  };
	  
	  // resizes opened menu path d block, because i can't change viewBox with js
	  var resizeSvg = debounce(function() {
	    winW = $(window).width();
	    winH = $(window).height();
	    $svgPath.attr("d", createD("final"));
	  }, 50);
	  
	  // default madness
	  $(document).on("click", ".menu__btn", function() {
	    if (animating) return;
	    animating = true;
	    setTimeout(function() {
	      animating = false;
	    }, blockAnimTime + menuAnimTime);
	    
	    if (!menuActive) {
	      menuActive = true;
	      window.clearTimeout(changeTimeout);
	      $content.addClass("inactive");
	      $scene.addClass("menu-visible");
	      $(".back__bg:not(.active)").addClass("hidden");
	      $(window).on("resize", resizeSvg);
	      setTimeout(function() {
	        $menuBlock.addClass("visible");
	        animateBlock();
	      }, menuAnimTime);
	    } else {
	      menuActive = false;
	      animateBlock(true);
	      setTimeout(function() {
	        $menuBlock.removeClass("visible");
	        createTimeout();
	        $(".back__bg").removeClass("hidden");
	        $content.removeClass("inactive");
	        $scene.removeClass("menu-visible");
	      }, blockAnimTime);
	      $(window).off("resize");
	    }
	  });
	  
	});
</script>




<div class="scene">
  <div class="content">
    <div class="back">
      <div class="back__bg back__bg-1 active"></div>
      <div class="back__bg back__bg-2"></div>
      <div class="back__bg back__bg-3"></div>
      <div class="back__bg back__bg-4"></div>
    </div>
    <div class="front">
      <div class="front__bg front__bg-1 active"></div>
      <div class="front__bg front__bg-2"></div>
      <div class="front__bg front__bg-3"></div>
      <div class="front__bg front__bg-4"></div>
    </div>
    
    <div data-page="1" class="nav__el nav__el-1">
    <p>Bill Payment System</p>
       
        <div class="nav__el-clone">
          <div class="nav__el nav__el-1">Bill Payment System</div>
        </div>
      </div>
    <h1></h1>
    <div class="nav">

      <div data-page="2" class="nav__el nav__el-2">
        <a href="/BillingSystem/bill/billList"><p>Pay Your Bills</p></a>
        <div class="nav__el-clone">
          <div class="nav__el nav__el-2">Pay Your Bills</div>
        </div>
      </div>
      <div data-page="3" class="nav__el nav__el-3">
        <a  href="/BillingSystem/admin"><p>Go as Admin</p></a>
        <div class="nav__el-clone">
          <div class="nav__el nav__el-3">Go as Admin</div>
        </div>
      </div>
      
    </div>
  </div>
  <div class="menu">
    <div class="menu__btn">
      <div class="menu__btn-inner">
        <span class="menu__btn-line"></span>
        <span class="menu__btn-line"></span>
        <span class="menu__btn-line"></span>
      </div>
    </div>
    <div class="menu__block">
      <div class="menu__block-bg"></div>
      <svg class="menu__block-svg">
        <path class="menu__block-svgPath" />
      </svg>
    </div>
    <a href="/BillingSystem/contactUs"><h1 class="menu__heading">Contact Us</h1></a>
    
  </div>
</div>
</body>
</html>