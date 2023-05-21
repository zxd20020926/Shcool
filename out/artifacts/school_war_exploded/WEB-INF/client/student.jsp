<%@ page import="com.ecut.pojo.Score" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getContextPath();
%>
<html>
<head>
    <title>学生主页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link rel="stylesheet" href="<%=path%>/static/css/bootstrap.css">
<%--    <link rel="stylesheet" href="bootstrap4/css/bootstrap.css">--%>

    <script src="<%=path%>/static/js/jquery-3.6.0.js"></script>
<%--    <script src="bootstrap4/js/jquery-3.6.0.js"></script>--%>

    <script src="<%=path%>/static/js/bootstrap.js"></script>
<%--    <script src="bootstrap4/js/bootstrap.js"></script>--%>
    <!-- <link rel="stylesheet" href="./css/index6.css" /> -->

    <link rel="stylesheet" type="text/css" href="<%=path%>/static/css/bootstrap-grid.css" />
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/calendar/css/zzsc.css" />
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/calendar/css/dcalendar.picker.css" />

    <style>
        .btn:focus,
        .btn:active:focus,
        .btn.active:focus,
        .btn.focus,
        .btn:active.focus,
        .btn.active.focus {
            outline: none;
        }
        .arrow {
            width: 0;
            height: 0;
            border-right: 0.4rem solid transparent;
            border-top: 0.4rem solid white;
            border-left: 0.4rem solid transparent;
            border-bottom: 0.4rem solid transparent;
            position: relative;
            top: 1rem;
        }
        .outarrow {
            position: absolute;
            width: 0;
        }
        .inarrow {
            display: none;
            position: relative;
            width: 80px;
            background: #fff;
            border-radius: 3px;
            top: 0.1rem;
            right: 4rem;
        }
        .inarrow a {
            font-size: 0.95rem;
            display: block;
            text-align: center;
            color: gray;
            text-decoration: none;
        }
        .navbar-brand1:hover .inarrow {
            display: block;
        }
        .navbar-brand1 {
            cursor: default;

        }
        .inarrow a:hover {
            color: #fff;
            background-color: #17a2b8;
            border-radius: 3px;
        }
    </style>


    <title>six</title>
</head>

<body class="px-4" style="margin-top: 62px;">

<nav class="navbar navbar-expand-md bg-primary fixed-top rounded  shadow-lg justify-content-between" style="margin:0 24px;height: 52px;">
    <a class="navbar-brand  text-white" href="<%=path%>/index">首页</a>

    <form class="form-inline  my-lg-0">
        <span class="border-0  my-sm-0 text-white mr-2 py-1 navbar-brand1"
        >欢迎您，${sessionScope.student.studentName}
          <span class="outarrow">
            <span class="arrow"></span>
            <div class="inarrow">
              <a href="#">个人中心</a>
              <a href="<%=path%>/studentlogout">注销</a>
            </div>
          </span>
        </span>
    </form>
</nav>

