<%@page import="com.grownited.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
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
                            <span class="fw-semibold d-block">John Doe</span>
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
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Products/ </span>Product List</h4>

              <!-- Basic Bootstrap Table -->
              
              <!--/ Basic Bootstrap Table -->

              <hr class="my-5">

              <!-- Bootstrap Dark Table -->
              
              <!--/ Bootstrap Dark Table -->
<%
	List<ProductBean> listProducts =(List<ProductBean>)request.getAttribute("listProducts");
 %>

              <!-- Bootstrap Table with Header - Dark -->
              <div class="card">
                <h5 class="card-header">Product List
                <i class="bx bx-plus-circle"></i></h5>
                <div class="table-responsive text-nowrap">
                  <table class="table">
                    <thead class="table-dark">
                      <tr>
                       <th>ProductId</th>
						<th>ProductName</th>
						<th>Description</th>
						<th>Quantity</th>
						<th>Price</th>
						<th>TopSelling</th>
						<th>MostValueInd</th>
						<th>BrandName</th>
						<th>CategoryId</th>
						<th>subCategoryId</th>
						<th>Deleted?</th>
						<th>Action</th>
                      </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                   <%for(ProductBean pb:listProducts){ %>
					<tr>
					<td><%=pb.getproductId() %></td>
					<td><%=pb.getproductName() %></td>
					<td><%=pb.getdescription() %></td>
					<td><%=pb.getquantity() %></td>
					<td><%=pb.getprice() %></td>
					<td><%=pb.getTopSelling() %></td>
					<td><%=pb.getMostValueInd() %></td>
					<td><%=pb.getbrandName() %></td>
					<td><%=pb.getCategoryId() %></td>
					<td><%=pb.getSubCategoryId() %></td>
					<td><%=pb.getDeleted() %></td>
					<td><a href="deleteproduct/<%=pb.getproductId()%>">Delete</a>
							<a href="viewproduct/<%=pb.getproductId() %>">View</a>
						
						</td>
					
					</tr>
                    
						
						<%} %>
	
                      
                      
              
                    </tbody>
                  </table>
                </div>
              </div>
              <!--/ Bootstrap Table with Header Dark -->

              

              <!-- Bootstrap Table with Header - Light -->
              
              

              

              <!-- Bootstrap Table with Header - Footer -->
              
              

              

              <!-- Bootstrap Table with Caption -->
              
              <!-- Bootstrap Table with Caption -->

              

              
              
              

              

              <!-- Bordered Table -->
              
              

              

              
              
              

              

              
              
              

              

              

              
              

              

              

              
              

              

              
              
              
              

              

              
              
              
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
<!-- 
<h3>List Products</h3>
 
 
<table border="1">
	<tr>
		<th>ProductId</th>
		<th>ProductName</th>
		<th>Description</th>
		<th>Quantity</th>
		<th>Price</th>
		<th>TopSelling</th>
		<th>MostValueInd</th>
		<th>BrandName</th>
		<th>Deleted?</th>
		
	</tr>



	
</table>

<br>
 -->
</body>
</html>