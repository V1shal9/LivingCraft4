<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Living Craft</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/style.css">
  <link href="resources/templates/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
  <link href="resources/templates/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--   <script src="resources/templates/js/jquery.min.js"></script> -->
  <script src="resources/bootstrap/js/jquery.min.js"></script>
  <script type="text/javascript" href="resources/js/angular.min.js"></script>
  <script src="resources/bootstrap/js/bootstrap.min.js"></script>
  <script src="resources/js/angular.min.js"></script>
  <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Roboto+Slab:300,700,400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<!--//fonts-->
<!-- start menu -->
<link href="resources/templates/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="resources/templates/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!--//slider-script-->


<script src="resources/templates/js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
				
</script>	

<script src="resources/templates/js/simpleCart.min.js"> </script>


<link rel="stylesheet" href="resources/templates/css/etalage.css">
<script src="resources/templates/js/jquery.etalage.min.js"></script>
		<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>

<script src="resources/templates/js/main.js"></script> <!-- Resource jQuery -->
<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  	ga('create', 'UA-48014931-1', 'codyhouse.co');
  	ga('send', 'pageview');

  	jQuery(document).ready(function($){
  		$('.close-carbon-adv').on('click', function(){
  			$('#carbonads-container').hide();
  		});
  	});
</script>	
<script src="resources/templates/js/simpleCart.min.js"> </script>

<!--                autocomplete -->

  <script  src="resources/js/jquery-3.1.0.min.js"></script>
  <script  src="resources/js/jquery.autocomplete.min.js"></script>


 <script>
  $(document).ready(function() {

	$('#w-input-search').autocomplete({
		serviceUrl: '${pageContext.request.contextPath}/getTags',
		paramName: "productName",
		delimiter: ",",
	   transformResult: function(response) {

		return {
		  //must convert json to javascript object before process
		  suggestions: $.map($.parseJSON(response), function(item) {

		      return { value: item.productName, data: item.productId };
		   })

		 };

            }

	 });

  });
  </script>
   


</head>
<body>


<div class="header">
	<div class="header-top">
		<div class="container">
			<div class="header-top-in">
				
				<ul class="support">
					<li ><a href="mailto:info@livingcraft.com" ><i > </i>info@livingcraft.com</a></li>
					<li ><span ><i class="tele-in"> </i>0 462 261 61 61</span></li>	
					<security:authorize access="isAuthenticated()">
				welcome <security:authentication property="principal.Username" />
				</security:authorize>
				</ul>
				<ul class=" support-right">
				<c:if test="${empty pageContext.request.userPrincipal}">
					<li ><a href="login" ><i class="tele"> </i>Login</a></li>
					</c:if>
					<c:if test="${!empty pageContext.request.userPrincipal}">
					<li ><a href="/LivingCraft/logout" ><i class="tele"> </i>Log out</a></li>
					</c:if>
					<li ><a href="reg" ><i class="tele"> </i>Create an Account</a></li>			
				</ul>
				<div class="clearfix"> </div>
			</div>
			</div>
			<div class="header-bottom">
			<div class="container">			
				<div class="logo">
					<h1><a href="/LivingCraft/">LivingCraft</a></h1>		
				</div>
				<div class="top-nav">
				<!-- start header menu -->
				
		<ul class="megamenu skyblue">
			<li><a  href="/LivingCraft/">Home</a></li>
		<li class="active grid"><a  href="#">Pages</a>
		
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>Categories</h4>
					<c:forEach items="${categoryList2}" var="category2">
								<ul>
								<li><a href="#">${category2.categoryName}</a></li>
					<c:forEach items="${category.subCategory}" var="subCategoryList">
							
									<li><a href="#">${subCategoryList.subCategoryName}</a></li>
									</c:forEach>
								</ul>	
								</c:forEach>
							</div>							
						</div>
<!-- 						<div class="col1"> -->
<!-- 							<div class="h_nav"> -->
<!-- 								<h4>SubCategory</h4> -->
<!-- 								<ul> -->
								
								
<!-- 									<li><a href="product.html">craft</a></li> -->
<!-- 									<li><a href="product.html">antiques</a></li> -->
<!-- 									<li><a href="product.html"></a></li> -->
<!-- 									<li><a href="product.html">accessories</a></li> -->
<!-- 									<li><a href="product.html"></a></li> -->
<!-- 									<li><a href="product.html"></a></li> -->
<!-- 								</ul>	 -->
<!-- 							</div>							 -->
<!-- 						</div> -->
<!-- 		( to add video)				<div class="col1 col5"> -->
<!-- 							<iframe src="https://player.vimeo.com/video/10777111?color=ffffff&title=0&byline=0&portrait=0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>  -->
<!-- 						</div> -->
						
					</div>
					
    				</div>
				</li>	
<!-- 		<li ><a  href="404.html">Blog</a></li>		 -->
		
				
				<li><a  href="displayproducts">Products</a></li>

    
    
				<li><a  href="contact.html">Contact</a>
					
				</li>
		 </ul> 
		 <!---->
		 <div class="search-in" >
			<div class="search" >
						<form action="getTags">
							<input type="text" id="w-input-search"   style="color:white;">
							<input type="submit" value="SEARCH">
						</form>
							<div class="close-in"><img src="resources/templates/images/close.png" alt="" /></div>
					</div>
						<div class="right"><button> </button></div>
				</div>
						<script type="text/javascript">
							$('.search').hide();
							$('button').click(function (){
							$('.search').show();
							$('.text').focus();
							}
							);
							$('.close-in').click(function(){
							$('.search').hide();
							});
						</script>

					<!---->
					<div class="cart box_1">
						<a href="checkout.html">
						<h3> <div class="total">
							<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
							<img src="resources/images/cart.png" alt=""/></h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty"></a></p>
						<div class="clearfix"> </div>
					</div>

<div class="clearfix"> </div>
					<!---->
				</div>
				
			</div>
			<div class="clearfix"> </div>
		</div>
		</div>