<div class="row">
    <!-- 左侧边导航栏 -->
    <div class="col-2">
        <div class="list-group" id="list-tab" role="tablist">

            <c:if test="${studentTitle==0}">
                <a class="list-group-item list-group-item-action active" id="list-index-list" data-toggle="list"
                   href="#list-index" role="tab" aria-controls="index">学生主页</a>
            </c:if>
            <c:if test="${studentTitle!=0}">
                <a class="list-group-item list-group-item-action" id="list-index-list" data-toggle="list"
                   href="#list-index" role="tab" aria-controls="index">学生主页</a>
            </c:if>

            <c:if test="${studentTitle==1}">
                <a class="list-group-item list-group-item-action active" id="list-profile-list" data-toggle="list"
                   href="#list-profile" role="tab" aria-controls="profile">个人信息查询</a>
            </c:if>
            <c:if test="${studentTitle!=1}">
                <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list"
                   href="#list-profile" role="tab" aria-controls="profile">个人信息查询</a>
            </c:if>

            <c:if test="${studentTitle==2}">
                <a class="list-group-item list-group-item-action active" id="list-messages-list" data-toggle="list"
                   href="#list-messages" onclick="window.location.href='<%=path%>/client/s/studentcourse/${2}'" role="tab" aria-controls="messages">我的课程</a>
            </c:if>
            <c:if test="${studentTitle!=2}">
                <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list"
                   href="#list-messages" onclick="window.location.href='<%=path%>/client/s/studentcourse/${2}'" role="tab" aria-controls="messages">我的课程</a>
            </c:if>

            <c:if test="${studentTitle==3}">
                <a class="list-group-item list-group-item-action active" id="list-settings-list" data-toggle="list"
                   href="#list-settings" onclick="window.location.href='<%=path%>/client/s/studentscore/${3}'" role="tab" aria-controls="settings">成绩查询</a>
            </c:if>
            <c:if test="${studentTitle!=3}">
                <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list"
                   href="#list-settings" onclick="window.location.href='<%=path%>/client/s/studentscore/${3}'" role="tab" aria-controls="settings">成绩查询</a>
            </c:if>

            <c:if test="${studentTitle==4}">
                <a class="list-group-item list-group-item-action active" id="list-session-list" data-toggle="list"
                   href="#list-session" onclick="window.location.href='<%=path%>/client/s/studentchoosecourse/${4}'" role="tab" aria-controls="session">我的选课</a>
            </c:if>
            <c:if test="${studentTitle!=4}">
                <a class="list-group-item list-group-item-action" id="list-session-list" data-toggle="list"
                   href="#list-session" onclick="window.location.href='<%=path%>/client/s/studentchoosecourse/${4}'" role="tab" aria-controls="session">我的选课</a>
            </c:if>


        </div>
    </div>
    <!-- 右侧内容部分 -->
    <div class="col-10">

        <div class="tab-content" id="nav-tabContent">
            <!-- 首页开始 -->
            <c:if test="${studentTitle==0}">
            <div class="tab-pane fade show active clear-both" id="list-index" role="tabpanel"
            </c:if>
            <c:if test="${studentTitle!=0}">
            <div class="tab-pane fade  clear-both" id="list-index" role="tabpanel"
            </c:if>
                 aria-labelledby="list-index-list">
                <!-- 日历 -->
                <div class="float-left">
                    <iframe src="<%=path%>/static/calendar/index.html" frameborder="0"
                            style="width: 520px; height: 560px;"></iframe>
                </div>
                <script type="text/javascript">
                    $("#mydatepicker").dcalendarpicker();
                    $("#mydatepicker2").dcalendarpicker({
                        format: "yyyy-mm-dd",
                    });
                    $("#mycalendar").dcalendar();
                </script>
                <!-- 可视化图表 -->
                <div class="float-right pr-5">
                    <h3 class="pt-3">DataStatistics</h3>
                    <div id="container" style="height:520px;width: 600px;"></div>
                </div>

                <script type="text/javascript"
                        src="https://cdn.jsdelivr.net/npm/echarts@5.2.2/dist/echarts.min.js"></script>
                <script type="text/javascript">
                    var dom = document.getElementById("container");
                    var myChart = echarts.init(dom);
                    var app = {};
                    var option;
                    option = {
                        tooltip: {
                            trigger: 'axis',
                            axisPointer: {
                                type: 'shadow'
                            }
                        },
                        grid: {
                            left: '3%',
                            right: '4%',
                            bottom: '3%',
                            containLabel: true
                        },
                        xAxis: [
                            {
                                type: 'category',
                                data: ['教师总数', '学生总数', '课程总数', '班级总数'],
                                axisTick: {
                                    alignWithLabel: true
                                }
                            }
                        ],
                        yAxis: [
                            {
                                type: 'value'
                            }
                        ],
                        series: [
                            {
                                name: 'Direct',
                                type: 'bar',
                                barWidth: '60%',
                                // 柱状图中数据的设置【教师总数，学生总数，课程总数，班级总数】
                                data: [200, 265, 200, 374]
                            }
                        ]
                    };

                    if (option && typeof option === 'object') {
                        myChart.setOption(option);
                    }

                </script>

            </div>
            <!-- 首页结束 -->

            <!--  个人信息查询部分开始-->
            <c:if test="${studentTitle==1}">
            <div class="tab-pane fade show active" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
            </c:if>
            <c:if test="${studentTitle!=1}">
            <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
            </c:if>
                <div class="panel panel-default">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="#">学生主页</a></li>
                            <li class="breadcrumb-item" aria-current="page">个人信息查询</li>
                        </ol>
                    </nav>

                    <div class="row">
                        <div class="col-12 py-2">
                            <div class="row">
                                <div class="col-1 text-center">姓名：</div>
                                <div class="col-11">${sessionScope.student.studentName}</div>
                            </div>
                        </div>
                        <div class="col-6 py-2">
                            <div class="row">
                                <div class="col-2 text-center">学号：</div>
                                <div class="col-10">${sessionScope.student.studentId}</div>
                            </div>
                        </div>
                        <div class="col-6 py-2">
                            <div class="row">
                                <div class="col-2 text-center">性别：</div>
                                <div class="col-10">${sessionScope.student.studentGender}</div>
                            </div>
                        </div>
                        <div class="col-6 py-2">
                            <div class="row">
                                <div class="col-2 text-center">班级：</div>
                                <div class="col-10">${sessionScope.student.studentClassId}</div>
                            </div>
                        </div>
                        <div class="col-6 py-2">
                            <div class="row">
                                <div class="col-2 text-center">电话：</div>
                                <div class="col-10">${sessionScope.student.studentPhone}</div>
                            </div>
                        </div>
                        <div class="col-6 py-2">
                            <div class="row">
                                <div class="col-2 text-center">邮箱：</div>
                                <div class="col-10">${sessionScope.student.studentEmail}</div>
                            </div>
                        </div>
                        <div class="col-6 py-2">
                            <div class="row">
                                <div class="col-2 text-center">生源地：</div>
                                <div class="col-10">${sessionScope.student.studentAddress}</div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- 个人信息查询部分结束-->


            <!-- 课程查询部分开始-->
            <c:if test="${studentTitle==2}">
                <div class="tab-pane fade show active" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
             </c:if>
            <c:if test="${studentTitle!=2}">
                <div class="tab-pane fade " id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
             </c:if>
                <div class="panel panel-default">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="#">学生主页</a></li>
                            <li class="breadcrumb-item" aria-current="page">课程查询</li>
                        </ol>
                    </nav>
                    <div class="card">
                        <div class="card-header">
                            搜索
                        </div>

                        <div class="card-body">
                            <form role="form" class="form-inline" action="<%=path%>/client/s/queryForCourse">
                                <div class="form-group">
                                    <label for="name3">课程名</label>
                                    <input type="text" class="form-control mx-2" value="${courseSmall.courseName}" id="name3" name="courseName" placeholder="请输入名称" required/>
                                </div>
                                <div class="form-group mr-3">
                                    <label for="deph3">任课教师</label>
                                    <input type="text" class="form-control mx-2" value="${courseSmall.courseTeacher}" id="deph3" name="courseTeacher" placeholder="请输入教师姓名" required />
                                </div>
                                <div class="form-group mr-auto">
                                    <button type="submit" class="btn btn-primary">查询</button>
                                </div>

                            </form>


                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>课程号</th>
                                <th>课程名</th>
                                <th>任课教师</th>
                                <th>所属学期</th>
                                <th>状态</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${coursesByPage.lists}" var="course">
                                <tr>
                                    <td>${course.courseId}</td>
                                    <td>${course.courseName}</td>
                                    <td>${course.courseTeacher}</td>
                                    <td>${course.courseTerm}</td>
                                    <c:if test="${empty course.courseStatus}">
                                        <td>未修完</td>
                                    </c:if>
                                    <c:if test="${not empty course.courseStatus}">
                                        <td>已修完</td>
                                    </c:if>
                                </tr>
                            </c:forEach>
