<%@include file="header.jsp" %>



<!--                 productlist -->


<div ng-app="app" ng-controller="myController">


<div class="container">
	<h6 class="dress"><a href="/livingCraft/">Home</a> <i> </i> Antiques &amp; craft </h6>
</div>
<div class="back">
	<h2>PRODUCTS</h2>
</div>
		<div class="product">
			<div class="container">
				<div class="col-md-3 product-price">
					  <div class="price-grid">
					    <div class="of-left">
						<h3 class="cate cate-on">PRICE</h3>
					</div>
	  <ul class="dropdown-menu1">
            <li><a href="#">
                <p>
                      <label for="amount" class="amount">Range:</label>
                     <input type="text" id="amount" style="border: 0; color: #ff5d56; font-weight: bold;" />
                         
						  </p>
                
                   <div id="slider-range"></div>
                </a></li>
				
          </ul>
		  <a  class="go" href="single.html">GO</a>
		  	<div class="clearfix"> </div>
<!---->
 <script type="text/javascript" src="js/jquery-ui.min.js"></script>

      <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">

<script type='text/javascript'>//<![CDATA[ 
$(window).load(function(){
 $( "#slider-range" ).slider({
            range: true,
            min: 0,
            max: 500,
            values: [ 100, 400 ],
            slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
            }
 });
$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

});//]]>  

</script>


<!---->
		</div>
				<div class=" rsidebar span_1_of_left">
					<div class="of-left">
						<h3 class="cate">CATEGORIES</h3>
					</div>
		 <ul class="menu">
		 <c:forEach items="${categoryList2}" var="category2">
								<ul>
								<li><a href="#">${category2.categoryName}</a></li>
					<c:forEach items="${category.subCategory}" var="subCategoryList">
					</c:forEach></ul></c:forEach>

	</ul>
					</div>
				<!--initiate accordion-->
		<script type="text/javascript">
			$(function() {
			    var menu_ul = $('.menu > li > ul'),
			           menu_a  = $('.menu > li > a');
			    menu_ul.hide();
			    menu_a.click(function(e) {
			        e.preventDefault();
			        if(!$(this).hasClass('active')) {
			            menu_a.removeClass('active');
			            menu_ul.filter(':visible').slideUp('normal');
			            $(this).addClass('active').next().stop(true,true).slideDown('normal');
			        } else {
			            $(this).removeClass('active');
			            $(this).next().stop(true,true).slideUp('normal');
			        }
			    });
			
			});
		</script>
<!---->


<div class=" per1">
				<a href="single.html" >
				<div class="six1">
					<h4>DISCOUNT</h4>
					<p>Up to</p>
					<span>60%</span>
				</div></a>
			</div>
				</div>
				
		
			<!---->
			
				<!---->
				<div class="col-md-9 product-price1">
					<div class="mens-toolbar">
						<p class="showing">Showing results</p>
	                 <div class="sort">
			            <select>
			                  <option value=""> Sorting By Rate</option>
			                    <option value="">Sorting By Color </option>
			                    <option value="">Sorting By Price </option>
			            </select>
			          
	    		     </div>
    	      
                	<div class="clearfix"></div>		
		        </div>

	   		     	
	   		<div class="col-md-4 chain-grid simpleCart_shelfItem" ng-repeat="p in jsonData">
					<div class="grid-span-1">
	   		     		<a href="viewproduct--{{p.productId}}"><img class="img-responsive " src="resources/images/{{p.productId}}-0.jpg" alt=" ">
						<div class="link">
	   		     			<ul >
										<li><i> </i></li>
										<li><i class="white1"> </i></li>
										
							</ul>
	   		     		</div></a>
	   		     		</div>
	   		     		<div class="grid-chain-bottom ">
	   		     			<h6><a href="single.html">{{p.productName}}</a></h6>
	   		     			<div class="star-price">
	   		     				
									<div class="price-at-bottom ">
										<span class="item_price">$ {{p.productPrice}}</span>
									</div>
	   		     				<div class="clearfix"> </div>
							</div>
							<div class="cart-add">
								<a class="add1 item_add" href="addtocart-{{p.productId}}?userId=1">ADD TO CART <i> </i></a>
								<a class="add2" href="wishlist-{{jsonData.productId}}?userId=1"><i> </i></a>
								<div class="clearfix"> </div>
							</div>
	   		     		</div>
	   		     	</div>
	   		     	
	   		     	
	   		     	
	   		     	
	   		     	
	   		     	<div class="clearfix"> </div>
		        	</div>
		        </div>
		        <ul class="start">
					<li><a href="#"><i> </i></a></li>
					<li><span>1</span></li>
					<li class="arrow"><a href="#">2</a></li>
					<li class="arrow"><a href="#">3</a></li>
					
					
					<li><a href="#"><i class="next"> </i></a></li>
				</ul>
				<div class="clearfix"> </div>
				</div>
				
			<div class="clearfix"> </div>
			
				<div class="shipping">
					<div class="col-md-3 col-md1">
						<div class=" phone">
						
							<div class="num">
								<span>8(802)234-5678</span>
								<p>Monday - Saturday: 8am - 5pm PST</p>
							</div>
							<i class="phone-in"> </i>
							<div class="clearfix"> </div>
						</div>
					
					</div>
					<div class="col-md-5 col-md2">
						<div class=" phone1">
					
							<i class="phone-in1"> </i>
							<div class="num1">
								<span>Free Shipping</span>
								<p>on all orders over $99</p>
							</div>
							<a class="learn-in" href="displayproducts">Learn More</a>
							<div class="clearfix"> </div>
						</div>
			
					</div>
					<div class="col-md-4 col-md3">
						<div class=" phone2">
					
							
							<div class="num2">
								<span>Crazy Sale!</span>
								<p>on selected items</p>
							</div>
							<a class="learn-in1" href="displayproducts">Learn More</a>
							<div class="clearfix"> </div>
						</div>
			</div>
			<div class="clearfix"> </div>
			</div>
					
				</div>
				
			<!---->
		
		
	
		
		
				        	<div class="top-product">
	<script type="text/javascript">
    var app=angular.module('app',[]);
    app.controller("myController",function($scope){
    	$scope.jsonData=${productList};
    });
    
    
    </script></div>		


	




<%@include file="footer.jsp" %>
