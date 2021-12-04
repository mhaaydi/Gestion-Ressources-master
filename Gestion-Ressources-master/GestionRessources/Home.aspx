<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="GestionRessources.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset ="utf-8"/>
    <meta name ="viewport" content="width=device-width, intial-scale=1"/>
    <title>Univesité Skyline</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet"/>
     <link rel="stylesheet" href="css/fa/all.css"/>
    <script defer src="css/js/all.js" ></script>
    <link rel="stylesheet" href="css/Index.css"  />
    <link rel="stylesheet" href="css/About.css"  />
    <link rel="stylesheet" href="css/Contact.css" />
   
    </head>
<body> 
        <header>
            <h2>Université NBBK </h2>
            <nav>
                   <li><a href="Home.aspx">Acceuil</a> </li> 
                    <li><a href="#">A propos</a> </li>
                    <li><a href="Contact.aspx">Contact</a> </li>
                    <li><a href="Login.aspx">Connexion</a> </li>
            </nav>
            </header>
            
            <section class="hero">
            <div class="background-image" style="background-image: url('images/outside.png')"></div>
                <div class="hero-content-area">
                <h1>Université NBBK </h1>
                    <h3> Attachée au pouvoir de transformation de l’éducation et de la recherche,
                        ainsi qu’au développement et au soutien de nos étudiants et de notre personnel</h3>
                <a href="#" class="btn">Savoir plus</a>
            </div>
                
            </section>
        
       <section >
           <div class="container">
                <h1 class="title">ABOUT US</h1>
                <h2 class="description"></h2>
            <div class="row">
                <div class="col-3">
                    <span style="color: #FC6F72;">Portfolio</span>
                    <a href="#"><i class="fa fa-briefcase fa-5x" aria-hidden="true"></i></a>
                </div>
                <div class="col-3">
                    <span style="color: #A6CB5D;">Services</span>
                    <a href="#"><i class="fa fa-cogs fa-5x" aria-hidden="true"></i>
                </a></div>
                <div class="col-3">
                    <span style="color: #EDC677;">Contact</span>
                    <a href="#"><i class="fa fa-globe fa-5x" aria-hidden="true"></i></a></div>

            </div>

            </div>
    </section>

        
        
        
        <section class="contact">
		    <div class="section">
              <div class="top-border left"></div>
              <div class="top-border right"></div>
              <h1>CONTACTEZ-NOUS</h1>
              <p>Envoyez vos besoins et inp>
                <a href="#">CONTACTEZ-NOUS</a>
            </div>
	</section>

	<footer>
		<ul>
			<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
			<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
			<li><a href="#"><i class="fa fa-snapchat-square"></i></a></li>
			<li><a href="#"><i class="fa fa-pinterest-square"></i></a></li>
			<li><a href="#"><i class="fa fa-github-square"></i></a></li>
		</ul>
		<p>Made by NBBK</p>
		<p></p>
	</footer>
        
    </body>
</html>
