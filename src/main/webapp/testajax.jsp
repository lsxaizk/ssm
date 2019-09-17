<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/12 0012
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Title</title>
    <script ></script>
    <script>
        function ajaxFunction() {
            var xmlHttp;
            try{
                xmlHttp=new XMLHttpRequest();
            }
            catch (e) {
                try{
                    xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
                }
                catch (e) {
                    try{
                        xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    catch (e) {}
                }
            }
            return xmlHttp;
        }
        //执行get请求
        function get() {
            //创建XMLHttpRequest对象
             var request=ajaxFunction();
            //发送请求
            //参数1：请求类型 GET 或者POST
            //参数2：请求的路径
            //参数3：是否异步 true 或者false
             request.open("GET","ajax/testgetAjax01?name=lsx&age=18",true);
            request.onreadystatechange =function () {
                if(request.readyState==4 && request.status ==200){
                    alert(request.responseText);
                }
            }
             request.send();
        }

        function post() {
            var requset=ajaxFunction();

            requset.open("POST","ajax/testgetAjax02",true);
            request.onreadystatechange =function () {
                if(request.readyState==4 && request.status ==200){
                    alert(request.responseText);
                }
            }
            requset.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
            requset.send("name=abao&age=19");
        }
    </script>
</head>
<body>
    <a href="" onclick="get()">使用Ajax方式发送Get请求</a>
    <a href="" onclick="post()">使用Ajax方式发送Post请求</a>
</body>
</html>
