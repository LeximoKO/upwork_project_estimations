
FROM python:3.9
ENV BASE_API_URL=https://langflow-bpxr.onrender.com/api/v1/process
ENV FLOW_ID=dde8d748-fb5a-4b4f-a4de-fa1a4f13c449
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["gunicorn", "-b", "0.0.0.0:5000", "wsgi:app"]
