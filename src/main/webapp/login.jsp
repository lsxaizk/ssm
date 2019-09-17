<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/13 0013
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Title</title>
    <script type="text/javascript">
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
        
        function checkUserName() {
            //获取输入框的值document 整个网页
            var name = document.getElementById("name").value;
            //1.创建对象
            var request=ajaxFunction();
            //2.发送请求
            request.open("POST","ajax/testajaxname",true);
            //注册状态改变监听，获取服务器传送过来的数据
            request.onreadystatechange=function(){
                if(request.readyState==4 && request.status==200){
                    //alert(request.responseText);
                    var isExsit=request.responseText;
                    if(isExsit==0){
                        alert("用户名可用");
                        document.getElementById("span01").innerHTML="<font color='green'>用户名可用</font>";
                    }
                    else{
                        alert("用户名不可用");
                        document.getElementById("span01").innerHTML="<font color='red'>用户名不可用</font>";
                    }
                }
            };

            request.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
            request.send("name="+name);
        }

        
    </script>
</head>
<body>
    <table border="1" width="500">
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="name" id="name" onblur="checkUserName()"><span id="span01"></span></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input type="password" name=""></td>
        </tr>
        <tr>
            <td>邮箱：</td>
            <td><input type="email" name=""></td>
        </tr>
        <tr>
            <td>简介：</td>
            <td><input type="text" name=""></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="注册"></td>
        </tr>
    </table>

</body>
</html>
