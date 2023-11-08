import os

from datetime import datetime

from flask import Flask, render_template
import yaml


config = yaml.safe_load(open("config.yml", "r", encoding="utf-8"))

print(config)

app = Flask("gb_homepage")

@app.route("/")
def sobre():
    return render_template("sobre.html", config=config, year=datetime.now().year, page_name="Sobre mim")

@app.route("/interesses")
def interesses():
    return render_template("interesses.html", config=config, year=datetime.now().year, page_name="Interesses")

@app.route("/recursos")
def recursos():
    return render_template("recursos.html", config=config, year=datetime.now().year, page_name="Recursos")

app.run(host="0.0.0.0", port=8081)


