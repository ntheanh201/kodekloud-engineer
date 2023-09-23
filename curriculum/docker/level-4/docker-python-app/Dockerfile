FROM python:3.9

COPY src .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8087

CMD ["python", "server.py"]