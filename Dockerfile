# syntax=docker/dockerfile:1

# 1️⃣ Base image
FROM python:3.11-slim

# 2️⃣ Working directory
WORKDIR /app

# 3️⃣ Copy dependencies first (for layer caching)
COPY requirements.txt .

# 4️⃣ Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5️⃣ Copy all source code
COPY . .

# 6️⃣ Expose the port
EXPOSE 8080

# 7️⃣ Default command
CMD ["python", "main.py"]
