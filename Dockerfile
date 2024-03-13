FROM python:3.11

WORKDIR /app
COPY . .

RUN python -m venv venv
RUN venv/bin/pip install --upgrade pip
RUN venv/bin/pip install -r requirements.txt

EXPOSE 5000

CMD . venv/bin/activate && exec python run.py