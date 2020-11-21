<%@page language="java" pageEncoding="utf-8" %>
<html>
<head>
    <script type="text/javascript">
        function showJson( ) {
            //定义user json对象
            var user={
                "username":"tom",
                "age":20,
                "info":{"tel":"123","phone":"2201245"},
                "address":[
                    {"city":"beijin","post":"1000"},
                    {"city":"xiangy","post":"4400"}
                ]
            }
            //获取对象属性值
            // alert(user.username);
            // alert(user.info.phone);
            // alert(user.address[0].city);

            //重新赋值
            user.age=21;
            alert(user.age);

            //json对象转字符串
            alert(user);
            var str = JSON.stringify(user);
            alert(str);

            //字符串转json
            var s='{"name":"zhangsan","age":"26"}';

            var json = JSON.parse(s);
            alert(json.name);

        }
    </script>
</head>
<body>
<button onclick="showJson()">点我</button>
<%--<input type="button" onclick="showJson()" value="点我"/>--%>
</body>
<script>

</script>
</html>
