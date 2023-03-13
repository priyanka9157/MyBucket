<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- <!DOCTYPE html>
<html>
<head>

</head>
<body>
 
 </body>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
</head>
<body>
<h2>Admin Dashboard</h2>
<a href="newcategory">Add New Category</a> <br>
<br>
<a href="listcategories">List Category</a> <br>
<br>
<a href="newsubcategory">Add New SubCategory</a><br>
<br>
<a href="listsubcategory">List Sub Category</a><br>
<br>
<a href="newproduct">Add New Product</a> <br>
<br>
<a href="newstatus"> Add Status</a><br><br> 
<a href="logout">Logout</a>
</body> </html>-->

<html lang="en" class="light-style layout-menu-fixed" dir="ltr" data-theme="theme-default" data-assets-path="../assets/" data-template="vertical-menu-template-free">
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
              <div class="row">
                
                <div class="col-lg-4 col-md-4 order-1">
                  <div class="row">
                    <div class="col-lg-6 col-md-12 col-6 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="card-title d-flex align-items-start justify-content-between">
                            <div class="avatar flex-shrink-0">
                              <img src="../assets/img/icons/unicons/chart-success.png" alt="chart success" class="rounded">
                            </div>
                            <div class="dropdown">
                              <button class="btn p-0" type="button" id="cardOpt3" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-dots-vertical-rounded"></i>
                              </button>
                              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt3">
                                <a class="dropdown-item" href="javascript:void(0);">View More</a>
                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                              </div>
                            </div>
                          </div>
                          <span class="fw-semibold d-block mb-1">Profit</span>
                          <h3 class="card-title mb-2">$12,628</h3>
                          <small class="text-success fw-semibold"><i class="bx bx-up-arrow-alt"></i> +72.80%</small>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-6 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="card-title d-flex align-items-start justify-content-between">
                            <div class="avatar flex-shrink-0">
                              <img src="../assets/img/icons/unicons/wallet-info.png" alt="Credit Card" class="rounded">
                            </div>
                            <div class="dropdown">
                              <button class="btn p-0" type="button" id="cardOpt6" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-dots-vertical-rounded"></i>
                              </button>
                              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt6">
                                <a class="dropdown-item" href="javascript:void(0);">View More</a>
                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                              </div>
                            </div>
                          </div>
                          <span>Sales</span>
                          <h3 class="card-title text-nowrap mb-1">$4,679</h3>
                          <small class="text-success fw-semibold"><i class="bx bx-up-arrow-alt"></i> +28.42%</small>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- Total Revenue -->
                <div class="col-12 col-lg-8 order-2 order-md-3 order-lg-2 mb-4">
                  <div class="card">
                    <div class="row row-bordered g-0">
                      <div class="col-md-8">
                        <h5 class="card-header m-0 me-2 pb-3">Total Revenue</h5>
                        <div id="totalRevenueChart" class="px-2" style="min-height: 315px;"><div id="apexchartsiajy0nj3i" class="apexcharts-canvas apexchartsiajy0nj3i apexcharts-theme-light" style="width: 515px; height: 300px;"><svg id="SvgjsSvg2439" width="515" height="300" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><foreignObject x="0" y="0" width="515" height="300"><div class="apexcharts-legend apexcharts-align-left apx-legend-position-top" xmlns="http://www.w3.org/1999/xhtml" style="right: 0px; position: absolute; left: 0px; top: 4px; max-height: 150px;"><div class="apexcharts-legend-series" rel="1" seriesname="2021" data:collapsed="false" style="margin: 2px 10px;"><span class="apexcharts-legend-marker" rel="1" data:collapsed="false" style="background: rgb(105, 108, 255) !important; color: rgb(105, 108, 255); height: 8px; width: 8px; left: -3px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="1" i="0" data:default-text="2021" data:collapsed="false" style="color: rgb(161, 172, 184); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">2021</span></div><div class="apexcharts-legend-series" rel="2" seriesname="2020" data:collapsed="false" style="margin: 2px 10px;"><span class="apexcharts-legend-marker" rel="2" data:collapsed="false" style="background: rgb(3, 195, 236) !important; color: rgb(3, 195, 236); height: 8px; width: 8px; left: -3px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="2" i="1" data:default-text="2020" data:collapsed="false" style="color: rgb(161, 172, 184); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">2020</span></div></div><style type="text/css">	
    	
      .apexcharts-legend {	
        display: flex;	
        overflow: auto;	
        padding: 0 10px;	
      }	
      .apexcharts-legend.apx-legend-position-bottom, .apexcharts-legend.apx-legend-position-top {	
        flex-wrap: wrap	
      }	
      .apexcharts-legend.apx-legend-position-right, .apexcharts-legend.apx-legend-position-left {	
        flex-direction: column;	
        bottom: 0;	
      }	
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-left, .apexcharts-legend.apx-legend-position-top.apexcharts-align-left, .apexcharts-legend.apx-legend-position-right, .apexcharts-legend.apx-legend-position-left {	
        justify-content: flex-start;	
      }	
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-center, .apexcharts-legend.apx-legend-position-top.apexcharts-align-center {	
        justify-content: center;  	
      }	
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-right, .apexcharts-legend.apx-legend-position-top.apexcharts-align-right {	
        justify-content: flex-end;	
      }	
      .apexcharts-legend-series {	
        cursor: pointer;	
        line-height: normal;	
      }	
      .apexcharts-legend.apx-legend-position-bottom .apexcharts-legend-series, .apexcharts-legend.apx-legend-position-top .apexcharts-legend-series{	
        display: flex;	
        align-items: center;	
      }	
      .apexcharts-legend-text {	
        position: relative;	
        font-size: 14px;	
      }	
      .apexcharts-legend-text *, .apexcharts-legend-marker * {	
        pointer-events: none;	
      }	
      .apexcharts-legend-marker {	
        position: relative;	
        display: inline-block;	
        cursor: pointer;	
        margin-right: 3px;	
        border-style: solid;
      }	
      	
      .apexcharts-legend.apexcharts-align-right .apexcharts-legend-series, .apexcharts-legend.apexcharts-align-left .apexcharts-legend-series{	
        display: inline-block;	
      }	
      .apexcharts-legend-series.apexcharts-no-click {	
        cursor: auto;	
      }	
      .apexcharts-legend .apexcharts-hidden-zero-series, .apexcharts-legend .apexcharts-hidden-null-series {	
        display: none !important;	
      }	
      .apexcharts-inactive-legend {	
        opacity: 0.45;	
      }</style></foreignObject><g id="SvgjsG2441" class="apexcharts-inner apexcharts-graphical" transform="translate(53.80000114440918, 52)"><defs id="SvgjsDefs2440"><linearGradient id="SvgjsLinearGradient2445" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop2446" stop-opacity="0.4" stop-color="rgba(216,227,240,0.4)" offset="0"></stop><stop id="SvgjsStop2447" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop><stop id="SvgjsStop2448" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop></linearGradient><clipPath id="gridRectMaskiajy0nj3i"><rect id="SvgjsRect2450" width="451.1999988555908" height="223.70079907417298" x="-5" y="-3" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskiajy0nj3i"></clipPath><clipPath id="nonForecastMaskiajy0nj3i"></clipPath><clipPath id="gridRectMarkerMaskiajy0nj3i"><rect id="SvgjsRect2451" width="445.1999988555908" height="221.70079907417298" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><rect id="SvgjsRect2449" width="22.05999994277954" height="217.70079907417298" x="76.97143421854292" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke-dasharray="3" fill="url(#SvgjsLinearGradient2445)" class="apexcharts-xcrosshairs" y2="217.70079907417298" filter="none" fill-opacity="0.9" x1="76.97143421854292" x2="76.97143421854292"></rect><g id="SvgjsG2471" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG2472" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text id="SvgjsText2474" font-family="Helvetica, Arial, sans-serif" x="31.5142856325422" y="246.70079907417298" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2475">Jan</tspan><title>Jan</title></text><text id="SvgjsText2477" font-family="Helvetica, Arial, sans-serif" x="94.5428568976266" y="246.70079907417298" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2478">Feb</tspan><title>Feb</title></text><text id="SvgjsText2480" font-family="Helvetica, Arial, sans-serif" x="157.57142816271102" y="246.70079907417298" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2481">Mar</tspan><title>Mar</title></text><text id="SvgjsText2483" font-family="Helvetica, Arial, sans-serif" x="220.5999994277954" y="246.70079907417298" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2484">Apr</tspan><title>Apr</title></text><text id="SvgjsText2486" font-family="Helvetica, Arial, sans-serif" x="283.6285706928798" y="246.70079907417298" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2487">May</tspan><title>May</title></text><text id="SvgjsText2489" font-family="Helvetica, Arial, sans-serif" x="346.6571419579642" y="246.70079907417298" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2490">Jun</tspan><title>Jun</title></text><text id="SvgjsText2492" font-family="Helvetica, Arial, sans-serif" x="409.6857132230486" y="246.70079907417298" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2493">Jul</tspan><title>Jul</title></text></g></g><g id="SvgjsG2508" class="apexcharts-grid"><g id="SvgjsG2509" class="apexcharts-gridlines-horizontal"><line id="SvgjsLine2511" x1="0" y1="0" x2="441.1999988555908" y2="0" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2512" x1="0" y1="43.540159814834595" x2="441.1999988555908" y2="43.540159814834595" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2513" x1="0" y1="87.08031962966919" x2="441.1999988555908" y2="87.08031962966919" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2514" x1="0" y1="130.6204794445038" x2="441.1999988555908" y2="130.6204794445038" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2515" x1="0" y1="174.16063925933838" x2="441.1999988555908" y2="174.16063925933838" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2516" x1="0" y1="217.70079907417298" x2="441.1999988555908" y2="217.70079907417298" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG2510" class="apexcharts-gridlines-vertical"></g><line id="SvgjsLine2518" x1="0" y1="217.70079907417298" x2="441.1999988555908" y2="217.70079907417298" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine2517" x1="0" y1="1" x2="0" y2="217.70079907417298" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG2452" class="apexcharts-bar-series apexcharts-plot-series"><g id="SvgjsG2453" class="apexcharts-series" seriesName="2021" rel="1" data:realIndex="0"><path id="SvgjsPath2455" d="M 20.48428566115243 120.62047944450379L 20.48428566115243 62.24819177780151Q 20.48428566115243 52.24819177780151 30.48428566115243 52.24819177780151L 26.544285603931968 52.24819177780151Q 36.54428560393197 52.24819177780151 36.54428560393197 62.24819177780151L 36.54428560393197 62.24819177780151L 36.54428560393197 120.62047944450379Q 36.54428560393197 130.6204794445038 26.544285603931968 130.6204794445038L 30.48428566115243 130.6204794445038Q 20.48428566115243 130.6204794445038 20.48428566115243 120.62047944450379z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskiajy0nj3i)" pathTo="M 20.48428566115243 120.62047944450379L 20.48428566115243 62.24819177780151Q 20.48428566115243 52.24819177780151 30.48428566115243 52.24819177780151L 26.544285603931968 52.24819177780151Q 36.54428560393197 52.24819177780151 36.54428560393197 62.24819177780151L 36.54428560393197 62.24819177780151L 36.54428560393197 120.62047944450379Q 36.54428560393197 130.6204794445038 26.544285603931968 130.6204794445038L 30.48428566115243 130.6204794445038Q 20.48428566115243 130.6204794445038 20.48428566115243 120.62047944450379z" pathFrom="M 20.48428566115243 120.62047944450379L 20.48428566115243 120.62047944450379L 36.54428560393197 120.62047944450379L 36.54428560393197 120.62047944450379L 36.54428560393197 120.62047944450379L 36.54428560393197 120.62047944450379L 36.54428560393197 120.62047944450379L 20.48428566115243 120.62047944450379" cy="52.24819177780151" cx="80.51285692623684" j="0" val="18" barHeight="78.37228766670228" barWidth="22.05999994277954"></path><path id="SvgjsPath2456" d="M 83.51285692623684 120.62047944450379L 83.51285692623684 110.14236757411956Q 83.51285692623684 100.14236757411956 93.51285692623684 100.14236757411956L 89.57285686901638 100.14236757411956Q 99.57285686901638 100.14236757411956 99.57285686901638 110.14236757411956L 99.57285686901638 110.14236757411956L 99.57285686901638 120.62047944450379Q 99.57285686901638 130.6204794445038 89.57285686901638 130.6204794445038L 93.51285692623684 130.6204794445038Q 83.51285692623684 130.6204794445038 83.51285692623684 120.62047944450379z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskiajy0nj3i)" pathTo="M 83.51285692623684 120.62047944450379L 83.51285692623684 110.14236757411956Q 83.51285692623684 100.14236757411956 93.51285692623684 100.14236757411956L 89.57285686901638 100.14236757411956Q 99.57285686901638 100.14236757411956 99.57285686901638 110.14236757411956L 99.57285686901638 110.14236757411956L 99.57285686901638 120.62047944450379Q 99.57285686901638 130.6204794445038 89.57285686901638 130.6204794445038L 93.51285692623684 130.6204794445038Q 83.51285692623684 130.6204794445038 83.51285692623684 120.62047944450379z" pathFrom="M 83.51285692623684 120.62047944450379L 83.51285692623684 120.62047944450379L 99.57285686901638 120.62047944450379L 99.57285686901638 120.62047944450379L 99.57285686901638 120.62047944450379L 99.57285686901638 120.62047944450379L 99.57285686901638 120.62047944450379L 83.51285692623684 120.62047944450379" cy="100.14236757411956" cx="143.54142819132124" j="1" val="7" barHeight="30.478111870384218" barWidth="22.05999994277954"></path><path id="SvgjsPath2457" d="M 146.54142819132124 120.62047944450379L 146.54142819132124 75.3102397222519Q 146.54142819132124 65.3102397222519 156.54142819132124 65.3102397222519L 152.6014281341008 65.3102397222519Q 162.6014281341008 65.3102397222519 162.6014281341008 75.3102397222519L 162.6014281341008 75.3102397222519L 162.6014281341008 120.62047944450379Q 162.6014281341008 130.6204794445038 152.6014281341008 130.6204794445038L 156.54142819132124 130.6204794445038Q 146.54142819132124 130.6204794445038 146.54142819132124 120.62047944450379z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskiajy0nj3i)" pathTo="M 146.54142819132124 120.62047944450379L 146.54142819132124 75.3102397222519Q 146.54142819132124 65.3102397222519 156.54142819132124 65.3102397222519L 152.6014281341008 65.3102397222519Q 162.6014281341008 65.3102397222519 162.6014281341008 75.3102397222519L 162.6014281341008 75.3102397222519L 162.6014281341008 120.62047944450379Q 162.6014281341008 130.6204794445038 152.6014281341008 130.6204794445038L 156.54142819132124 130.6204794445038Q 146.54142819132124 130.6204794445038 146.54142819132124 120.62047944450379z" pathFrom="M 146.54142819132124 120.62047944450379L 146.54142819132124 120.62047944450379L 162.6014281341008 120.62047944450379L 162.6014281341008 120.62047944450379L 162.6014281341008 120.62047944450379L 162.6014281341008 120.62047944450379L 162.6014281341008 120.62047944450379L 146.54142819132124 120.62047944450379" cy="65.3102397222519" cx="206.56999945640564" j="2" val="15" barHeight="65.3102397222519" barWidth="22.05999994277954"></path><path id="SvgjsPath2458" d="M 209.56999945640564 120.62047944450379L 209.56999945640564 14.354015981483457Q 209.56999945640564 4.354015981483457 219.56999945640564 4.354015981483457L 215.62999939918518 4.354015981483457Q 225.62999939918518 4.354015981483457 225.62999939918518 14.354015981483457L 225.62999939918518 14.354015981483457L 225.62999939918518 120.62047944450379Q 225.62999939918518 130.6204794445038 215.62999939918518 130.6204794445038L 219.56999945640564 130.6204794445038Q 209.56999945640564 130.6204794445038 209.56999945640564 120.62047944450379z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskiajy0nj3i)" pathTo="M 209.56999945640564 120.62047944450379L 209.56999945640564 14.354015981483457Q 209.56999945640564 4.354015981483457 219.56999945640564 4.354015981483457L 215.62999939918518 4.354015981483457Q 225.62999939918518 4.354015981483457 225.62999939918518 14.354015981483457L 225.62999939918518 14.354015981483457L 225.62999939918518 120.62047944450379Q 225.62999939918518 130.6204794445038 215.62999939918518 130.6204794445038L 219.56999945640564 130.6204794445038Q 209.56999945640564 130.6204794445038 209.56999945640564 120.62047944450379z" pathFrom="M 209.56999945640564 120.62047944450379L 209.56999945640564 120.62047944450379L 225.62999939918518 120.62047944450379L 225.62999939918518 120.62047944450379L 225.62999939918518 120.62047944450379L 225.62999939918518 120.62047944450379L 225.62999939918518 120.62047944450379L 209.56999945640564 120.62047944450379" cy="4.354015981483457" cx="269.59857072149003" j="3" val="29" barHeight="126.26646346302033" barWidth="22.05999994277954"></path><path id="SvgjsPath2459" d="M 272.59857072149003 120.62047944450379L 272.59857072149003 62.24819177780151Q 272.59857072149003 52.24819177780151 282.59857072149003 52.24819177780151L 278.6585706642696 52.24819177780151Q 288.6585706642696 52.24819177780151 288.6585706642696 62.24819177780151L 288.6585706642696 62.24819177780151L 288.6585706642696 120.62047944450379Q 288.6585706642696 130.6204794445038 278.6585706642696 130.6204794445038L 282.59857072149003 130.6204794445038Q 272.59857072149003 130.6204794445038 272.59857072149003 120.62047944450379z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskiajy0nj3i)" pathTo="M 272.59857072149003 120.62047944450379L 272.59857072149003 62.24819177780151Q 272.59857072149003 52.24819177780151 282.59857072149003 52.24819177780151L 278.6585706642696 52.24819177780151Q 288.6585706642696 52.24819177780151 288.6585706642696 62.24819177780151L 288.6585706642696 62.24819177780151L 288.6585706642696 120.62047944450379Q 288.6585706642696 130.6204794445038 278.6585706642696 130.6204794445038L 282.59857072149003 130.6204794445038Q 272.59857072149003 130.6204794445038 272.59857072149003 120.62047944450379z" pathFrom="M 272.59857072149003 120.62047944450379L 272.59857072149003 120.62047944450379L 288.6585706642696 120.62047944450379L 288.6585706642696 120.62047944450379L 288.6585706642696 120.62047944450379L 288.6585706642696 120.62047944450379L 288.6585706642696 120.62047944450379L 272.59857072149003 120.62047944450379" cy="52.24819177780151" cx="332.62714198657443" j="4" val="18" barHeight="78.37228766670228" barWidth="22.05999994277954"></path><path id="SvgjsPath2460" d="M 335.62714198657443 120.62047944450379L 335.62714198657443 88.37228766670228Q 335.62714198657443 78.37228766670228 345.62714198657443 78.37228766670228L 341.68714192935397 78.37228766670228Q 351.68714192935397 78.37228766670228 351.68714192935397 88.37228766670228L 351.68714192935397 88.37228766670228L 351.68714192935397 120.62047944450379Q 351.68714192935397 130.6204794445038 341.68714192935397 130.6204794445038L 345.62714198657443 130.6204794445038Q 335.62714198657443 130.6204794445038 335.62714198657443 120.62047944450379z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskiajy0nj3i)" pathTo="M 335.62714198657443 120.62047944450379L 335.62714198657443 88.37228766670228Q 335.62714198657443 78.37228766670228 345.62714198657443 78.37228766670228L 341.68714192935397 78.37228766670228Q 351.68714192935397 78.37228766670228 351.68714192935397 88.37228766670228L 351.68714192935397 88.37228766670228L 351.68714192935397 120.62047944450379Q 351.68714192935397 130.6204794445038 341.68714192935397 130.6204794445038L 345.62714198657443 130.6204794445038Q 335.62714198657443 130.6204794445038 335.62714198657443 120.62047944450379z" pathFrom="M 335.62714198657443 120.62047944450379L 335.62714198657443 120.62047944450379L 351.68714192935397 120.62047944450379L 351.68714192935397 120.62047944450379L 351.68714192935397 120.62047944450379L 351.68714192935397 120.62047944450379L 351.68714192935397 120.62047944450379L 335.62714198657443 120.62047944450379" cy="78.37228766670228" cx="395.6557132516588" j="5" val="12" barHeight="52.248191777801516" barWidth="22.05999994277954"></path><path id="SvgjsPath2461" d="M 398.6557132516588 120.62047944450379L 398.6557132516588 101.43433561115265Q 398.6557132516588 91.43433561115265 408.6557132516588 91.43433561115265L 404.71571319443837 91.43433561115265Q 414.71571319443837 91.43433561115265 414.71571319443837 101.43433561115265L 414.71571319443837 101.43433561115265L 414.71571319443837 120.62047944450379Q 414.71571319443837 130.6204794445038 404.71571319443837 130.6204794445038L 408.6557132516588 130.6204794445038Q 398.6557132516588 130.6204794445038 398.6557132516588 120.62047944450379z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskiajy0nj3i)" pathTo="M 398.6557132516588 120.62047944450379L 398.6557132516588 101.43433561115265Q 398.6557132516588 91.43433561115265 408.6557132516588 91.43433561115265L 404.71571319443837 91.43433561115265Q 414.71571319443837 91.43433561115265 414.71571319443837 101.43433561115265L 414.71571319443837 101.43433561115265L 414.71571319443837 120.62047944450379Q 414.71571319443837 130.6204794445038 404.71571319443837 130.6204794445038L 408.6557132516588 130.6204794445038Q 398.6557132516588 130.6204794445038 398.6557132516588 120.62047944450379z" pathFrom="M 398.6557132516588 120.62047944450379L 398.6557132516588 120.62047944450379L 414.71571319443837 120.62047944450379L 414.71571319443837 120.62047944450379L 414.71571319443837 120.62047944450379L 414.71571319443837 120.62047944450379L 414.71571319443837 120.62047944450379L 398.6557132516588 120.62047944450379" cy="91.43433561115265" cx="458.6842845167432" j="6" val="9" barHeight="39.18614383335114" barWidth="22.05999994277954"></path></g><g id="SvgjsG2462" class="apexcharts-series" seriesName="2020" rel="2" data:realIndex="1"><path id="SvgjsPath2464" d="M 20.48428566115243 150.6204794445038L 20.48428566115243 187.22268720378878Q 20.48428566115243 197.22268720378878 30.48428566115243 197.22268720378878L 26.544285603931968 197.22268720378878Q 36.54428560393197 197.22268720378878 36.54428560393197 187.22268720378878L 36.54428560393197 187.22268720378878L 36.54428560393197 150.6204794445038Q 36.54428560393197 140.6204794445038 26.544285603931968 140.6204794445038L 30.48428566115243 140.6204794445038Q 20.48428566115243 140.6204794445038 20.48428566115243 150.6204794445038z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskiajy0nj3i)" pathTo="M 20.48428566115243 150.6204794445038L 20.48428566115243 187.22268720378878Q 20.48428566115243 197.22268720378878 30.48428566115243 197.22268720378878L 26.544285603931968 197.22268720378878Q 36.54428560393197 197.22268720378878 36.54428560393197 187.22268720378878L 36.54428560393197 187.22268720378878L 36.54428560393197 150.6204794445038Q 36.54428560393197 140.6204794445038 26.544285603931968 140.6204794445038L 30.48428566115243 140.6204794445038Q 20.48428566115243 140.6204794445038 20.48428566115243 150.6204794445038z" pathFrom="M 20.48428566115243 150.6204794445038L 20.48428566115243 150.6204794445038L 36.54428560393197 150.6204794445038L 36.54428560393197 150.6204794445038L 36.54428560393197 150.6204794445038L 36.54428560393197 150.6204794445038L 36.54428560393197 150.6204794445038L 20.48428566115243 150.6204794445038" cy="177.22268720378878" cx="80.51285692623684" j="0" val="-13" barHeight="-56.60220775928498" barWidth="22.05999994277954"></path><path id="SvgjsPath2465" d="M 83.51285692623684 150.6204794445038L 83.51285692623684 208.99276711120606Q 83.51285692623684 218.99276711120606 93.51285692623684 218.99276711120606L 89.57285686901638 218.99276711120606Q 99.57285686901638 218.99276711120606 99.57285686901638 208.99276711120606L 99.57285686901638 208.99276711120606L 99.57285686901638 150.6204794445038Q 99.57285686901638 140.6204794445038 89.57285686901638 140.6204794445038L 93.51285692623684 140.6204794445038Q 83.51285692623684 140.6204794445038 83.51285692623684 150.6204794445038z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskiajy0nj3i)" pathTo="M 83.51285692623684 150.6204794445038L 83.51285692623684 208.99276711120606Q 83.51285692623684 218.99276711120606 93.51285692623684 218.99276711120606L 89.57285686901638 218.99276711120606Q 99.57285686901638 218.99276711120606 99.57285686901638 208.99276711120606L 99.57285686901638 208.99276711120606L 99.57285686901638 150.6204794445038Q 99.57285686901638 140.6204794445038 89.57285686901638 140.6204794445038L 93.51285692623684 140.6204794445038Q 83.51285692623684 140.6204794445038 83.51285692623684 150.6204794445038z" pathFrom="M 83.51285692623684 150.6204794445038L 83.51285692623684 150.6204794445038L 99.57285686901638 150.6204794445038L 99.57285686901638 150.6204794445038L 99.57285686901638 150.6204794445038L 99.57285686901638 150.6204794445038L 99.57285686901638 150.6204794445038L 83.51285692623684 150.6204794445038" cy="198.99276711120606" cx="143.54142819132124" j="1" val="-18" barHeight="-78.37228766670228" barWidth="22.05999994277954"></path><path id="SvgjsPath2466" d="M 146.54142819132124 150.6204794445038L 146.54142819132124 169.80662327785492Q 146.54142819132124 179.80662327785492 156.54142819132124 179.80662327785492L 152.6014281341008 179.80662327785492Q 162.6014281341008 179.80662327785492 162.6014281341008 169.80662327785492L 162.6014281341008 169.80662327785492L 162.6014281341008 150.6204794445038Q 162.6014281341008 140.6204794445038 152.6014281341008 140.6204794445038L 156.54142819132124 140.6204794445038Q 146.54142819132124 140.6204794445038 146.54142819132124 150.6204794445038z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskiajy0nj3i)" pathTo="M 146.54142819132124 150.6204794445038L 146.54142819132124 169.80662327785492Q 146.54142819132124 179.80662327785492 156.54142819132124 179.80662327785492L 152.6014281341008 179.80662327785492Q 162.6014281341008 179.80662327785492 162.6014281341008 169.80662327785492L 162.6014281341008 169.80662327785492L 162.6014281341008 150.6204794445038Q 162.6014281341008 140.6204794445038 152.6014281341008 140.6204794445038L 156.54142819132124 140.6204794445038Q 146.54142819132124 140.6204794445038 146.54142819132124 150.6204794445038z" pathFrom="M 146.54142819132124 150.6204794445038L 146.54142819132124 150.6204794445038L 162.6014281341008 150.6204794445038L 162.6014281341008 150.6204794445038L 162.6014281341008 150.6204794445038L 162.6014281341008 150.6204794445038L 162.6014281341008 150.6204794445038L 146.54142819132124 150.6204794445038" cy="159.80662327785492" cx="206.56999945640564" j="2" val="-9" barHeight="-39.18614383335114" barWidth="22.05999994277954"></path><path id="SvgjsPath2467" d="M 209.56999945640564 150.6204794445038L 209.56999945640564 191.5767031852722Q 209.56999945640564 201.5767031852722 219.56999945640564 201.5767031852722L 215.62999939918518 201.5767031852722Q 225.62999939918518 201.5767031852722 225.62999939918518 191.5767031852722L 225.62999939918518 191.5767031852722L 225.62999939918518 150.6204794445038Q 225.62999939918518 140.6204794445038 215.62999939918518 140.6204794445038L 219.56999945640564 140.6204794445038Q 209.56999945640564 140.6204794445038 209.56999945640564 150.6204794445038z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskiajy0nj3i)" pathTo="M 209.56999945640564 150.6204794445038L 209.56999945640564 191.5767031852722Q 209.56999945640564 201.5767031852722 219.56999945640564 201.5767031852722L 215.62999939918518 201.5767031852722Q 225.62999939918518 201.5767031852722 225.62999939918518 191.5767031852722L 225.62999939918518 191.5767031852722L 225.62999939918518 150.6204794445038Q 225.62999939918518 140.6204794445038 215.62999939918518 140.6204794445038L 219.56999945640564 140.6204794445038Q 209.56999945640564 140.6204794445038 209.56999945640564 150.6204794445038z" pathFrom="M 209.56999945640564 150.6204794445038L 209.56999945640564 150.6204794445038L 225.62999939918518 150.6204794445038L 225.62999939918518 150.6204794445038L 225.62999939918518 150.6204794445038L 225.62999939918518 150.6204794445038L 225.62999939918518 150.6204794445038L 209.56999945640564 150.6204794445038" cy="181.5767031852722" cx="269.59857072149003" j="3" val="-14" barHeight="-60.956223740768436" barWidth="22.05999994277954"></path><path id="SvgjsPath2468" d="M 272.59857072149003 150.6204794445038L 272.59857072149003 152.39055935192107Q 272.59857072149003 162.39055935192107 282.59857072149003 162.39055935192107L 278.6585706642696 162.39055935192107Q 288.6585706642696 162.39055935192107 288.6585706642696 152.39055935192107L 288.6585706642696 152.39055935192107L 288.6585706642696 150.6204794445038Q 288.6585706642696 140.6204794445038 278.6585706642696 140.6204794445038L 282.59857072149003 140.6204794445038Q 272.59857072149003 140.6204794445038 272.59857072149003 150.6204794445038z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskiajy0nj3i)" pathTo="M 272.59857072149003 150.6204794445038L 272.59857072149003 152.39055935192107Q 272.59857072149003 162.39055935192107 282.59857072149003 162.39055935192107L 278.6585706642696 162.39055935192107Q 288.6585706642696 162.39055935192107 288.6585706642696 152.39055935192107L 288.6585706642696 152.39055935192107L 288.6585706642696 150.6204794445038Q 288.6585706642696 140.6204794445038 278.6585706642696 140.6204794445038L 282.59857072149003 140.6204794445038Q 272.59857072149003 140.6204794445038 272.59857072149003 150.6204794445038z" pathFrom="M 272.59857072149003 150.6204794445038L 272.59857072149003 150.6204794445038L 288.6585706642696 150.6204794445038L 288.6585706642696 150.6204794445038L 288.6585706642696 150.6204794445038L 288.6585706642696 150.6204794445038L 288.6585706642696 150.6204794445038L 272.59857072149003 150.6204794445038" cy="142.39055935192107" cx="332.62714198657443" j="4" val="-5" barHeight="-21.770079907417298" barWidth="22.05999994277954"></path><path id="SvgjsPath2469" d="M 335.62714198657443 150.6204794445038L 335.62714198657443 204.6387511297226Q 335.62714198657443 214.6387511297226 345.62714198657443 214.6387511297226L 341.68714192935397 214.6387511297226Q 351.68714192935397 214.6387511297226 351.68714192935397 204.6387511297226L 351.68714192935397 204.6387511297226L 351.68714192935397 150.6204794445038Q 351.68714192935397 140.6204794445038 341.68714192935397 140.6204794445038L 345.62714198657443 140.6204794445038Q 335.62714198657443 140.6204794445038 335.62714198657443 150.6204794445038z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskiajy0nj3i)" pathTo="M 335.62714198657443 150.6204794445038L 335.62714198657443 204.6387511297226Q 335.62714198657443 214.6387511297226 345.62714198657443 214.6387511297226L 341.68714192935397 214.6387511297226Q 351.68714192935397 214.6387511297226 351.68714192935397 204.6387511297226L 351.68714192935397 204.6387511297226L 351.68714192935397 150.6204794445038Q 351.68714192935397 140.6204794445038 341.68714192935397 140.6204794445038L 345.62714198657443 140.6204794445038Q 335.62714198657443 140.6204794445038 335.62714198657443 150.6204794445038z" pathFrom="M 335.62714198657443 150.6204794445038L 335.62714198657443 150.6204794445038L 351.68714192935397 150.6204794445038L 351.68714192935397 150.6204794445038L 351.68714192935397 150.6204794445038L 351.68714192935397 150.6204794445038L 351.68714192935397 150.6204794445038L 335.62714198657443 150.6204794445038" cy="194.6387511297226" cx="395.6557132516588" j="5" val="-17" barHeight="-74.01827168521882" barWidth="22.05999994277954"></path><path id="SvgjsPath2470" d="M 398.6557132516588 150.6204794445038L 398.6557132516588 195.9307191667557Q 398.6557132516588 205.9307191667557 408.6557132516588 205.9307191667557L 404.71571319443837 205.9307191667557Q 414.71571319443837 205.9307191667557 414.71571319443837 195.9307191667557L 414.71571319443837 195.9307191667557L 414.71571319443837 150.6204794445038Q 414.71571319443837 140.6204794445038 404.71571319443837 140.6204794445038L 408.6557132516588 140.6204794445038Q 398.6557132516588 140.6204794445038 398.6557132516588 150.6204794445038z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskiajy0nj3i)" pathTo="M 398.6557132516588 150.6204794445038L 398.6557132516588 195.9307191667557Q 398.6557132516588 205.9307191667557 408.6557132516588 205.9307191667557L 404.71571319443837 205.9307191667557Q 414.71571319443837 205.9307191667557 414.71571319443837 195.9307191667557L 414.71571319443837 195.9307191667557L 414.71571319443837 150.6204794445038Q 414.71571319443837 140.6204794445038 404.71571319443837 140.6204794445038L 408.6557132516588 140.6204794445038Q 398.6557132516588 140.6204794445038 398.6557132516588 150.6204794445038z" pathFrom="M 398.6557132516588 150.6204794445038L 398.6557132516588 150.6204794445038L 414.71571319443837 150.6204794445038L 414.71571319443837 150.6204794445038L 414.71571319443837 150.6204794445038L 414.71571319443837 150.6204794445038L 414.71571319443837 150.6204794445038L 398.6557132516588 150.6204794445038" cy="185.9307191667557" cx="458.6842845167432" j="6" val="-15" barHeight="-65.3102397222519" barWidth="22.05999994277954"></path></g><g id="SvgjsG2454" class="apexcharts-datalabels" data:realIndex="0"></g><g id="SvgjsG2463" class="apexcharts-datalabels" data:realIndex="1"></g></g><line id="SvgjsLine2519" x1="0" y1="0" x2="441.1999988555908" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2520" x1="0" y1="0" x2="441.1999988555908" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG2521" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG2522" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG2523" class="apexcharts-point-annotations"></g></g><g id="SvgjsG2494" class="apexcharts-yaxis" rel="0" transform="translate(15.80000114440918, 0)"><g id="SvgjsG2495" class="apexcharts-yaxis-texts-g"><text id="SvgjsText2496" font-family="Helvetica, Arial, sans-serif" x="20" y="53.5" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2497">30</tspan><title>30</title></text><text id="SvgjsText2498" font-family="Helvetica, Arial, sans-serif" x="20" y="97.0401598148346" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2499">20</tspan><title>20</title></text><text id="SvgjsText2500" font-family="Helvetica, Arial, sans-serif" x="20" y="140.5803196296692" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2501">10</tspan><title>10</title></text><text id="SvgjsText2502" font-family="Helvetica, Arial, sans-serif" x="20" y="184.1204794445038" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2503">0</tspan><title>0</title></text><text id="SvgjsText2504" font-family="Helvetica, Arial, sans-serif" x="20" y="227.66063925933838" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2505">-10</tspan><title>-10</title></text><text id="SvgjsText2506" font-family="Helvetica, Arial, sans-serif" x="20" y="271.200799074173" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2507">-20</tspan><title>-20</title></text></g></g><g id="SvgjsG2442" class="apexcharts-annotations"></g></svg><div class="apexcharts-tooltip apexcharts-theme-light" style="left: 141.801px; top: 116.95px;"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">Feb</div><div class="apexcharts-tooltip-series-group apexcharts-active" style="order: 1; display: flex;"><span class="apexcharts-tooltip-marker" style="background-color: rgba(105, 108, 255, 0.85);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">2021: </span><span class="apexcharts-tooltip-text-y-value">7</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 2; display: none;"><span class="apexcharts-tooltip-marker" style="background-color: rgba(105, 108, 255, 0.85);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">2021: </span><span class="apexcharts-tooltip-text-y-value">7</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                      <div class="resize-triggers"><div class="expand-trigger"><div style="width: 532px; height: 377px;"></div></div><div class="contract-trigger"></div></div></div>
                      <div class="col-md-4">
                        <div class="card-body">
                          <div class="text-center">
                            <div class="dropdown">
                              <button class="btn btn-sm btn-outline-primary dropdown-toggle" type="button" id="growthReportId" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                2022
                              </button>
                              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="growthReportId">
                                <a class="dropdown-item" href="javascript:void(0);">2021</a>
                                <a class="dropdown-item" href="javascript:void(0);">2020</a>
                                <a class="dropdown-item" href="javascript:void(0);">2019</a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div id="growthChart" style="min-height: 154.875px;"><div id="apexchartsmodtpdiu" class="apexcharts-canvas apexchartsmodtpdiu apexcharts-theme-light" style="width: 265px; height: 154.875px;"><svg id="SvgjsSvg2524" width="265" height="154.875" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG2526" class="apexcharts-inner apexcharts-graphical" transform="translate(25.5, -25)"><defs id="SvgjsDefs2525"><clipPath id="gridRectMaskmodtpdiu"><rect id="SvgjsRect2528" width="222" height="285" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskmodtpdiu"></clipPath><clipPath id="nonForecastMaskmodtpdiu"></clipPath><clipPath id="gridRectMarkerMaskmodtpdiu"><rect id="SvgjsRect2529" width="220" height="287" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><linearGradient id="SvgjsLinearGradient2534" x1="1" y1="0" x2="0" y2="1"><stop id="SvgjsStop2535" stop-opacity="1" stop-color="rgba(105,108,255,1)" offset="0.3"></stop><stop id="SvgjsStop2536" stop-opacity="0.6" stop-color="rgba(255,255,255,0.6)" offset="0.7"></stop><stop id="SvgjsStop2537" stop-opacity="0.6" stop-color="rgba(255,255,255,0.6)" offset="1"></stop></linearGradient><linearGradient id="SvgjsLinearGradient2545" x1="1" y1="0" x2="0" y2="1"><stop id="SvgjsStop2546" stop-opacity="1" stop-color="rgba(105,108,255,1)" offset="0.3"></stop><stop id="SvgjsStop2547" stop-opacity="0.6" stop-color="rgba(105,108,255,0.6)" offset="0.7"></stop><stop id="SvgjsStop2548" stop-opacity="0.6" stop-color="rgba(105,108,255,0.6)" offset="1"></stop></linearGradient></defs><g id="SvgjsG2530" class="apexcharts-radialbar"><g id="SvgjsG2531"><g id="SvgjsG2532" class="apexcharts-tracks"><g id="SvgjsG2533" class="apexcharts-radialbar-track apexcharts-track" rel="1"><path id="apexcharts-radialbarTrack-0" d="M 73.83506097560974 167.17541022773656 A 68.32987804878049 68.32987804878049 0 1 1 142.16493902439026 167.17541022773656" fill="none" fill-opacity="1" stroke="rgba(255,255,255,0.85)" stroke-opacity="1" stroke-linecap="butt" stroke-width="17.357317073170734" stroke-dasharray="0" class="apexcharts-radialbar-area" data:pathOrig="M 73.83506097560974 167.17541022773656 A 68.32987804878049 68.32987804878049 0 1 1 142.16493902439026 167.17541022773656"></path></g></g><g id="SvgjsG2539"><g id="SvgjsG2544" class="apexcharts-series apexcharts-radial-series" seriesName="Growth" rel="1" data:realIndex="0"><path id="SvgjsPath2549" d="M 73.83506097560974 167.17541022773656 A 68.32987804878049 68.32987804878049 0 1 1 175.95555982735613 100.85758285229481" fill="none" fill-opacity="0.85" stroke="url(#SvgjsLinearGradient2545)" stroke-opacity="1" stroke-linecap="butt" stroke-width="17.357317073170734" stroke-dasharray="5" class="apexcharts-radialbar-area apexcharts-radialbar-slice-0" data:angle="234" data:value="78" index="0" j="0" data:pathOrig="M 73.83506097560974 167.17541022773656 A 68.32987804878049 68.32987804878049 0 1 1 175.95555982735613 100.85758285229481"></path></g><circle id="SvgjsCircle2540" r="54.65121951219512" cx="108" cy="108" class="apexcharts-radialbar-hollow" fill="transparent"></circle><g id="SvgjsG2541" class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)" style="opacity: 1;"><text id="SvgjsText2542" font-family="Public Sans" x="108" y="123" text-anchor="middle" dominant-baseline="auto" font-size="15px" font-weight="500" fill="#566a7f" class="apexcharts-text apexcharts-datalabel-label" style="font-family: &quot;Public Sans&quot;;">Growth</text><text id="SvgjsText2543" font-family="Public Sans" x="108" y="99" text-anchor="middle" dominant-baseline="auto" font-size="22px" font-weight="500" fill="#566a7f" class="apexcharts-text apexcharts-datalabel-value" style="font-family: &quot;Public Sans&quot;;">78%</text></g></g></g></g><line id="SvgjsLine2550" x1="0" y1="0" x2="216" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2551" x1="0" y1="0" x2="216" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line></g><g id="SvgjsG2527" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend"></div></div></div>
                        <div class="text-center fw-semibold pt-3 mb-2">62% Company Growth</div>

                        <div class="d-flex px-xxl-4 px-lg-2 p-4 gap-xxl-3 gap-lg-1 gap-3 justify-content-between">
                          <div class="d-flex">
                            <div class="me-2">
                              <span class="badge bg-label-primary p-2"><i class="bx bx-dollar text-primary"></i></span>
                            </div>
                            <div class="d-flex flex-column">
                              <small>2022</small>
                              <h6 class="mb-0">$32.5k</h6>
                            </div>
                          </div>
                          <div class="d-flex">
                            <div class="me-2">
                              <span class="badge bg-label-info p-2"><i class="bx bx-wallet text-info"></i></span>
                            </div>
                            <div class="d-flex flex-column">
                              <small>2021</small>
                              <h6 class="mb-0">$41.2k</h6>
                            </div>
                          </div>
                        </div>
                      <div class="resize-triggers"><div class="expand-trigger"><div style="width: 266px; height: 377px;"></div></div><div class="contract-trigger"></div></div></div>
                    </div>
                  </div>
                </div>
                <!--/ Total Revenue -->
                <div class="col-12 col-md-8 col-lg-4 order-3 order-md-2">
                  <div class="row">
                    <div class="col-6 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="card-title d-flex align-items-start justify-content-between">
                            <div class="avatar flex-shrink-0">
                              <img src="../assets/img/icons/unicons/paypal.png" alt="Credit Card" class="rounded">
                            </div>
                            <div class="dropdown">
                              <button class="btn p-0" type="button" id="cardOpt4" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-dots-vertical-rounded"></i>
                              </button>
                              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt4">
                                <a class="dropdown-item" href="javascript:void(0);">View More</a>
                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                              </div>
                            </div>
                          </div>
                          <span class="d-block mb-1">Payments</span>
                          <h3 class="card-title text-nowrap mb-2">$2,456</h3>
                          <small class="text-danger fw-semibold"><i class="bx bx-down-arrow-alt"></i> -14.82%</small>
                        </div>
                      </div>
                    </div>
                    <div class="col-6 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="card-title d-flex align-items-start justify-content-between">
                            <div class="avatar flex-shrink-0">
                              <img src="../assets/img/icons/unicons/cc-primary.png" alt="Credit Card" class="rounded">
                            </div>
                            <div class="dropdown">
                              <button class="btn p-0" type="button" id="cardOpt1" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-dots-vertical-rounded"></i>
                              </button>
                              <div class="dropdown-menu" aria-labelledby="cardOpt1">
                                <a class="dropdown-item" href="javascript:void(0);">View More</a>
                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                              </div>
                            </div>
                          </div>
                          <span class="fw-semibold d-block mb-1">Transactions</span>
                          <h3 class="card-title mb-2">$14,857</h3>
                          <small class="text-success fw-semibold"><i class="bx bx-up-arrow-alt"></i> +28.14%</small>
                        </div>
                      </div>
                    </div>
                    <!-- </div>
    <div class="row"> -->
                    <div class="col-12 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="d-flex justify-content-between flex-sm-row flex-column gap-3" style="position: relative;">
                            <div class="d-flex flex-sm-column flex-row align-items-start justify-content-between">
                              <div class="card-title">
                                <h5 class="text-nowrap mb-2">Profile Report</h5>
                                <span class="badge bg-label-warning rounded-pill">Year 2021</span>
                              </div>
                              <div class="mt-sm-auto">
                                <small class="text-success text-nowrap fw-semibold"><i class="bx bx-chevron-up"></i> 68.2%</small>
                                <h3 class="mb-0">$84,686k</h3>
                              </div>
                            </div>
                            <div id="profileReportChart" style="min-height: 80px;"><div id="apexchartsj6u5sa6r" class="apexcharts-canvas apexchartsj6u5sa6r apexcharts-theme-light" style="width: 199px; height: 80px;"><svg id="SvgjsSvg2553" width="199" height="80" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG2555" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 0)"><defs id="SvgjsDefs2554"><clipPath id="gridRectMaskj6u5sa6r"><rect id="SvgjsRect2560" width="200" height="85" x="-4.5" y="-2.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskj6u5sa6r"></clipPath><clipPath id="nonForecastMaskj6u5sa6r"></clipPath><clipPath id="gridRectMarkerMaskj6u5sa6r"><rect id="SvgjsRect2561" width="195" height="84" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><filter id="SvgjsFilter2567" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%"><feFlood id="SvgjsFeFlood2568" flood-color="#ffab00" flood-opacity="0.15" result="SvgjsFeFlood2568Out" in="SourceGraphic"></feFlood><feComposite id="SvgjsFeComposite2569" in="SvgjsFeFlood2568Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite2569Out"></feComposite><feOffset id="SvgjsFeOffset2570" dx="5" dy="10" result="SvgjsFeOffset2570Out" in="SvgjsFeComposite2569Out"></feOffset><feGaussianBlur id="SvgjsFeGaussianBlur2571" stdDeviation="3 " result="SvgjsFeGaussianBlur2571Out" in="SvgjsFeOffset2570Out"></feGaussianBlur><feMerge id="SvgjsFeMerge2572" result="SvgjsFeMerge2572Out" in="SourceGraphic"><feMergeNode id="SvgjsFeMergeNode2573" in="SvgjsFeGaussianBlur2571Out"></feMergeNode><feMergeNode id="SvgjsFeMergeNode2574" in="[object Arguments]"></feMergeNode></feMerge><feBlend id="SvgjsFeBlend2575" in="SourceGraphic" in2="SvgjsFeMerge2572Out" mode="normal" result="SvgjsFeBlend2575Out"></feBlend></filter></defs><line id="SvgjsLine2559" x1="114.1" y1="0" x2="114.1" y2="80" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="114.1" y="0" width="1" height="80" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><g id="SvgjsG2576" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG2577" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g></g><g id="SvgjsG2585" class="apexcharts-grid"><g id="SvgjsG2586" class="apexcharts-gridlines-horizontal" style="display: none;"><line id="SvgjsLine2588" x1="0" y1="0" x2="191" y2="0" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2589" x1="0" y1="20" x2="191" y2="20" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2590" x1="0" y1="40" x2="191" y2="40" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2591" x1="0" y1="60" x2="191" y2="60" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2592" x1="0" y1="80" x2="191" y2="80" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG2587" class="apexcharts-gridlines-vertical" style="display: none;"></g><line id="SvgjsLine2594" x1="0" y1="80" x2="191" y2="80" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine2593" x1="0" y1="1" x2="0" y2="80" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG2562" class="apexcharts-line-series apexcharts-plot-series"><g id="SvgjsG2563" class="apexcharts-series" seriesName="seriesx1" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath2566" d="M 0 76C 13.370000000000001 76 24.830000000000002 12 38.2 12C 51.57000000000001 12 63.03 62 76.4 62C 89.77 62 101.23 22 114.6 22C 127.97 22 139.43 38 152.8 38C 166.17000000000002 38 177.63 6 191 6" fill="none" fill-opacity="1" stroke="rgba(255,171,0,0.85)" stroke-opacity="1" stroke-linecap="butt" stroke-width="5" stroke-dasharray="0" class="apexcharts-line" index="0" clip-path="url(#gridRectMaskj6u5sa6r)" filter="url(#SvgjsFilter2567)" pathTo="M 0 76C 13.370000000000001 76 24.830000000000002 12 38.2 12C 51.57000000000001 12 63.03 62 76.4 62C 89.77 62 101.23 22 114.6 22C 127.97 22 139.43 38 152.8 38C 166.17000000000002 38 177.63 6 191 6" pathFrom="M -1 120L -1 120L 38.2 120L 76.4 120L 114.6 120L 152.8 120L 191 120"></path><g id="SvgjsG2564" class="apexcharts-series-markers-wrap" data:realIndex="0"><g class="apexcharts-series-markers"><circle id="SvgjsCircle2600" r="0" cx="114.6" cy="22" class="apexcharts-marker w5yn3f1hy no-pointer-events" stroke="#ffffff" fill="#ffab00" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" default-marker-size="0"></circle></g></g></g><g id="SvgjsG2565" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine2595" x1="0" y1="0" x2="191" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2596" x1="0" y1="0" x2="191" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG2597" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG2598" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG2599" class="apexcharts-point-annotations"></g></g><rect id="SvgjsRect2558" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG2584" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG2556" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 40px;"></div><div class="apexcharts-tooltip apexcharts-theme-light" style="left: -14.7875px; top: 25px;"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">4</div><div class="apexcharts-tooltip-series-group apexcharts-active" style="order: 1; display: flex;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(255, 171, 0);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">series-1: </span><span class="apexcharts-tooltip-text-y-value">245</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                          <div class="resize-triggers"><div class="expand-trigger"><div style="width: 338px; height: 118px;"></div></div><div class="contract-trigger"></div></div></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <!-- Order Statistics -->
                <div class="col-md-6 col-lg-4 col-xl-4 order-0 mb-4">
                  <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between pb-0">
                      <div class="card-title mb-0">
                        <h5 class="m-0 me-2">Order Statistics</h5>
                        <small class="text-muted">42.82k Total Sales</small>
                      </div>
                      <div class="dropdown">
                        <button class="btn p-0" type="button" id="orederStatistics" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
                          <a class="dropdown-item" href="javascript:void(0);">Select All</a>
                          <a class="dropdown-item" href="javascript:void(0);">Refresh</a>
                          <a class="dropdown-item" href="javascript:void(0);">Share</a>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="d-flex justify-content-between align-items-center mb-3" style="position: relative;">
                        <div class="d-flex flex-column align-items-center gap-1">
                          <h2 class="mb-2">8,258</h2>
                          <span>Total Orders</span>
                        </div>
                        <div id="orderStatisticsChart" style="min-height: 137.55px;"><div id="apexchartsonyx7u4i" class="apexcharts-canvas apexchartsonyx7u4i apexcharts-theme-light" style="width: 130px; height: 137.55px;"><svg id="SvgjsSvg2601" width="130" height="137.55" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG2603" class="apexcharts-inner apexcharts-graphical" transform="translate(-7, 0)"><defs id="SvgjsDefs2602"><clipPath id="gridRectMaskonyx7u4i"><rect id="SvgjsRect2605" width="150" height="173" x="-4.5" y="-2.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskonyx7u4i"></clipPath><clipPath id="nonForecastMaskonyx7u4i"></clipPath><clipPath id="gridRectMarkerMaskonyx7u4i"><rect id="SvgjsRect2606" width="145" height="172" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><g id="SvgjsG2607" class="apexcharts-pie"><g id="SvgjsG2608" transform="translate(0, 0) scale(1)"><circle id="SvgjsCircle2609" r="44.835365853658544" cx="70.5" cy="70.5" fill="transparent"></circle><g id="SvgjsG2610" class="apexcharts-slices"><g id="SvgjsG2611" class="apexcharts-series apexcharts-pie-series" seriesName="Electronic" rel="1" data:realIndex="0"><path id="SvgjsPath2612" d="M 70.5 10.71951219512195 A 59.78048780487805 59.78048780487805 0 0 1 97.63977353321047 123.7648046533095 L 90.85483014990785 110.44860348998213 A 44.835365853658544 44.835365853658544 0 0 0 70.5 25.664634146341456 L 70.5 10.71951219512195 z" fill="rgba(105,108,255,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="5" stroke-dasharray="0" class="apexcharts-pie-area apexcharts-donut-slice-0" index="0" j="0" data:angle="153" data:startAngle="0" data:strokeWidth="5" data:value="85" data:pathOrig="M 70.5 10.71951219512195 A 59.78048780487805 59.78048780487805 0 0 1 97.63977353321047 123.7648046533095 L 90.85483014990785 110.44860348998213 A 44.835365853658544 44.835365853658544 0 0 0 70.5 25.664634146341456 L 70.5 10.71951219512195 z" stroke="#ffffff"></path></g><g id="SvgjsG2613" class="apexcharts-series apexcharts-pie-series" seriesName="Sports" rel="2" data:realIndex="1"><path id="SvgjsPath2614" d="M 97.63977353321047 123.7648046533095 A 59.78048780487805 59.78048780487805 0 0 1 70.5 130.28048780487805 L 70.5 115.33536585365854 A 44.835365853658544 44.835365853658544 0 0 0 90.85483014990785 110.44860348998213 L 97.63977353321047 123.7648046533095 z" fill="rgba(133,146,163,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="5" stroke-dasharray="0" class="apexcharts-pie-area apexcharts-donut-slice-1" index="0" j="1" data:angle="27" data:startAngle="153" data:strokeWidth="5" data:value="15" data:pathOrig="M 97.63977353321047 123.7648046533095 A 59.78048780487805 59.78048780487805 0 0 1 70.5 130.28048780487805 L 70.5 115.33536585365854 A 44.835365853658544 44.835365853658544 0 0 0 90.85483014990785 110.44860348998213 L 97.63977353321047 123.7648046533095 z" stroke="#ffffff"></path></g><g id="SvgjsG2615" class="apexcharts-series apexcharts-pie-series" seriesName="Decor" rel="3" data:realIndex="2"><path id="SvgjsPath2616" d="M 70.5 130.28048780487805 A 59.78048780487805 59.78048780487805 0 0 1 10.71951219512195 70.50000000000001 L 25.664634146341456 70.5 A 44.835365853658544 44.835365853658544 0 0 0 70.5 115.33536585365854 L 70.5 130.28048780487805 z" fill="rgba(3,195,236,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="5" stroke-dasharray="0" class="apexcharts-pie-area apexcharts-donut-slice-2" index="0" j="2" data:angle="90" data:startAngle="180" data:strokeWidth="5" data:value="50" data:pathOrig="M 70.5 130.28048780487805 A 59.78048780487805 59.78048780487805 0 0 1 10.71951219512195 70.50000000000001 L 25.664634146341456 70.5 A 44.835365853658544 44.835365853658544 0 0 0 70.5 115.33536585365854 L 70.5 130.28048780487805 z" stroke="#ffffff"></path></g><g id="SvgjsG2617" class="apexcharts-series apexcharts-pie-series" seriesName="Fashion" rel="4" data:realIndex="3"><path id="SvgjsPath2618" d="M 10.71951219512195 70.50000000000001 A 59.78048780487805 59.78048780487805 0 0 1 70.48956633664653 10.719513105630845 L 70.4921747524849 25.664634829223125 A 44.835365853658544 44.835365853658544 0 0 0 25.664634146341456 70.5 L 10.71951219512195 70.50000000000001 z" fill="rgba(113,221,55,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="5" stroke-dasharray="0" class="apexcharts-pie-area apexcharts-donut-slice-3" index="0" j="3" data:angle="90" data:startAngle="270" data:strokeWidth="5" data:value="50" data:pathOrig="M 10.71951219512195 70.50000000000001 A 59.78048780487805 59.78048780487805 0 0 1 70.48956633664653 10.719513105630845 L 70.4921747524849 25.664634829223125 A 44.835365853658544 44.835365853658544 0 0 0 25.664634146341456 70.5 L 10.71951219512195 70.50000000000001 z" stroke="#ffffff"></path></g></g></g><g id="SvgjsG2619" class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)" style="opacity: 1;"><text id="SvgjsText2620" font-family="Helvetica, Arial, sans-serif" x="70.5" y="90.5" text-anchor="middle" dominant-baseline="auto" font-size="0.8125rem" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-datalabel-label" style="font-family: Helvetica, Arial, sans-serif; fill: rgb(161, 172, 184);">Weekly</text><text id="SvgjsText2621" font-family="Public Sans" x="70.5" y="71.5" text-anchor="middle" dominant-baseline="auto" font-size="1.5rem" font-weight="400" fill="#566a7f" class="apexcharts-text apexcharts-datalabel-value" style="font-family: &quot;Public Sans&quot;;">38%</text></g></g><line id="SvgjsLine2622" x1="0" y1="0" x2="141" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2623" x1="0" y1="0" x2="141" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line></g><g id="SvgjsG2604" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend"></div><div class="apexcharts-tooltip apexcharts-theme-dark" style="left: 23.3937px; top: 84px;"><div class="apexcharts-tooltip-series-group apexcharts-active" style="order: 1; display: flex; background-color: rgb(3, 195, 236);"><span class="apexcharts-tooltip-marker" style="background-color: rgb(3, 195, 236); display: none;"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">Decor: </span><span class="apexcharts-tooltip-text-y-value">50</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 2; display: none; background-color: rgb(3, 195, 236);"><span class="apexcharts-tooltip-marker" style="background-color: rgb(3, 195, 236); display: none;"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">Decor: </span><span class="apexcharts-tooltip-text-y-value">50</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 3; display: none; background-color: rgb(3, 195, 236);"><span class="apexcharts-tooltip-marker" style="background-color: rgb(3, 195, 236); display: none;"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">Decor: </span><span class="apexcharts-tooltip-text-y-value">50</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 4; display: none; background-color: rgb(3, 195, 236);"><span class="apexcharts-tooltip-marker" style="background-color: rgb(3, 195, 236); display: none;"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">Decor: </span><span class="apexcharts-tooltip-text-y-value">50</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div></div></div>
                      <div class="resize-triggers"><div class="expand-trigger"><div style="width: 338px; height: 139px;"></div></div><div class="contract-trigger"></div></div></div>
                      <ul class="p-0 m-0">
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-primary"><i class="bx bx-mobile-alt"></i></span>
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <h6 class="mb-0">Electronic</h6>
                              <small class="text-muted">Mobile, Earbuds, TV</small>
                            </div>
                            <div class="user-progress">
                              <small class="fw-semibold">82.5k</small>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-success"><i class="bx bx-closet"></i></span>
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <h6 class="mb-0">Fashion</h6>
                              <small class="text-muted">T-shirt, Jeans, Shoes</small>
                            </div>
                            <div class="user-progress">
                              <small class="fw-semibold">23.8k</small>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-info"><i class="bx bx-home-alt"></i></span>
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <h6 class="mb-0">Decor</h6>
                              <small class="text-muted">Fine Art, Dining</small>
                            </div>
                            <div class="user-progress">
                              <small class="fw-semibold">849k</small>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex">
                          <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-secondary"><i class="bx bx-football"></i></span>
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <h6 class="mb-0">Sports</h6>
                              <small class="text-muted">Football, Cricket Kit</small>
                            </div>
                            <div class="user-progress">
                              <small class="fw-semibold">99</small>
                            </div>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!--/ Order Statistics -->

                <!-- Expense Overview -->
                <div class="col-md-6 col-lg-4 order-1 mb-4">
                  <div class="card h-100">
                    <div class="card-header">
                      <ul class="nav nav-pills" role="tablist">
                        <li class="nav-item">
                          <button type="button" class="nav-link active" role="tab" data-bs-toggle="tab" data-bs-target="#navs-tabs-line-card-income" aria-controls="navs-tabs-line-card-income" aria-selected="true">
                            Income
                          </button>
                        </li>
                        <li class="nav-item">
                          <button type="button" class="nav-link" role="tab">Expenses</button>
                        </li>
                        <li class="nav-item">
                          <button type="button" class="nav-link" role="tab">Profit</button>
                        </li>
                      </ul>
                    </div>
                    <div class="card-body px-0">
                      <div class="tab-content p-0">
                        <div class="tab-pane fade show active" id="navs-tabs-line-card-income" role="tabpanel" style="position: relative;">
                          <div class="d-flex p-4 pt-3">
                            <div class="avatar flex-shrink-0 me-3">
                              <img src="../assets/img/icons/unicons/wallet.png" alt="User">
                            </div>
                            <div>
                              <small class="text-muted d-block">Total Balance</small>
                              <div class="d-flex align-items-center">
                                <h6 class="mb-0 me-1">$459.10</h6>
                                <small class="text-success fw-semibold">
                                  <i class="bx bx-chevron-up"></i>
                                  42.9%
                                </small>
                              </div>
                            </div>
                          </div>
                          <div id="incomeChart" style="min-height: 215px;"><div id="apexchartsoquz95g5" class="apexcharts-canvas apexchartsoquz95g5 apexcharts-theme-light" style="width: 385px; height: 215px;"><svg id="SvgjsSvg2624" width="385" height="215" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg apexcharts-zoomable hovering-zoom" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG2626" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 10)"><defs id="SvgjsDefs2625"><clipPath id="gridRectMaskoquz95g5"><rect id="SvgjsRect2631" width="373.6875" height="176.70079907417298" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskoquz95g5"></clipPath><clipPath id="nonForecastMaskoquz95g5"></clipPath><clipPath id="gridRectMarkerMaskoquz95g5"><rect id="SvgjsRect2632" width="395.6875" height="202.70079907417298" x="-14" y="-14" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><linearGradient id="SvgjsLinearGradient2652" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop2653" stop-opacity="0.5" stop-color="rgba(105,108,255,0.5)" offset="0"></stop><stop id="SvgjsStop2654" stop-opacity="0.25" stop-color="rgba(195,196,255,0.25)" offset="0.95"></stop><stop id="SvgjsStop2655" stop-opacity="0.25" stop-color="rgba(195,196,255,0.25)" offset="1"></stop></linearGradient></defs><line id="SvgjsLine2630" x1="52.026785714285715" y1="0" x2="52.026785714285715" y2="174.70079907417298" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="52.026785714285715" y="0" width="1" height="174.70079907417298" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><g id="SvgjsG2658" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG2659" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text id="SvgjsText2661" font-family="Helvetica, Arial, sans-serif" x="0" y="203.70079907417298" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2662"></tspan><title></title></text><text id="SvgjsText2664" font-family="Helvetica, Arial, sans-serif" x="52.52678571428571" y="203.70079907417298" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2665">Jan</tspan><title>Jan</title></text><text id="SvgjsText2667" font-family="Helvetica, Arial, sans-serif" x="105.05357142857142" y="203.70079907417298" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2668">Feb</tspan><title>Feb</title></text><text id="SvgjsText2670" font-family="Helvetica, Arial, sans-serif" x="157.58035714285714" y="203.70079907417298" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2671">Mar</tspan><title>Mar</title></text><text id="SvgjsText2673" font-family="Helvetica, Arial, sans-serif" x="210.10714285714286" y="203.70079907417298" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2674">Apr</tspan><title>Apr</title></text><text id="SvgjsText2676" font-family="Helvetica, Arial, sans-serif" x="262.6339285714286" y="203.70079907417298" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2677">May</tspan><title>May</title></text><text id="SvgjsText2679" font-family="Helvetica, Arial, sans-serif" x="315.16071428571433" y="203.70079907417298" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2680">Jun</tspan><title>Jun</title></text><text id="SvgjsText2682" font-family="Helvetica, Arial, sans-serif" x="367.68750000000006" y="203.70079907417298" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2683">Jul</tspan><title>Jul</title></text></g></g><g id="SvgjsG2686" class="apexcharts-grid"><g id="SvgjsG2687" class="apexcharts-gridlines-horizontal"><line id="SvgjsLine2689" x1="0" y1="0" x2="367.6875" y2="0" stroke="#eceef1" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2690" x1="0" y1="43.675199768543244" x2="367.6875" y2="43.675199768543244" stroke="#eceef1" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2691" x1="0" y1="87.35039953708649" x2="367.6875" y2="87.35039953708649" stroke="#eceef1" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2692" x1="0" y1="131.02559930562973" x2="367.6875" y2="131.02559930562973" stroke="#eceef1" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2693" x1="0" y1="174.70079907417298" x2="367.6875" y2="174.70079907417298" stroke="#eceef1" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG2688" class="apexcharts-gridlines-vertical"></g><line id="SvgjsLine2695" x1="0" y1="174.70079907417298" x2="367.6875" y2="174.70079907417298" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine2694" x1="0" y1="1" x2="0" y2="174.70079907417298" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG2633" class="apexcharts-area-series apexcharts-plot-series"><g id="SvgjsG2634" class="apexcharts-series" seriesName="seriesx1" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath2656" d="M 0 174.70079907417298L 0 113.55551939821244C 18.384375 113.55551939821244 34.14241071428572 126.65807932877541 52.526785714285715 126.65807932877541C 70.91116071428571 126.65807932877541 86.66919642857144 87.3503995370865 105.05357142857143 87.3503995370865C 123.43794642857142 87.3503995370865 139.19598214285713 122.29055935192109 157.58035714285714 122.29055935192109C 175.96473214285714 122.29055935192109 191.72276785714286 34.9401598148346 210.10714285714286 34.9401598148346C 228.49151785714287 34.9401598148346 244.24955357142858 104.82047944450379 262.63392857142856 104.82047944450379C 281.01830357142853 104.82047944450379 296.7763392857143 65.51279965281486 315.1607142857143 65.51279965281486C 333.54508928571425 65.51279965281486 349.303125 91.71791951394081 367.6875 91.71791951394081C 367.6875 91.71791951394081 367.6875 91.71791951394081 367.6875 174.70079907417298M 367.6875 91.71791951394081z" fill="url(#SvgjsLinearGradient2652)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskoquz95g5)" pathTo="M 0 174.70079907417298L 0 113.55551939821244C 18.384375 113.55551939821244 34.14241071428572 126.65807932877541 52.526785714285715 126.65807932877541C 70.91116071428571 126.65807932877541 86.66919642857144 87.3503995370865 105.05357142857143 87.3503995370865C 123.43794642857142 87.3503995370865 139.19598214285713 122.29055935192109 157.58035714285714 122.29055935192109C 175.96473214285714 122.29055935192109 191.72276785714286 34.9401598148346 210.10714285714286 34.9401598148346C 228.49151785714287 34.9401598148346 244.24955357142858 104.82047944450379 262.63392857142856 104.82047944450379C 281.01830357142853 104.82047944450379 296.7763392857143 65.51279965281486 315.1607142857143 65.51279965281486C 333.54508928571425 65.51279965281486 349.303125 91.71791951394081 367.6875 91.71791951394081C 367.6875 91.71791951394081 367.6875 91.71791951394081 367.6875 174.70079907417298M 367.6875 91.71791951394081z" pathFrom="M -1 218.37599884271623L -1 218.37599884271623L 52.526785714285715 218.37599884271623L 105.05357142857143 218.37599884271623L 157.58035714285714 218.37599884271623L 210.10714285714286 218.37599884271623L 262.63392857142856 218.37599884271623L 315.1607142857143 218.37599884271623L 367.6875 218.37599884271623"></path><path id="SvgjsPath2657" d="M 0 113.55551939821244C 18.384375 113.55551939821244 34.14241071428572 126.65807932877541 52.526785714285715 126.65807932877541C 70.91116071428571 126.65807932877541 86.66919642857144 87.3503995370865 105.05357142857143 87.3503995370865C 123.43794642857142 87.3503995370865 139.19598214285713 122.29055935192109 157.58035714285714 122.29055935192109C 175.96473214285714 122.29055935192109 191.72276785714286 34.9401598148346 210.10714285714286 34.9401598148346C 228.49151785714287 34.9401598148346 244.24955357142858 104.82047944450379 262.63392857142856 104.82047944450379C 281.01830357142853 104.82047944450379 296.7763392857143 65.51279965281486 315.1607142857143 65.51279965281486C 333.54508928571425 65.51279965281486 349.303125 91.71791951394081 367.6875 91.71791951394081" fill="none" fill-opacity="1" stroke="#696cff" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskoquz95g5)" pathTo="M 0 113.55551939821244C 18.384375 113.55551939821244 34.14241071428572 126.65807932877541 52.526785714285715 126.65807932877541C 70.91116071428571 126.65807932877541 86.66919642857144 87.3503995370865 105.05357142857143 87.3503995370865C 123.43794642857142 87.3503995370865 139.19598214285713 122.29055935192109 157.58035714285714 122.29055935192109C 175.96473214285714 122.29055935192109 191.72276785714286 34.9401598148346 210.10714285714286 34.9401598148346C 228.49151785714287 34.9401598148346 244.24955357142858 104.82047944450379 262.63392857142856 104.82047944450379C 281.01830357142853 104.82047944450379 296.7763392857143 65.51279965281486 315.1607142857143 65.51279965281486C 333.54508928571425 65.51279965281486 349.303125 91.71791951394081 367.6875 91.71791951394081" pathFrom="M -1 218.37599884271623L -1 218.37599884271623L 52.526785714285715 218.37599884271623L 105.05357142857143 218.37599884271623L 157.58035714285714 218.37599884271623L 210.10714285714286 218.37599884271623L 262.63392857142856 218.37599884271623L 315.1607142857143 218.37599884271623L 367.6875 218.37599884271623"></path><g id="SvgjsG2635" class="apexcharts-series-markers-wrap" data:realIndex="0"><g id="SvgjsG2637" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskoquz95g5)"><circle id="SvgjsCircle2638" r="6" cx="0" cy="113.55551939821244" class="apexcharts-marker no-pointer-events wxublme9m" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="0" j="0" index="0" default-marker-size="6"></circle><circle id="SvgjsCircle2639" r="6" cx="52.526785714285715" cy="126.65807932877541" class="apexcharts-marker no-pointer-events wh5s96aqj" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="1" j="1" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2640" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskoquz95g5)"><circle id="SvgjsCircle2641" r="6" cx="105.05357142857143" cy="87.3503995370865" class="apexcharts-marker no-pointer-events wv5ea9gvh" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="2" j="2" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2642" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskoquz95g5)"><circle id="SvgjsCircle2643" r="6" cx="157.58035714285714" cy="122.29055935192109" class="apexcharts-marker no-pointer-events w5ujllgz6" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="3" j="3" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2644" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskoquz95g5)"><circle id="SvgjsCircle2645" r="6" cx="210.10714285714286" cy="34.9401598148346" class="apexcharts-marker no-pointer-events wf2ntr123" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="4" j="4" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2646" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskoquz95g5)"><circle id="SvgjsCircle2647" r="6" cx="262.63392857142856" cy="104.82047944450379" class="apexcharts-marker no-pointer-events wyjxj2c6y" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="5" j="5" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2648" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskoquz95g5)"><circle id="SvgjsCircle2649" r="6" cx="315.1607142857143" cy="65.51279965281486" class="apexcharts-marker no-pointer-events wnyhty691g" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="6" j="6" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2650" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskoquz95g5)"><circle id="SvgjsCircle2651" r="6" cx="367.6875" cy="91.71791951394081" class="apexcharts-marker no-pointer-events w0o6i7r2v" stroke="#696cff" fill="#ffffff" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="7" j="7" index="0" default-marker-size="6"></circle></g></g></g><g id="SvgjsG2636" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine2696" x1="0" y1="0" x2="367.6875" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2697" x1="0" y1="0" x2="367.6875" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG2698" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG2699" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG2700" class="apexcharts-point-annotations"></g><rect id="SvgjsRect2701" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-zoom-rect"></rect><rect id="SvgjsRect2702" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-selection-rect"></rect></g><rect id="SvgjsRect2629" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG2684" class="apexcharts-yaxis" rel="0" transform="translate(-8, 0)"><g id="SvgjsG2685" class="apexcharts-yaxis-texts-g"></g></g><g id="SvgjsG2627" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 107.5px;"></div><div class="apexcharts-tooltip apexcharts-theme-light" style="left: 64.5268px; top: 130.158px;"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">Jan</div><div class="apexcharts-tooltip-series-group apexcharts-active" style="order: 1; display: flex;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(105, 108, 255);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">series-1: </span><span class="apexcharts-tooltip-text-y-value">21</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light" style="left: 28.0768px; top: 186.701px;"><div class="apexcharts-xaxistooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px; min-width: 24.1875px;">Jan</div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                          <div class="d-flex justify-content-center pt-4 gap-2">
                            <div class="flex-shrink-0" style="position: relative;">
                              <div id="expensesOfWeek" style="min-height: 57.7px;"><div id="apexchartsvpwbnbbt" class="apexcharts-canvas apexchartsvpwbnbbt apexcharts-theme-light" style="width: 60px; height: 57.7px;"><svg id="SvgjsSvg2420" width="60" height="57.7" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG2422" class="apexcharts-inner apexcharts-graphical" transform="translate(-10, -10)"><defs id="SvgjsDefs2421"><clipPath id="gridRectMaskvpwbnbbt"><rect id="SvgjsRect2424" width="86" height="87" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskvpwbnbbt"></clipPath><clipPath id="nonForecastMaskvpwbnbbt"></clipPath><clipPath id="gridRectMarkerMaskvpwbnbbt"><rect id="SvgjsRect2425" width="84" height="89" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><g id="SvgjsG2426" class="apexcharts-radialbar"><g id="SvgjsG2427"><g id="SvgjsG2428" class="apexcharts-tracks"><g id="SvgjsG2429" class="apexcharts-radialbar-track apexcharts-track" rel="1"><path id="apexcharts-radialbarTrack-0" d="M 40 18.098170731707313 A 21.901829268292687 21.901829268292687 0 1 1 39.99617740968999 18.098171065291247" fill="none" fill-opacity="1" stroke="rgba(236,238,241,0.85)" stroke-opacity="1" stroke-linecap="round" stroke-width="2.0408536585365864" stroke-dasharray="0" class="apexcharts-radialbar-area" data:pathOrig="M 40 18.098170731707313 A 21.901829268292687 21.901829268292687 0 1 1 39.99617740968999 18.098171065291247"></path></g></g><g id="SvgjsG2431"><g id="SvgjsG2435" class="apexcharts-series apexcharts-radial-series" seriesName="seriesx1" rel="1" data:realIndex="0"><path id="SvgjsPath2436" d="M 40 18.098170731707313 A 21.901829268292687 21.901829268292687 0 1 1 22.2810479140526 52.873572242130095" fill="none" fill-opacity="0.85" stroke="rgba(105,108,255,0.85)" stroke-opacity="1" stroke-linecap="round" stroke-width="4.081707317073173" stroke-dasharray="0" class="apexcharts-radialbar-area apexcharts-radialbar-slice-0" data:angle="234" data:value="65" index="0" j="0" data:pathOrig="M 40 18.098170731707313 A 21.901829268292687 21.901829268292687 0 1 1 22.2810479140526 52.873572242130095"></path></g><circle id="SvgjsCircle2432" r="18.881402439024395" cx="40" cy="40" class="apexcharts-radialbar-hollow" fill="transparent"></circle><g id="SvgjsG2433" class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)" style="opacity: 1;"><text id="SvgjsText2434" font-family="Helvetica, Arial, sans-serif" x="40" y="45" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#697a8d" class="apexcharts-text apexcharts-datalabel-value" style="font-family: Helvetica, Arial, sans-serif;">$65</text></g></g></g></g><line id="SvgjsLine2437" x1="0" y1="0" x2="80" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2438" x1="0" y1="0" x2="80" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line></g><g id="SvgjsG2423" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend"></div></div></div>
                            <div class="resize-triggers"><div class="expand-trigger"><div style="width: 61px; height: 59px;"></div></div><div class="contract-trigger"></div></div></div>
                            <div>
                              <p class="mb-n1 mt-1">Expenses This Week</p>
                              <small class="text-muted">$39 less than last week</small>
                            </div>
                          </div>
                        <div class="resize-triggers"><div class="expand-trigger"><div style="width: 386px; height: 377px;"></div></div><div class="contract-trigger"></div></div></div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--/ Expense Overview -->

                <!-- Transactions -->
                <div class="col-md-6 col-lg-4 order-2 mb-4">
                  <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between">
                      <h5 class="card-title m-0 me-2">Transactions</h5>
                      <div class="dropdown">
                        <button class="btn p-0" type="button" id="transactionID" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="transactionID">
                          <a class="dropdown-item" href="javascript:void(0);">Last 28 Days</a>
                          <a class="dropdown-item" href="javascript:void(0);">Last Month</a>
                          <a class="dropdown-item" href="javascript:void(0);">Last Year</a>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <ul class="p-0 m-0">
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <img src="../assets/img/icons/unicons/paypal.png" alt="User" class="rounded">
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <small class="text-muted d-block mb-1">Paypal</small>
                              <h6 class="mb-0">Send money</h6>
                            </div>
                            <div class="user-progress d-flex align-items-center gap-1">
                              <h6 class="mb-0">+82.6</h6>
                              <span class="text-muted">USD</span>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <img src="../assets/img/icons/unicons/wallet.png" alt="User" class="rounded">
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <small class="text-muted d-block mb-1">Wallet</small>
                              <h6 class="mb-0">Mac'D</h6>
                            </div>
                            <div class="user-progress d-flex align-items-center gap-1">
                              <h6 class="mb-0">+270.69</h6>
                              <span class="text-muted">USD</span>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <img src="../assets/img/icons/unicons/chart.png" alt="User" class="rounded">
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <small class="text-muted d-block mb-1">Transfer</small>
                              <h6 class="mb-0">Refund</h6>
                            </div>
                            <div class="user-progress d-flex align-items-center gap-1">
                              <h6 class="mb-0">+637.91</h6>
                              <span class="text-muted">USD</span>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <img src="../assets/img/icons/unicons/cc-success.png" alt="User" class="rounded">
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <small class="text-muted d-block mb-1">Credit Card</small>
                              <h6 class="mb-0">Ordered Food</h6>
                            </div>
                            <div class="user-progress d-flex align-items-center gap-1">
                              <h6 class="mb-0">-838.71</h6>
                              <span class="text-muted">USD</span>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <img src="../assets/img/icons/unicons/wallet.png" alt="User" class="rounded">
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <small class="text-muted d-block mb-1">Wallet</small>
                              <h6 class="mb-0">Starbucks</h6>
                            </div>
                            <div class="user-progress d-flex align-items-center gap-1">
                              <h6 class="mb-0">+203.33</h6>
                              <span class="text-muted">USD</span>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex">
                          <div class="avatar flex-shrink-0 me-3">
                            <img src="../assets/img/icons/unicons/cc-warning.png" alt="User" class="rounded">
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <small class="text-muted d-block mb-1">Mastercard</small>
                              <h6 class="mb-0">Ordered Food</h6>
                            </div>
                            <div class="user-progress d-flex align-items-center gap-1">
                              <h6 class="mb-0">-92.45</h6>
                              <span class="text-muted">USD</span>
                            </div>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!--/ Transactions -->
              </div>
            </div>
            <!-- / Content -->

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                  ©
                  <script>
                    document.write(new Date().getFullYear());
                  </script>2023
                  , made with ❤️ by
                  <a href="https://themeselection.com" target="_blank" class="footer-link fw-bolder">ThemeSelection</a>
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
    <script src="../assets/vendor/libs/apex-charts/apexcharts.js"></script>

    <!-- Main JS -->
    <script src="../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../assets/js/dashboards-analytics.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async="" defer="" src="https://buttons.github.io/buttons.js"></script>
  

