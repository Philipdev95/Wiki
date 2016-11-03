<!DOCTYPE html>
<head>
    <title>
        WIKIDIKI
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../static/uppgift5.css" type="text/css">
</head>
<body style="text-align: center">
    <header>
        <a id="logolink" href="/">
            <img id="loga" alt="loga" src="../static/wikilogoblack.png">
    </a>
        <a href="/">
            <h1>WIKIDIKI</h1>
        </a>
        <hr>
        <h6>Cool Kids Never Die</h6>
        <div id="menu">
            <a href="/" class="start">
                STARTSIDAN
            </a>
            <br>
            <a href="/add/">
                LÄGG TILL ARTIKEL
            </a>
            
        </div>
    </header>
    <div id="wrapper">
        
        <div id="main">
            <div id="firstbox">
                <h2>
                    Artiklar
                </h2>
                <hr class="starthr">
                % for wikisida in wikisidor:
                    <a href="wiki/{{ wikisida[:-4] }}/">{{ wikisida[:-4] }}</a>
                % end
            </div>
        </div>
    <footer>
        <p>@Made by PdV</p>
    </footer>
    </div>
    
</body>