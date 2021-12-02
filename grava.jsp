<!DOCTYPE html>
<html lang="pt_BR">
  <head>
    <!-- PAGE INFO-->
    <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Contatos</title>

    <!-- ICONES -->
    <link rel="stylesheet" href="assets/fonts/style.css" />

    <!-- SWIPER -->
    <link
      rel="stylesheet"
      href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />

    <!-- STILES -->
    <link rel="stylesheet" href="estilos/estilos.css" />
    
    

    <!--FONTES-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap"
      rel="stylesheet"
    />
    <style>
      #centralizar{
        text-align: center;
        position: center;
        height: 300px;
      }
      #container {
        width: 100vw;
        height: 100vh;
        background: ;
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
        }
    </style>
  </head>
    <body>
      <header id="header">
        <nav class="container">
         <a class="logo" href="#">Veu<span>Pinturas.</span> </a>
        </nav>
      </header>

        <div id="container">
            <div id="centralizar">
                <h2>Dados enviados com sucesso, em breve entraremos em contato!</h2>
                <a class="button" href="http://localhost:8080/Port/index.html#home">Voltar</a>
            </div>
        </div>
        
            
         
    </body>

</html>





<%@page language="java" import="java.sql.*" %>

<%
    String nome = request.getParameter("txtnome") ;
    String email = request.getParameter("txtemail") ;
    String telefone = request.getParameter("txttell") ;
    String sugestao = request.getParameter("txtsu") ;

    String banco = "contato" ;
    String url = "jdbc:mysql://localhost:3306/" + banco;
    String usuario = "root" ;
    String senha = "" ;

   String driver = "com.mysql.jdbc.Driver" ;

   Class.forName(driver) ;


   Connection conexao ;

   conexao = DriverManager.getConnection(url, usuario, senha) ;

   Statement stm = conexao.createStatement() ;

   String sql = "insert into contato (nome,email,telefone,sugestao) values ('"+ nome + "','" + email + "','" + telefone + "','"+ sugestao +"')" ;

  //out.print(sql) ;
   stm.executeUpdate(sql) ;

   conexao.close();
   stm.close();



%>