<svg id="SvgjsSvg1283" width="2" height="0" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" style="overflow: hidden; top: -100%; left: -100%; position: absolute; opacity: 0;"><defs id="SvgjsDefs1284"></defs><polyline id="SvgjsPolyline1285" points="0,0"></polyline><path id="SvgjsPath1286" d="M-1 218.37599884271623L-1 218.37599884271623C-1 218.37599884271623 52.526785714285715 218.37599884271623 52.526785714285715 218.37599884271623C52.526785714285715 218.37599884271623 105.05357142857143 218.37599884271623 105.05357142857143 218.37599884271623C105.05357142857143 218.37599884271623 157.58035714285714 218.37599884271623 157.58035714285714 218.37599884271623C157.58035714285714 218.37599884271623 210.10714285714286 218.37599884271623 210.10714285714286 218.37599884271623C210.10714285714286 218.37599884271623 262.63392857142856 218.37599884271623 262.63392857142856 218.37599884271623C262.63392857142856 218.37599884271623 315.1607142857143 218.37599884271623 315.1607142857143 218.37599884271623C315.1607142857143 218.37599884271623 367.6875 218.37599884271623 367.6875 218.37599884271623C367.6875 218.37599884271623 367.6875 218.37599884271623 367.6875 218.37599884271623 "></path></svg></body>
</html>