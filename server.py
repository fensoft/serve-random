import os
import random
from fastapi import FastAPI
from fastapi.responses import FileResponse

app = FastAPI()

@app.get("/")
async def get_random_file():
    files = [f for f in os.listdir('.') if os.path.isfile(f) and os.environ.get('PATTERN') in f]
    random_file = random.choice(files)
    return FileResponse(path=random_file, filename=random_file)
