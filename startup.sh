#!/bin/bash

# Instala las dependencias
pip install -r requirements.txt

# Inicia la aplicación con gunicorn y uvicorn
exec gunicorn -k uvicorn.workers.UvicornWorker -b 0.0.0.0:8080 main:app
