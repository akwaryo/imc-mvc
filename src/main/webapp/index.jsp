<%@ page language="java" pageEncoding="utf8" contentType="text/html;charset=UTF-8" %>
<html lang="pt-br">
    <head>
        <title>Cálculo IMC</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="assets/style.css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    </head>
    <body>
        <a href="https://github.com/akwaryo/imc" target="_blank">
            <img style="position: absolute; top: 0; right: 0; border: 0;" 
            src="https://camo.githubusercontent.com/38ef81f8aca64bb9a64448d0d70f1308ef5341ab/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f6461726b626c75655f3132313632312e706e67" 
            alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_darkblue_121621.png">
        </a>
        <div class="card">
            <form role="form" method="post" action="servletcontrole">
                <h2>Cálculo de IMC</h2><br>
                
                <label for="altura">Altura</label>
                <div class="insert">
                    <input type ="text" name="altura" maxlength="4" placeholder="0" value=${param.altura}>
                    <div class="ui-label">cm</div>
                </div>

                <label for="peso">Peso</label>
                <div class="insert">
                    <input type ="text" name="peso" maxlength="5" placeholder="0" value=${param.peso}>
                    <div class="ui-label">kg</div>
                </div>
                
                <label for="sexo">Sexo</label>
                <select name="sexo" name="select">
                    <option value="fem">Feminino</option>
                    <option value="mas">Masculino</option>
                </select>

                <button name="acao" value="Calcular">Calcular</button>
                <button id="limpar" name="limpar" onclick="refresh()" value="Limpar">Limpar</button>
            </form>
            <div id="message">
              <h1>${resultado}</h1>
              <h4>${message}</h4>
            </div>
        </div>
    </body>
    <script type="text/javascript" src="assets/script.js"></script>
</html>