<%--                            <c:if test="${empty courses}">--%>
<%--                                <tr>--%>
<%--                                    <td>没有此课程</td>--%>
<%--                                </tr>--%>
<%--                            </c:if>--%>

                            </tbody>
                        </table>
                    </div>
                </div>
                 <c:if test="${empty flag}">
                     <%--教师页码显示--%>
                     <div class="btn-toolbar float-right" role="toolbar" aria-label="Toolbar with button groups">
                         <div class="btn-group mr-2" role="group" aria-label="First group">

                                 <%--首页按钮实现--%>
                             <c:if test="${coursesByPage.currPage==1}">
                                 <button type="button" class="btn btn-light" disabled>首页</button>
                             </c:if>
                             <c:if test="${coursesByPage.currPage!=1}">
                                 <button type="button" class="btn btn-light"
                                         onclick="window.location.href='<%=path%>/client/s/studentcourse/${2}?currPage=1'">首页</button>
                             </c:if>
                                 <%--首页按钮实现结束--%>
                                 <%--上一页实现按钮--%>
                             <c:if test="${coursesByPage.currPage==1}">
                                 <button type="button" class="btn btn-light" disabled>&laquo;</button>
                             </c:if>
                                 <%--当前页不等于1时--%>
                             <c:if test="${coursesByPage.currPage!=1}">
                                 <button type="button" class="btn btn-light"
                                         onclick="window.location.href='<%=path%>/client/s/studentcourse/${2}?currentPage=${coursesByPage.currPage-1}'">&laquo;</button>
                             </c:if>
                                 <%--上一页实现按钮结束--%>

                                 <%--显示五个页码开始--%>
                             <c:choose>
                                 <%--当总页码少于等于5时--%>
                                 <c:when test="${coursesByPage.totalPage<=5}">
                                     <c:set var="begin" value="1"/>
                                     <c:set var="end" value="${coursesByPage.totalPage}"/>
                                 </c:when>
                                 <%--当总页码大于5时--%>
                                 <c:when test="${coursesByPage.totalPage>5}">
                                     <c:choose>
                                         <%--当 当前页码小于等于3时--%>
                                         <c:when test="${coursesByPage.currPage<=3}">
                                             <c:set var="begin" value="1"/>
                                             <c:set var="end" value="5"/>
                                         </c:when>
                                         <%--当 当前页码大于总页码减2时--%>
                                         <c:when test="${coursesByPage.currPage>=coursesByPage.totalPage-2}">
                                             <c:set var="begin" value="${coursesByPage.totalPage-4}"/>
                                             <c:set var="end" value="${coursesByPage.totalPage}"/>
                                         </c:when>
                                         <%--其他情况--%>
                                         <c:otherwise>
                                             <c:set var="begin" value="${coursesByPage.currPage-2}"/>
                                             <c:set var="end" value="${coursesByPage.currPage+2}"/>
                                         </c:otherwise>
                                     </c:choose>
                                 </c:when>
                             </c:choose>
                             <c:forEach begin="${begin}" end="${end}" var="i">
                                 <c:if test="${coursesByPage.currPage!=i}">
                                     <button type="button" class="btn btn-light"
                                             onclick="window.location.href='<%=path%>/client/s/studentcourse/${2}?currentPage=${i}'">${i}</button>
                                 </c:if>
                                 <c:if test="${coursesByPage.currPage==i}">
                                     <button type="button" class="btn btn-primary">${i}</button>
                                 </c:if>
                             </c:forEach>
                                 <%--显示五个页码结束--%>

                                 <%--显示下一页按钮--%>
                             <c:if test="${coursesByPage.currPage==coursesByPage.totalPage}">
                                 <button type="button" class="btn btn-light" disabled>&raquo;</button>
                             </c:if>
                             <c:if test="${coursesByPage.currPage!=coursesByPage.totalPage}">
                                 <button type="button" class="btn btn-light"
                                         onclick="window.location.href='<%=path%>/client/s/studentcourse/${2}?currentPage=${coursesByPage.currPage+1}'">&raquo;</button>
                             </c:if>
                                 <%--显示下一页按钮结束--%>
                                 <%--显示末页按钮--%>
                             <c:if test="${coursesByPage.currPage==coursesByPage.totalPage}">
                                 <button type="button" class="btn btn-light" disabled>末页</button>
                             </c:if>
                             <c:if test="${coursesByPage.currPage!=coursesByPage.totalPage}">
                                 <button type="button" class="btn btn-light"
                                         onclick="window.location.href='<%=path%>/client/s/studentcourse/${2}?currentPage=${coursesByPage.totalPage}'">末页</button>
                             </c:if>
                                 <%--教师显示末页按钮结束--%>
                         </div>
                     </div>
                     <%--教师页码显示结束--%>
                 </c:if>
            </div>
            <!-- 课程查询部分结束-->


            <!-- 成绩查询部分开始-->
            <c:if test="${studentTitle==3}">
                 <div class="tab-pane fade show active" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
            </c:if>
            <c:if test="${studentTitle!=3}">
                 <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
            </c:if>
                <div class="panel panel-default">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="#">学生主页</a></li>
                            <li class="breadcrumb-item" aria-current="page">成绩查询</li>
                        </ol>
                    </nav>
                    <div class="card">
                        <div class="card-header">
                            搜索
                        </div>

                        <div class="card-body">
                            <form role="form" class="form-inline" action="<%=path%>/client/s/queryForScore">
                                <div class="form-group">
                                    <label for="name4">课程名</label>
                                    <input type="text" class="form-control mx-2" id="name4" value="${courseName}" name="courseName" placeholder="请输入名称" required/>
                                </div>
                                <div class="form-group mr-auto">
                                    <button type="submit" class="btn btn-primary">查询</button>
                                </div>

                            </form>


                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>课程号</th>
                                <th>课程名</th>
                                <th>所属学期</th>
                                <th>任科老师</th>
                                <th>成绩</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${scoreByPage.lists}" var="score">
                                <c:if test="${score.score<60}">
                                    <tr style="color: red!important;">
                                        <td>${score.courseId}</td>
                                        <td>${score.courseName}</td>
                                        <td>${score.courseTerm}</td>
                                        <td>${score.courseTeacher}</td>
                                        <td>${score.score}</td>
                                    </tr>
                                </c:if>
                                <c:if test="${score.score>=60}">
                                    <tr>
                                        <td>${score.courseId}</td>
                                        <td>${score.courseName}</td>
                                        <td>${score.courseTerm}</td>
                                        <td>${score.courseTeacher}</td>
                                        <td>${score.score}</td>
                                    </tr>
                                </c:if>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
                <c:if test="${empty flag}">
                    <%--教师页码显示--%>
                    <div class="btn-toolbar float-right" role="toolbar" aria-label="Toolbar with button groups">
                        <div class="btn-group mr-2" role="group" aria-label="First group">

                                <%--首页按钮实现--%>
                            <c:if test="${scoreByPage.currPage==1}">
                                <button type="button" class="btn btn-light" disabled>首页</button>
                            </c:if>
                            <c:if test="${scoreByPage.currPage!=1}">
                                <button type="button" class="btn btn-light"
                                        onclick="window.location.href='<%=path%>/client/s/studentscore/${3}?currPage=1'">首页</button>
                            </c:if>
                                <%--首页按钮实现结束--%>
                                <%--上一页实现按钮--%>
                            <c:if test="${scoreByPage.currPage==1}">
                                <button type="button" class="btn btn-light" disabled>&laquo;</button>
                            </c:if>
                                <%--当前页不等于1时--%>
                            <c:if test="${scoreByPage.currPage!=1}">
                                <button type="button" class="btn btn-light"
                                        onclick="window.location.href='<%=path%>/client/s/studentscore/${3}?currentPage=${scoreByPage.currPage-1}'">&laquo;</button>
                            </c:if>
                                <%--上一页实现按钮结束--%>

                                <%--显示五个页码开始--%>
                            <c:choose>
                                <%--当总页码少于等于5时--%>
                                <c:when test="${scoreByPage.totalPage<=5}">
                                    <c:set var="begin" value="1"/>
                                    <c:set var="end" value="${scoreByPage.totalPage}"/>
                                </c:when>
                                <%--当总页码大于5时--%>
                                <c:when test="${scoreByPage.totalPage>5}">
                                    <c:choose>
                                        <%--当 当前页码小于等于3时--%>
                                        <c:when test="${scoreByPage.currPage<=3}">
                                            <c:set var="begin" value="1"/>
                                            <c:set var="end" value="5"/>
                                        </c:when>
                                        <%--当 当前页码大于总页码减2时--%>
                                        <c:when test="${scoreByPage.currPage>=scoreByPage.totalPage-2}">
                                            <c:set var="begin" value="${scoreByPage.totalPage-4}"/>
                                            <c:set var="end" value="${scoreByPage.totalPage}"/>
                                        </c:when>
                                        <%--其他情况--%>
                                        <c:otherwise>
                                            <c:set var="begin" value="${scoreByPage.currPage-2}"/>
                                            <c:set var="end" value="${scoreByPage.currPage+2}"/>
                                        </c:otherwise>
                                    </c:choose>
                                </c:when>
                            </c:choose>
                            <c:forEach begin="${begin}" end="${end}" var="i">
                                <c:if test="${scoreByPage.currPage!=i}">
                                    <button type="button" class="btn btn-light"
                                            onclick="window.location.href='<%=path%>/client/s/studentscore/${3}?currentPage=${i}'">${i}</button>
                                </c:if>
                                <c:if test="${scoreByPage.currPage==i}">
                                    <button type="button" class="btn btn-primary">${i}</button>
                                </c:if>
                            </c:forEach>
                                <%--显示五个页码结束--%>

                                <%--显示下一页按钮--%>
                            <c:if test="${scoreByPage.currPage==scoreByPage.totalPage}">
                                <button type="button" class="btn btn-light" disabled>&raquo;</button>
                            </c:if>
                            <c:if test="${scoreByPage.currPage!=scoreByPage.totalPage}">
                                <button type="button" class="btn btn-light"
                                        onclick="window.location.href='<%=path%>/client/s/studentscore/${3}?currentPage=${scoreByPage.currPage+1}'">&raquo;</button>
                            </c:if>
                                <%--显示下一页按钮结束--%>
                                <%--显示末页按钮--%>
                            <c:if test="${scoreByPage.currPage==scoreByPage.totalPage}">
                                <button type="button" class="btn btn-light" disabled>末页</button>
                            </c:if>
                            <c:if test="${scoreByPage.currPage!=scoreByPage.totalPage}">
                                <button type="button" class="btn btn-light"
                                        onclick="window.location.href='<%=path%>/client/s/studentscore/${3}?currentPage=${scoreByPage.totalPage}'">末页</button>
                            </c:if>
                                <%--教师显示末页按钮结束--%>
                        </div>
                    </div>
                    <%--教师页码显示结束--%>
                </c:if>
            </div>
            <!-- 成绩查询部分结束-->




            <!-- 我的选课部分开始 5-->
            <c:if test="${studentTitle==4}">
                <div class="tab-pane fade show active" id="list-session" role="tabpanel" aria-labelledby="list-session-list">
            </c:if>
            <c:if test="${studentTitle!=4}">
                <div class="tab-pane fade" id="list-session" role="tabpanel" aria-labelledby="list-session-list">
            </c:if>

                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item active"><a href="#">学生主页</a></li>
                        <li class="breadcrumb-item" aria-current="page">我的选课</li>
                    </ol>
                </nav>

                <div class="card">
                    <div class="card-header">
                        搜索
                    </div>
                    <div class="card-body">
                        <form role="form5" class="form-inline">
                            <div class="form-group">
                                <label for="name5">课程名称</label>
                                <input type="text" class="form-control mx-2" id="name5" placeholder="请输入名称"
                                       required />
                            </div>
                            <div class="form-group mr-auto">
                                <button type="submit" class="btn btn-primary">查询</button>
                            </div>

                        </form>
                        <!-- 添加弹框内容 -->
                        <div class="modal fade" id="exampleModal5" tabindex="-1" aria-labelledby="exampleModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel5">添加失物</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <form class="row" id="form55">
                                            <div class="form-group col-6">
                                                <label for="session-name5" class="col-form-label">失物名称</label>
                                                <input type="text" class="form-control" id="session-name5"
                                                       required>
                                            </div>
                                            <div class="form-group col-6">
                                                <label for="session-tel5" class="col-form-label">联系方式</label>
                                                <input type="text" class="form-control" id="session-tel5"
                                                       required>
                                            </div>
                                            <div class="form-group col-12">
                                                <label for="session-text5" class="col-form-label">失物描述</label>
                                                <textarea class="form-control" id="session-text5" rows="6"></textarea>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="reset" class="btn btn-secondary" form="form55">重置</button>
                                        <button type="submit" class="btn btn-primary " form="form55">提交</button>
                                    </div>
                                </div>
                            </div>
                        </div><!-- 添加弹框内容 -->
                    </div>

                </div>
                <!-- 数据表 -->
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>课程号</th>
                            <th>课程名</th>
                            <th>任课教师</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${studentChooseCoursesByPage.lists}" var="course">
                            <tr>
                                <td>${course.courseId}</td>
                                <td>${course.courseName}</td>
                                <td>${course.courseTeacher}</td>
                                <td>

                                    <div class="btn-group">

                                        <c:if test="${course.flag!=1}">
                                        <input type="button" class="btn btn-light" data-toggle="modal"
                                               data-target="#exampleModal55${course.courseId}"   id="change01${course.courseId}" value="选课"/>
                                        </c:if>
                                        <c:if test="${course.flag==1}">
                                            <input type="button" class="btn btn-light" data-toggle="modal"
                                                   data-target="#exampleModal55${course.courseId}" style="color: red;"   id="change01${course.courseId}" value="退选" />
                                        </c:if>




                                        <%--放js验证--%>
                                        <div class="modal fade" id="exampleModal55${course.courseId}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel55${course.courseId}">选课信息</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form class="row" id="xform01">
                                                            <div class="form-group col-6">
                                                                <label for="score-name3${course.courseId}" class="col-form-label">所选课程</label>
                                                                <input type="text" class="form-control" value="${course.courseName}" id="score-name3${course.courseId}" required disabled>
                                                            </div>
                                                            <div class="form-group col-6">
                                                                <label for="score-tel3${course.courseId}" class="col-form-label">任课教师</label>
                                                                <input type="text" class="form-control" value="${course.courseTeacher}"  id="score-tel3${course.courseId}" required disabled>
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                                                        <c:if test="${course.flag!=1}">
                                                            <button type="submit" class="btn btn-primary"  id="sure${course.courseId}" onclick="window.location.href='<%=path%>/client/s/choosecourse/4?courseId=${course.courseId}'">确定</button>

                                                        </c:if>
                                                        <c:if test="${course.flag==1}">
                                                            <button type="submit" class="btn btn-primary"  id="sure${course.courseId}" onclick="window.location.href='<%=path%>/client/s/delchoosecourse/4?courseId=${course.courseId}'">确定</button>

                                                        </c:if>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        <script type="text/javascript">

                            <%--$(function (){--%>
                            <%--    $("#change01${course.courseId}").click(function (){--%>
                            <%--        console.log(11);--%>
                            <%--        var val = $("#change01${course.courseId}").val();--%>
                            <%--        console.log(val);--%>
                            <%--    })--%>
                            <%--})--%>
                            <%--window.onload=function()//防止使用标签在定义之前--%>
                            <%--{--%>
                            <%--    var aaa=document.getElementById("sure${course.courseId}");//绑定事件--%>
                            <%--    var bbb=document.getElementById("change01${course.courseId}");//绑定事件--%>
                            <%--    aaa.onclick=function()--%>
                            <%--    {--%>
                            <%--        var bbb=document.getElementById("change01${course.courseId}").value;--%>
                            <%--        if(bbb==="选课")--%>
                            <%--        {--%>
                            <%--            bbb.value="退选";--%>
                            <%--        }--%>
                            <%--        if(bbb==="退选")--%>
                            <%--        {--%>
                            <%--            bbb.value="选课";--%>
                            <%--        }--%>
                            <%--    }--%>
                            <%--    bbb.onclick=function()--%>
                            <%--    {--%>
                            <%--        var bbb=document.getElementById("change01${course.courseId}").value;--%>
                            <%--        if(bbb==="退选")--%>
                            <%--        {--%>
                            <%--            document.getElementById("exampleModalLabel55${course.courseId}").innerHTML = "退课信息";--%>
                            <%--        }--%>
                            <%--    }--%>

                            <%--}--%>
                        </script>
                        </tbody>
                    </table>
                </div>
                <c:if test="${empty flag}">
                    <%--教师页码显示--%>
                    <div class="btn-toolbar float-right" role="toolbar" aria-label="Toolbar with button groups">
                        <div class="btn-group mr-2" role="group" aria-label="First group">

                                <%--首页按钮实现--%>
                            <c:if test="${studentChooseCoursesByPage.currPage==1}">
                                <button type="button" class="btn btn-light" disabled>首页</button>
                            </c:if>
                            <c:if test="${studentChooseCoursesByPage.currPage!=1}">
                                <button type="button" class="btn btn-light"
                                        onclick="window.location.href='<%=path%>/client/s/studentchoosecourse/${4}?currPage=1'">首页</button>
                            </c:if>
                                <%--首页按钮实现结束--%>
                                <%--上一页实现按钮--%>
                            <c:if test="${studentChooseCoursesByPage.currPage==1}">
                                <button type="button" class="btn btn-light" disabled>&laquo;</button>
                            </c:if>
                                <%--当前页不等于1时--%>
                            <c:if test="${studentChooseCoursesByPage.currPage!=1}">
                                <button type="button" class="btn btn-light"
                                        onclick="window.location.href='<%=path%>/client/s/studentchoosecourse/${4}?currentPage=${studentChooseCoursesByPage.currPage-1}'">&laquo;</button>
                            </c:if>
                                <%--上一页实现按钮结束--%>

                                <%--显示五个页码开始--%>
                            <c:choose>
                                <%--当总页码少于等于5时--%>
                                <c:when test="${studentChooseCoursesByPage.totalPage<=5}">
                                    <c:set var="begin" value="1"/>
                                    <c:set var="end" value="${studentChooseCoursesByPage.totalPage}"/>
                                </c:when>
                                <%--当总页码大于5时--%>
                                <c:when test="${studentChooseCoursesByPage.totalPage>5}">
                                    <c:choose>
                                        <%--当 当前页码小于等于3时--%>
                                        <c:when test="${studentChooseCoursesByPage.currPage<=3}">
                                            <c:set var="begin" value="1"/>
                                            <c:set var="end" value="5"/>
                                        </c:when>
                                        <%--当 当前页码大于总页码减2时--%>
                                        <c:when test="${studentChooseCoursesByPage.currPage>=studentChooseCoursesByPage.totalPage-2}">
                                            <c:set var="begin" value="${studentChooseCoursesByPage.totalPage-4}"/>
                                            <c:set var="end" value="${studentChooseCoursesByPage.totalPage}"/>
                                        </c:when>
                                        <%--其他情况--%>
                                        <c:otherwise>
                                            <c:set var="begin" value="${studentChooseCoursesByPage.currPage-2}"/>
                                            <c:set var="end" value="${studentChooseCoursesByPage.currPage+2}"/>
                                        </c:otherwise>
                                    </c:choose>
                                </c:when>
                            </c:choose>
                            <c:forEach begin="${begin}" end="${end}" var="i">
                                <c:if test="${studentChooseCoursesByPage.currPage!=i}">
                                    <button type="button" class="btn btn-light"
                                            onclick="window.location.href='<%=path%>/client/s/studentchoosecourse/${4}?currentPage=${i}'">${i}</button>
                                </c:if>
                                <c:if test="${studentChooseCoursesByPage.currPage==i}">
                                    <button type="button" class="btn btn-primary">${i}</button>
                                </c:if>
                            </c:forEach>
                                <%--显示五个页码结束--%>

                                <%--显示下一页按钮--%>
                            <c:if test="${studentChooseCoursesByPage.currPage==studentChooseCoursesByPage.totalPage}">
                                <button type="button" class="btn btn-light" disabled>&raquo;</button>
                            </c:if>
                            <c:if test="${studentChooseCoursesByPage.currPage!=studentChooseCoursesByPage.totalPage}">
                                <button type="button" class="btn btn-light"
                                        onclick="window.location.href='<%=path%>/client/s/studentchoosecourse/${4}?currentPage=${studentChooseCoursesByPage.currPage+1}'">&raquo;</button>
                            </c:if>
                                <%--显示下一页按钮结束--%>
                                <%--显示末页按钮--%>
                            <c:if test="${studentChooseCoursesByPage.currPage==studentChooseCoursesByPage.totalPage}">
                                <button type="button" class="btn btn-light" disabled>末页</button>
                            </c:if>
                            <c:if test="${studentChooseCoursesByPage.currPage!=studentChooseCoursesByPage.totalPage}">
                                <button type="button" class="btn btn-light"
                                        onclick="window.location.href='<%=path%>/client/s/studentchoosecourse/${4}?currentPage=${studentChooseCoursesByPage.totalPage}'">末页</button>
                            </c:if>
                                <%--教师显示末页按钮结束--%>
                        </div>
                    </div>
                    <%--教师页码显示结束--%>
                </c:if>
                </div>
                <!-- 事务招领部分结束 5-->
            <!-- 事务招领部分结束 5-->


            <!-- 二手市场部分开始 6-->

                <c:if test="${studentTitle==5}">
                <div class="tab-pane fade show active" id="list-market" role="tabpanel" aria-labelledby="list-market-list">
                </c:if>
                <c:if test="${studentTitle!=5}">
                <div class="tab-pane fade" id="list-market" role="tabpanel" aria-labelledby="list-market-list">
                </c:if>
                <div class="panel panel-default">

                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="#">学生主页</a></li>
                            <li class="breadcrumb-item" aria-current="page">失物招领</li>
                        </ol>
                    </nav>

                    <div class="card">
                        <div class="card-header">
                            搜索
                        </div>

                        <div class="card-body">
                            <form role="form" class="form-inline">
                                <div class="form-group">
                                    <label for="name6">商品名称</label>
                                    <input type="text" class="form-control mx-2" id="name6" placeholder="请输入名称" />
                                </div>
                                <div class="form-group mr-auto">
                                    <button type="submit" class="btn btn-primary">查询</button>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#exampleModal6" data-whatever="@mdo">添加</button>
                                </div>
                            </form>
                            <!-- 弹框内容 -->
                            <div class="modal fade" id="exampleModal6" tabindex="-1"
                                 aria-labelledby="exampleModalLabel6" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel6">添加商品</h5>
                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form class="row" id="form6">
                                                <div class="form-group col-12">
                                                    <label for="market-name6" class="col-form-label">名称</label>
                                                    <input type="text" class="form-control" id="market-name6">
                                                </div>
                                                <div class="form-group col-6">
                                                    <label for="market-price6" class="col-form-label">价格</label>
                                                    <div class="input-group mb-3">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">￥</span>
                                                        </div>
                                                        <input type="text" class="form-control" id="market-price6">
                                                    </div>
                                                </div>
                                                <div class="form-group col-6">
                                                    <label for="market-tel6" class="col-form-label">联系方式</label>
                                                    <input type="text" class="form-control" id="market-tel6">
                                                </div>
                                                <div class="form-group col-12">
                                                    <label for="market-text6" class="col-form-label">商品描述</label>
                                                    <textarea class="form-control" id="market-text6" rows="6"></textarea>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="reset" class="btn btn-secondary" form="form6">重置</button>
                                            <button type="submit" class="btn btn-primary "
                                                    data-dismiss="modal" form="form6">提交</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>物品名称</th>
                                <th>物品价格</th>
                                <th>物品状态</th>
                                <th>联系方式</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>华强北手机</td>
                                <td>￥199999999999</td>
                                <td>在售</td>
                                <td>19999999999</td>
                                <td>
                                    <div class="btn-group">
                                        <a href="" class="btn btn-light">购买</a>

                                        <button type="button" class="btn btn-light mx-2" data-toggle="modal"
                                                data-target="#exampleModal66">查看</button>


                                        <div class="modal fade" id="exampleModal66" tabindex="-1"
                                             aria-labelledby="exampleModalLabel66" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel66">查看商品信息
                                                        </h5>
                                                        <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>

                                                    <div class="modal-body">
                                                        <form class="row" id="form66">
                                                            <div class="form-group col-6">
                                                                <label for="market-name66" class="col-form-label">名称</label>
                                                                <input type="text" class="form-control" id="market-name66" disabled>
                                                            </div>
                                                            <div class="form-group col-6">
                                                                <label for="market-tel6" class="col-form-label">联系方式</label>
                                                                <input type="text" class="form-control" id="market-tel66" disabled>
                                                            </div>
                                                            <div class="form-group col-6">
                                                                <label for="market-price66" class="col-form-label">价格</label>
                                                                <div class="input-group mb-3">
                                                                    <div class="input-group-prepend">
                                                                        <span class="input-group-text">￥</span>
                                                                    </div>
                                                                    <input type="text" class="form-control" id="market-price66" disabled>
                                                                </div>
                                                            </div>
                                                            <div class="form-group col-6">
                                                                <label for="market-active66" class="col-form-label">商品状态</label>
                                                                <input type="text" class="form-control" id="market-active66" disabled>
                                                            </div>
                                                            <div class="form-group col-12">
                                                                <label for="market-text66" class="col-form-label">商品描述</label>
                                                                <textarea class="form-control" id="market-text66" rows="6" disabled></textarea>
                                                            </div>
                                                        </form>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal" form="form66">关闭</button>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
                </div>
            <!-- 二手市场部分结束 6-->


            <!-- 活动报名部分开始 7-->

            <c:if test="${studentTitle==6}">
            <div class="tab-pane fade show active" id="list-activity" role="tabpanel" aria-labelledby="list-activity-list">
            </c:if>
            <c:if test="${studentTitle!=6}">
            <div class="tab-pane fade" id="list-activity" role="tabpanel" aria-labelledby="list-activity-list">
            </c:if>
                <div class="panel panel-default">

                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="#">学生主页</a></li>
                            <li class="breadcrumb-item" aria-current="page">活动报名</li>
                        </ol>
                    </nav>
                    <div class="card">
                        <div class="card-header">
                            搜索
                        </div>

                        <div class="card-body">
                            <form role="form7" class="form-inline">
                                <div class="form-group">
                                    <label for="name7">活动名称</label>
                                    <input type="text" class="form-control mx-2" id="name7" placeholder="请输入名称" />
                                </div>
                                <div class="form-group mr-3">
                                    <label for="type7">类型</label>
                                    <select class="form-control mx-2" id="type7">
                                        <option selected value="community">社团活动</option>
                                        <option value="lecture">讲座活动</option>
                                        <option value="recruitment">招聘活动</option>
                                        <option value="others">其他</option>
                                    </select>
                                </div>
                                <div class="form-group mr-auto">
                                    <button type="submit" class="btn btn-primary">查询</button>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#activityModal7" data-whatever="@mdo">添加</button>
                                </div>
                            </form>
                            <!-- 添加弹框内容 -->
                            <div class="modal fade" id="activityModal7" tabindex="-1"
                                 aria-labelledby="activityModalLabel7" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="activityModalLabel7">添加活动</h5>
                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form class="row" id="form7">
                                                <div class="form-group col-6">
                                                    <label for="activity-name7" class="col-form-label">活动名称</label>
                                                    <input type="text" class="form-control" id="activity-name7" required>
                                                </div>
                                                <div class="form-group col-6">
                                                    <label for="activity-type7" class="col-form-label">活动类型</label>
                                                    <select class="form-control mx-2" id="activity-type7">
                                                        <option selected value="community">社团活动</option>
                                                        <option value="lecture">讲座活动</option>
                                                        <option value="recruitment">招聘活动</option>
                                                        <option value="others">其他</option>
                                                    </select>
                                                </div>

                                                <div class="form-group col-12">
                                                    <label for="activity-text7" class="col-form-label">活动描述</label>
                                                    <textarea class="form-control" id="activity-text7" rows="6" required></textarea>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="reset" class="btn btn-secondary" form="form7">重置</button>
                                            <button type="submit" class="btn btn-primary" form="form7">提交</button>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- 添加弹框内容 -->

                        </div>
                    </div>
                    <!-- 数据表 -->
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th class="col-1">活动编号</th>
                                <th class="col-1">活动名称</th>
                                <th class="col-1">活动类型</th>
                                <th class="col-6">活动描述</th>
                                <th class="col-3">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>01</td>
                                <td>名称</td>
                                <td>社团活动</td>
                                <td>
                                    <div class="text-truncate" style="width: 640px; overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">什么社团在哪干了什么,什么社团在哪干了什么,
                                        什么社团在哪干了什么,什么社团在哪干了什么,什么社团在哪干了什么
                                        什么社团在哪干了什么,什么社团在哪干了什么,什么社团在哪干了什么
                                    </div>
                                </td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-light" data-toggle="modal"
                                                data-target="#activityModal77">修改</button>

                                        <a href="" class="btn btn-light mx-2">详情</a>

                                        <a href="" class="btn btn-danger">删除</a>
                                        <!-- 修改弹框内容 -->
                                        <div class="modal fade" id="activityModal77" tabindex="-1"
                                             aria-labelledby="activityModalLabel77" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="activityModalLabel77">修改活动</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form class="row" id="form77">
                                                            <div class="form-group col-6">
                                                                <label for="activity-name77" class="col-form-label">活动名称</label>
                                                                <input type="text" class="form-control" id="activity-name77" required>
                                                            </div>
                                                            <div class="form-group col-6">
                                                                <label for="activity-type77" class="col-form-label">活动类型</label>
                                                                <select class="form-control mx-2" id="activity-type77">
                                                                    <option selected value="community">社团活动</option>
                                                                    <option value="lecture">讲座活动</option>
                                                                    <option value="recruitment">招聘活动</option>
                                                                    <option value="others">其他</option>
                                                                </select>
                                                            </div>

                                                            <div class="form-group col-12">
                                                                <label for="activity-text77" class="col-form-label">活动描述</label>
                                                                <textarea class="form-control" id="activity-text77" rows="6" required></textarea>
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="reset" class="btn btn-secondary" form="form77">重置</button>
                                                        <button type="submit" class="btn btn-primary" form="form77">提交</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><!-- 修改弹框内容 -->

                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div><!-- 数据表 -->

                </div>
            </div>
            <!-- 活动报名部分结束 7-->


            <!-- 发布需求部分开始 8-->
            <c:if test="${studentTitle==7}">
            <div class="tab-pane fade show active" id="list-need" role="tabpanel" aria-labelledby="list-need-list">
            </c:if>
            <c:if test="${studentTitle!=7}">
            <div class="tab-pane fade" id="list-need" role="tabpanel" aria-labelledby="list-need-list">
            </c:if>
                <div class="panel panel-default">

                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="#">学生主页</a></li>
                            <li class="breadcrumb-item" aria-current="page">发布需求</li>
                        </ol>
                    </nav>

                    <div class="card">
                        <div class="card-header">
                            搜索
                        </div>

                        <div class="card-body">
                            <form role="form" class="form-inline">
                                <div class="form-group">
                                    <label for="name8">名称</label>
                                    <input type="text" class="form-control mx-2" id="name8" placeholder="请输入名称" />
                                </div>
                                <div class="form-group mr-3">
                                    <label for="recipient-type8" class="col-form-label">类型</label>
                                    <select class="form-control mx-2" id="recipient-type8">
                                        <option selected value="takeout">代取外卖</option>
                                        <option value="courier">代领快递</option>
                                        <option value="items">代买日货</option>
                                        <option value="others">其他</option>
                                    </select>
                                </div>
                                <div class="form-group mr-auto">
                                    <button type="submit" class="btn btn-primary">查询</button>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#exampleModal8" data-whatever="@mdo">添加</button>
                                </div>
                            </form>
                            <!-- 弹框内容 -->
                            <div class="modal fade" id="exampleModal8" tabindex="-1"
                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel8">添加需求</h5>
                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form class="row" id="form8">
                                                <div class="form-group col-12">
                                                    <label for="recipient-name8" class="col-form-label">需求名称</label>
                                                    <input type="text" class="form-control" id="recipient-name8">
                                                </div>
                                                <div class="form-group col-6">
                                                    <label for="recipient-num8" class="col-form-label">联系方式</label>
                                                    <input type="text" class="form-control" id="recipient-num8">
                                                </div>
                                                <div class="form-group col-6">
                                                    <label for="recipient-year8" class="col-form-label">需求类型</label>
                                                    <select class="form-control" id="recipient-year8">
                                                        <option selected value="takeout">代取外卖</option>
                                                        <option value="courier">代领快递</option>
                                                        <option value="items">代买日货</option>
                                                        <option value="others">其他</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-12">
                                                    <label for="recipient-text8" class="col-form-label">需求描述</label>
                                                    <textarea class="form-control" id="recipient-text8" rows="6"></textarea>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="reset" class="btn btn-secondary" form="form8">重置</button>
                                            <button type="button" class="btn btn-primary " form="form8"
                                                    data-dismiss="modal">提交</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
            <!-- 发布需求部分结束 8-->

            <!-- 广场交流部分开始 9-->
            <c:if test="${studentTitle==8}">
            <div class="tab-pane fade show active" id="list-park" role="tabpanel" aria-labelledby="list-park-list">
            </c:if>
            <c:if test="${studentTitle!=8}">
            <div class="tab-pane fade" id="list-park" role="tabpanel" aria-labelledby="list-park-list">
            </c:if>
                <div class="panel panel-default">

                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="#">学生主页</a></li>
                            <li class="breadcrumb-item" aria-current="page">广场交流</li>
                        </ol>
                    </nav>

                    <div class="card">
                        <div class="card-header">
                            搜索
                        </div>

                        <div class="card-body">
                            <form role="form" class="form-inline">
                                <div class="form-group">
                                    <label for="name9">名称</label>
                                    <input type="text" class="form-control mx-2" id="name9" placeholder="请输入名称" />
                                </div>
                                <div class="form-group mr-auto">
                                    <button type="submit" class="btn btn-primary">查询</button>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#exampleModal9" data-whatever="@mdo">添加</button>
                                </div>
                            </form>
                            <!-- 弹框内容 -->
                            <div class="modal fade" id="exampleModal9" tabindex="-1"
                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel9">添加需求</h5>
                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form class="row" id="form9">
                                                <div class="form-group col-12">
                                                    <label for="recipient-name9" class="col-form-label">需求名称</label>
                                                    <input type="text" class="form-control" id="recipient-name9">
                                                </div>
                                                <div class="form-group col-6">
                                                    <label for="recipient-num9" class="col-form-label">联系方式</label>
                                                    <input type="text" class="form-control" id="recipient-num9">
                                                </div>
                                                <div class="form-group col-6">
                                                    <label for="recipient-year9" class="col-form-label">需求类型</label>
                                                    <select class="form-control" id="recipient-year9">
                                                        <option selected value="takeout">代取外卖</option>
                                                        <option value="courier">代领快递</option>
                                                        <option value="items">代买日货</option>
                                                        <option value="others">其他</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-12">
                                                    <label for="recipient-text9" class="col-form-label">需求描述</label>
                                                    <textarea class="form-control" id="recipient-text9" rows="6"></textarea>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="reset" class="btn btn-secondary" form="form9">重置</button>
                                            <button type="button" class="btn btn-primary " form="form9"
                                                    data-dismiss="modal">提交</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
            <!-- 广场交流部分结束 9-->

            <!-- 收藏管理部分开始 10-->
            <c:if test="${studentTitle==9}">
            <div class="tab-pane fade show active" id="list-collection" role="tabpanel" aria-labelledby="list-collection-list">
            </c:if>
            <c:if test="${studentTitle!=9}">
            <div class="tab-pane fade" id="list-collection" role="tabpanel" aria-labelledby="list-collection-list">
            </c:if>
                <div class="panel panel-default">

                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="#">学生主页</a></li>
                            <li class="breadcrumb-item" aria-current="page">收藏管理</li>
                        </ol>
                    </nav>
                    <div class="card">
                        <div class="card-header">
                            搜索
                        </div>
                        <div class="card-body">
                            <form role="form10" class="form-inline">
                                <div class="form-group">
                                    <label for="name10">名称</label>
                                    <input type="text" class="form-control mx-2" id="name10" placeholder="请输入名称" />
                                </div>
                                <div class="form-group mr-auto">
                                    <button type="submit" class="btn btn-primary">查询</button>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
            <!-- 收藏管理部分结束 10-->
        </div>
    </div>

</div>
</body>

</html>
