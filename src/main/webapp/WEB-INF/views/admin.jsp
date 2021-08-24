<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="header_admin.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>



<input type="checkbox"  id="sidebar-toggle">
    <div class="sidebar">
        <div class="slidebar-header">
            <h3 class="brand">
                <!-- <span class="ti-unlink"></span> -->
                <span>easywire</span>
            </h3>

            <label for="sidebar-toggle" class="ti-menu-alt"></label>
        </div>
        <div class="sidebar-menu">
            <ul>
                <li>
                    <a href="">
                        <span class="ti-home"></span>
                        <span>Home</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <span class="ti-face-smile"></span>
                        <span>Team</span>
                    </a>
                </li>
                <li>
                    <a href="adminhoadon">
                        <span class="ti-agenda"></span>
                        <span>Receipt</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <span class="ti-clipboard"></span>
                        <span>Leaves</span>
                    </a>
                </li>
                <li>
                    <a href="adminsanpham">
                        <span class="ti-folder"></span>
                        <span>Projects</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <span class="ti-time"></span>
                        <span>Timesheet</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <span class="ti-book"></span>
                        <span>Contacts</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <span class="ti-settings"></span>
                        <span>Account</span>
                    </a>
                </li>
            </ul>

        </div>

    </div>

    <div class="main-content">
        <header>
            <div class="search-wrapper">
                <span class="ti-search"></span>
                <input type="search" placeholder="Search">
            </div>
            <div class="social-icons">
                <span class="ti-bell"></span>
                <span class="ti-comment"></span>
                <div class="">


                </div>
            </div>
        </header>
        <main class="dash-title">
            <h2>Overview</h2>
            <div class="dash-cards">
                <div class="card-single">
                    <div class="card-body">
                        <span class="ti-briefcase"></span>
                        <div>
                            <h5>Account Balance</h5>
                            <h4>$30,695.45</h4>
                        </div>
                    </div> 
                    <div class="card-footer">
                        <a href="">View all</a>
                    </div>
                </div>
                <div class="card-single">
                    <div class="card-body">
                        <span class="ti-reload"></span>
                        <div>
                            <h5>Pending</h5>
                            <h4>$19,500.45</h4>
                        </div>
                    </div> 

                    <div class="card-footer">
                        <a href="">View all</a>
                    </div>
                </div>
                <div class="card-single">
                    <div class="card-body">
                        <span class="ti-check-box"></span>
                        <div>
                            <h5>Processed</h5>
                            <h4>$20,695.45</h4>
                        </div>
                    </div> 

                    <div class="card-footer">
                        <a href="">View all</a>
                    </div>
                </div>                
            </div>
            <section class="recent">
                <div class="activity-grid">
                    <div class="activity-card">
                        <h3>Recent activity</h3>
                        <table >
                            <thead>
                                <tr>
                                    <th>Project</th>
                                    <th>Start Date</th>
                                    <th>End Date</th>
                                    <th>Team</th>
                                    <th>Status</th>
                                </tr>
    
                            </thead>
                            <tbody>
                                <tr>
                                    <td>App Development</td>
                                    <td>15 Aug,2020</td>
                                    <td>15 Aug,2020</td>
                                    <td  class="td-team">
                                        <div class="img-1"></div>
                                        <div class="img-2"></div>
                                        <div class="img-3"></div>
                        
                                    </td>
                                    <td>
                                        <span class="badge success">
                                            Success
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Font-end Design</td>
                                    <td>15 Aug,2020</td>
                                    <td>15 Aug,2020</td>
                                    <td class="td-team">
                                        <div class="img-1"></div>
                                        <div class="img-2"></div>
                                        <div class="img-3"></div>
                        
                                    </td>
                                    <td>
                                        <span class="badge warning">
                                            Processing
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Web Development</td>
                                    <td>15 Aug,2020</td>
                                    <td>15 Aug,2020</td>
                                    <td  class="td-team">
                                        <div class="img-1"></div>
                                        <div class="img-2"></div>
                                        <div class="img-3"></div>
                        
                                    </td>
                                    <td>
                                        <span class="badge success">
                                            Success
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Web Development</td>
                                    <td>15 Aug,2020</td>
                                    <td>15 Aug,2020</td>
                                    <td  class="td-team">
                                        <div class="img-1"></div>
                                        <div class="img-2"></div>
                                        <div class="img-3"></div>
                        
                                    </td>
                                    <td>
                                        <span class="badge success">
                                            Success
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Web Development</td>
                                    <td>15 Aug,2020</td>
                                    <td>15 Aug,2020</td>
                                    <td  class="td-team">
                                        <div class="img-1"></div>
                                        <div class="img-2"></div>
                                        <div class="img-3"></div>
                        
                                    </td>
                                    <td>
                                        <span class="badge warning">
                                            Processing
                                        </span>
                                    </td>
                                </tr>
    
    
                            </tbody>
                        </table>
                    </div>

                    <!-- <div class="summary">
                        <div class="sumary-card">
                            <div class="sumary-single">
                                <span class="ti-id-badge"> </span>
                                <div>
                                    <h5>196</h5>
                                    <small>Number of staff</small>
                                </div>
                            </div>
                            <div class="sumary-single">
                                <span class="ti-calendar"> </span>
                                <div>
                                    <h5>16</h5>
                                    <small>Number of leave</small>
                                </div>
                            </div>
                            <div class="sumary-single">
                                <span class="ti-face-smile"> </span>
                                <div>
                                    <h5>12</h5>
                                    <small>Profile uodate request</small>
                                </div>
                            </div>

                        </div>
                        <div class="bday-card">
                            
                            <div class="bday-flex">
                                <div class="bday-img"></div>
                                <div class="baday-info ">
                                    <h5>Dwayne F. Sanders</h5>
                                    <small> Brithday Today</small>                            
                                </div>
                            </div>
                            <div class="text-center">
                                <button>
                                    <span class="ti-gift"></span>
                                    Wish him
                                </button>
                            </div>

                        </div>
                    </div> -->
                </div>     
            </section>
        </main>
       
    </div>



<jsp:include page="footer.jsp" />
</body>
</html>