FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
COPY connection.py read.py /app
RUN python3 -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["python", "read.py"]
