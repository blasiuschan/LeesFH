<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LeesFamilyHome._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="jumbotron">
        <h1>Lee's Family Home</h1>
        <p class="lead">This site is Family Site. You can go anywhere if you are our family.</p>
        <p><a href="http://192.168.1.90:40780/default" class="btn btn-primary btn-lg">GO! Enjoy &raquo;</a></p>
    </div>

    <html>
<head>
    <title>Lees Family Home Slider</title>

    <link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/1/js-image-slider.js" type="text/javascript"></script>
    <link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body>

        
        <div id="sliderFrame">
        <div id="slider">
            <a href="http://www.naver.com" target="_blank">
                <img src="images/img1.jpg" alt="Welcome to Lee's Family Home" />
            </a>
            <img src="images/img2.jpg" alt="" />
            <img src="images/img3.jpg" alt="Pure Family. Yes!! Look at home. Join us." />
            <img src="images/img4.jpg" alt="#htmlcaption" />
            <img src="images/img5.jpg" />
        </div>
        <div id="htmlcaption" style="display: none;">
            <em>HTML</em> caption. Link to <a href="http://www.google.com/">Google</a>.
        </div>
    </div>

    <div class="div2">

    </div>
</body>
</html>


    <div class="row">
        <div class="col-md-4">
            <h2>Financial</h2>
            <p>
                Our financial detail is here. Some of secret has it. 
            </p>
            <p>
                <a class="btn btn-default" href="Financial.aspx">Go more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
