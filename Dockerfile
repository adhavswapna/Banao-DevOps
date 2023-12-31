FROM python:3.8-slim

WORKDIR /app

RUN pip install django

COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt




EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
