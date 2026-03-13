# FastAPI WebApp Template

Starter template for building server-rendered web applications with:

- FastAPI
- Jinja templates (SSR)
- Vite for asset bundling
- Stimulus for frontend interactivity
- SCSS styling
- Docker container

This repository is intended to serve as a reusable base for future projects.

---

## Stack

Backend:
- FastAPI

Frontend:
- Stimulus
- Vite
- SCSS

Templating:
- Jinja (server-side rendering)

---

## Project Structure

fastapi_webapp/

app/
- main.py
- config/
- routes/
- static/
- templates/

frontend/
- stimulus/
    - controllers/
    - main.js
- styles/

Dockerfile
package.json
requirements.txt
vite.config.js

---

## Installation

Clone the repository:

git clone https://github.com/sidneyfranciscodev/fastapi_webapp.git

Enter the project directory:

cd fastapi_webapp

---

## Backend Setup

Create virtual environment:

python -m venv venv

Activate environment:

Linux / macOS
source venv/bin/activate

Windows
venv\Scripts\activate

Install dependencies:

pip install -r requirements.txt

Run server:

uvicorn app.main:app --reload

---

## Frontend Setup

In root folder:

Install dependencies:

npm install

Run dev server:

npm run dev

Build assets for production:

npm run build

Built assets will be placed in:

app/static/dist

---

## Development Workflow

1. Run FastAPI server
2. Run Vite dev server
3. Edit templates or JS/SCSS
4. Build assets when preparing production

---

## Create a Docker Container

1. Run docker build -t 'image-name' .
2. Run docker run 'image-name'

---

## Future Extensions

This template is intentionally minimal. It can be extended with:

- Vue or React for SPA sections
- Firebase authentication
- PostgreSQL
- Docker
- Nginx reverse proxy
