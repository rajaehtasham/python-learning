# 05 - Django Basics

Django practice code from Mosh Hamedani's 
Django Tutorial for Beginners (1hr YouTube video)

## What I learned
- Django project vs app structure
- URLs and views (request/response cycle)
- Models and database
- Django admin panel
- Templates and rendering HTML
- pipenv virtual environment setup

## Project created
- storefront — first Django project
  - playground app
  - basic views and URLs
  - first model registered in admin

## Commands learned
```bash
pipenv install django
pipenv shell
django-admin startproject storefront .
python manage.py startapp playground
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser
python manage.py runserver
```

## Next step
Building a complete Online Marketplace project
using Django — check Python-Portfolio repo