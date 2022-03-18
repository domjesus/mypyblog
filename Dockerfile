FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /pyblog

COPY requirements.txt /pyblog/
RUN pip install -r requirements.txt
# RUN mkdir pyblog
COPY . /pyblog/

# CMD ["django-admin startproject mypyblog ."]
#  "python manage.py runserver 0.0.0.0:8000"]
# CMD ["chown -R $USER:$USER ."]