#-*- coding: utf-8 -*-
#Author: Philip de Vries
#Uppgift 5
from bottle import route, run, template, Bottle, request, redirect, static_file
from os import listdir

@route('/')
def list_articles():
    """
    Detta är startsidan, här visas en lista av länkar till alla artiklar i wiki-foldern.
    """
    return template("index", wikisidor = listdir("wiki"))


@route('/wiki/<pagename>/')
def show_article(pagename):
    """
    Visar en enda artikel som laddas från en textfil.
    """
    article_name = open("wiki/" + pagename + ".txt")
    return template("show.tpl", title = pagename, contents = article_name.read())


@route('/add/')
def add_form():
    return template("add_form")


@route('/edit/<pagename>')
def edit_form(pagename):
    """
    Visar ett formulär där vi låter användaren skriva in en titel och innehåll för en artikel. 
    
    Detta formuläret borde skickas via POST till /update/.
    """
    
    textfil = open("wiki/" + pagename + ".txt")
    title = pagename
    return template("edit_form", title = pagename, contents = textfil.read())
    
@route('/update/', method="POST")
def update_article():
    """
    Tar emot title och innehåll från formuläret och skapar/updaterar en text för den sidan.
    """
    title = request.forms.get("title")
    try:
        try1 = open("wiki/" + title + ".txt", "r")
        try1.close()
    except IOError:
        try1 = open("wiki/" + title + ".txt", "w")
        try1.close()
    #f = file
    f = open("wiki/" + title + ".txt", "w")
    
    article = request.forms.get("contents")
    f.write(article)
    f.close()
    return template("update", title = title)

@route('/static/<filepath:path>')
def css(filepath):
    return static_file(filepath, root='static')

run(host='localhost', port=8080, debug=True)