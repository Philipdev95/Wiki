<!DOCTYPE html>
<html>
    <head>
        <title>WIKIDIKI | Skapa Artikel</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="../static/uppgift5.css" type="text/css">
    </head>
    <body style="text-align:center">
        <header>
            <img id="loga" alt="loga" src="../static/wikilogoblack.png">
            <a href="/"><h1>WIKIDIKI</h1></a>
            <hr>
            <h6>Cool Kids Never Die</h6>
            <div id="menu">
                <a href="http://localhost:8080/" id="start">
                    STARTSIDAN
                </a>
                <br>
                <a href="#">
                    LÄGG TILL ARTIKEL
                </a>
            </div>
        </header>
        <div id="artikelinput">
            <h2 id="add">Lägg till artikel</h2>
            <form action="/update/" method="post">
              
                <input name="title" placeholder="Titel" value="{{ title }}"><br>
                
                <textarea rows="17" cols="70" name="contents" id="text" placeholder="Artikeltext här">
                {{ contents }}
                </textarea><br>
                
                <input type="submit" value="Spara Innehåll">
            </form>
        </div>
    </body>
</html>