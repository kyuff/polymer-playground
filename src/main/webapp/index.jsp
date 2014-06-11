<%--
  User: swi
  Date: 11/06/14
  Time: 19.48
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="components/jquery/dist/jquery.js" type="application/javascript"></script>
    <script src="components/platform/platform.js" type="application/javascript"></script>

    <title>Polymer Playground example</title>
    <link rel="import" href="elements/hello-world/hello-world.html">

</head>
<body>

<div id="greetings">
    <hello-world name="Erik"></hello-world>
    <hello-world></hello-world>
</div>

<h1>Console</h1>

<div id="console"></div>

<script type="application/javascript">

    function logGreetings() {
        var names = "";
        $('hello-world').each(function (i, ele) {
            names += this.getAttribute("name") + "<br/>\n";
        });

        $("#console").html(names);
    }

    function addGreeting(name) {
        var g = new HelloWorld();
        g.setAttribute("name", name);
        $("#greetings").append(g);
    }

    $(document).ready(function () {
    });
    window.addEventListener('polymer-ready', function(e) {
        addGreeting("Per");
        logGreetings();
    });
</script>

</body>
</html>
