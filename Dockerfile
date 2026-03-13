# Install Node and build the frontend assets in a separate stage to keep the final image smaller.
FROM node:22.18-alpine AS node-builder

WORKDIR /vite

COPY package*.json ./
RUN npm install

COPY frontend ./frontend
COPY vite.config.js ./

# Build the frontend assets in production mode.
ENV NODE_ENV=production
RUN npm run build

# Use official Python image for the backend service.
FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /var/www/app

COPY requirements.txt .
COPY app .

# Copy the built frontend assets 
COPY --from=node-builder /vite/app/static/dist ./static/dist

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt


EXPOSE 8080

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080" ]

#[ "gunicorn main:app", "-k", "uvicorn.workers.UvicornWorkers", "--bind", "0.0.0.0:8080" ]