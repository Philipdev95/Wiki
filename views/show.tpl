<!DOCTYPE html>
<head>
    <title>
        WIKIDIKI | Update
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../static/uppgift5.css" type="text/css">
</head>
<body>
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
            </a><br>
            <a href="/edit/{{title}}" id="update">
                REDIGERA ARTIKEL
            </a>
        </div>
    </header>
    <div id="wrapper">
        <div id="main">
            <h2>{{ title }}</h2>
            <p>{{ contents }}</p>
            <hr class="starthr">
        </div>
    <footer>
            <p>@Made by PdV</p>
    </footer>
    </div>
</body>