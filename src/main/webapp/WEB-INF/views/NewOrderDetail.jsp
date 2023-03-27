<%@page import="com.grownited.bean.OrderBean"%>
<%@page import="com.grownited.bean.ProductBean"%>
<%@page import="com.grownited.bean.StatusBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New OrderDetail</title>
<jsp:include page="AllCss.jsp"></jsp:include>

</head>

<body>
<jsp:include page="HomeSideBar.jsp"></jsp:include>
 

    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->


        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

          <nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme" id="layout-navbar">
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
              <!-- Search -->
              <div class="navbar-nav align-items-center">
                <div class="nav-item d-flex align-items-center">
                  <i class="bx bx-search fs-4 lh-0"></i>
                  <input type="text" class="form-control border-0 shadow-none" placeholder="Search..." aria-label="Search...">
                </div>
              </div>
              <!-- /Search -->

              <ul class="navbar-nav flex-row align-items-center ms-auto">
                <!-- Place this tag where you want the button to render. -->
                <li class="nav-item lh-1 me-3">
                  <span></span>
                </li>

                <!-- User -->
                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                  <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <div class="avatar avatar-online">
                      <img src="../assets/img/avatars/1.png" alt="" class="w-px-40 h-auto rounded-circle">
                    </div>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                      <a class="dropdown-item" href="#">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar avatar-online">
                              <img src="../assets/img/avatars/1.png" alt="" class="w-px-40 h-auto rounded-circle">
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <span class="fw-semibold d-block">Jorn Dui</span>
                            <small class="text-muted">Admin</small>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <i class="bx bx-user me-2"></i>
                        <span class="align-middle">My Profile</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <i class="bx bx-cog me-2"></i>
                        <span class="align-middle">Settings</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <span class="d-flex align-items-center align-middle">
                          <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
                          <span class="flex-grow-1 align-middle">Billing</span>
                          <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="auth-login-basic.html">
                        <i class="bx bx-power-off me-2"></i>
                        <span class="align-middle">Log Out</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!--/ User -->
              </ul>
            </div>
          </nav>

          <!-- / Navbar -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->
          
            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"> </span>Cart</h4>

              <div class="row">
                <div class="col-md-9">
                  <div class="card mb-6">
                  
                    <h5 class="card-header">Add New Cart</h5>
                  <form action="savecart" method="post">
                    <div class="card-body">
                             
                      
                      <div class="mb-3">
                      
                      
    				<form action="saveorderdetail" method="post">
		<%
		List<OrderBean> listOrders = (List<OrderBean>) request.getAttribute("listOrders");
	%>
						<br><BR>
						Order <select name="orderId"  class="form-select">
					<%for(OrderBean ob:listOrders){ %>
				<option value="<%=ob.getOrderId()%>"><%=ob.getTotaleAmount() %></option>
					<%
					}
					%>
					
					</select>
					<%
				List<ProductBean> listProducts =(List<ProductBean>)request.getAttribute("listProducts");
 				%>
		
		<br><BR>
		 Product <select name="productId" class="form-select">

			<%
				for (ProductBean pb : listProducts) {
			%>
			<option value="<%=pb.getproductId()%>">
			<%=pb.getproductName()%></option>
			<%
				}
			%>
		</select>
				<% List<StatusBean> list =(List<StatusBean>)request.getAttribute("list");%>

		<br><br>
		Status <select name="statusId" class="form-select">
		
		  <% for(StatusBean sb:list){%>
		<option value="<%=sb.getStatusId() %>"><%=sb.getStatus() %></option>
		
		<%} %>
		
		
		</select>	
					</label>
                     <div>
                
                     
                <label for="defaultFormControlInput" class="form-label"> Quantity</label>
               <input type="text" name="quantity" class="form-control" id="defaultFormControlInput" placeholder="quantity" aria-describedby="defaultFormControlHelp">
                
                <label for="defaultFormControlInput" class="form-label"> Price</label>
               <input type="text" name="price" class="form-control" id="defaultFormControlInput" placeholder="price" aria-describedby="defaultFormControlHelp">
                
                </div>  
				
				</div>
                      <br><br>
                      <button class="btn btn-primary d-grid w-100" type="submit" value="add order detail">Save</button>
             			 <br><br>
             			<a href="listorderdetail">List Order Detail</a>
             			</div>
                    </div>
                    </form>  
                  </div>
                
                </div>
                
                <!-- Form controls -->
                

                <!-- Input Sizing -->
                 </div>
            </div>
            </div>
            <!-- / Content -->

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                  ©
                  <script>
                    document.getFullYear());
                  </script>2023
                  
                  
                </div>
                <div>
                  <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                  <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                  <a href="https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/" target="_blank" class="footer-link me-4">Documentation</a>

                  <a href="https://github.com/themeselection/sneat-html-admin-template-free/issues" target="_blank" class="footer-link me-4">Support</a>
                </div>
              </div>
            </footer>
            <!-- / Footer -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->

    <div class="buy-now">
      <a href="https://themeselection.com/products/sneat-bootstrap-html-admin-template/" target="_blank" class="btn btn-danger btn-buy-now">Upgrade to Pro</a>
    </div>

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../assets/vendor/libs/popper/popper.js"></script>
    <script src="../assets/vendor/js/bootstrap.js"></script>
    <script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="../assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="../assets/js/main.js"></script>

    <!-- Page JS -->

    <script src="../assets/js/form-basic-inputs.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async="" defer="" src="https://buttons.github.io/buttons.js"></script>
  
<!-- 
	<form action="saveorderdetail" method="post">

	

		
		<br><BR>
		 Order <select name="orderId">

			
		</select><br><br>
		
	

		
		<br><BR>
		 Product <select name="productId">

		</select><br><br>
		

		<br><br>
		Status <select name="statusId">
		
		  
		
		</select>
		<br><br>
		
		Quantity : <input type="text" name="quantity"/><br><br>
		Price : <input type="text" name="price"/><br><br>
		
		<input type="submit" value="Add new orderdetail"/>
		
	
	<br>
	</form>
	<br>
	<a href="listorderdetail">List Order Detail</a>
	 -->
</body>
</html>