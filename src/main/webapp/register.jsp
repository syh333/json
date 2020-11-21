<%@page language="java" pageEncoding="utf-8" %>
<html>
<head>
    <%--引入js文件--%>
    <script src="js/prototype.js" type="text/javascript"></script>
    <script type="text/javascript">
    function  checkuname() {
        var uname = document.getElementById("uname").value;
        var url="CheckUname?uname="+uname;
        console.log(url);

        //使用prototype框架提供的ajax异步请求servlet
        new Ajax.Request(url,{
            method:"post",
            onComplete:ok //请求成功后回调函数
        }); //两个参数：url,json格式数据

    }

    function ok(resp) {
        var result = resp.responseText;//接受响应的文本 获取结果字符串
        //字符串转json
        var j = JSON.parse(result);
        if(j.msg=="yes"){
            //已存在
            document.getElementById("sp").style.color="red";
            document.getElementById("sp").innerHTML="该账号已存在";
        }else{
            document.getElementById("sp").style.color="green";
            document.getElementById("sp").innerHTML="该账号可使用";
        }
    }
    </script>
</head>
<body>
<form method="post">
    用户名：<input type="text" name="uname" id="uname" onblur="checkuname()">
    <span id="sp" style="color: indianred"></span>
</form>
</body>
<script>

</script>
</html>
