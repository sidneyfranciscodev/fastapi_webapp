from fastapi import FastAPI
from fastapi.templating import Jinja2Templates
from fastapi.staticfiles import StaticFiles
from config.paths import TEMPLATES_DIR, STATIC_DIR
from routes.public import router as public

app = FastAPI()

app.mount(
    '/assets', 
    StaticFiles(directory=STATIC_DIR), 
    name='assets'
)

app.include_router(public)

templates = Jinja2Templates(directory=TEMPLATES_DIR)
