import os
import io
import function as func
from PIL import Image
from starlette.responses import FileResponse
from fastapi import FastAPI, UploadFile, File
from uvicorn import run
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import JSONResponse
from fastapi.encoders import jsonable_encoder


app = FastAPI()

origins = [
    "http://localhost",
    # "http://172.16.11.113",
    "http://localhost:8080",
    # "http://172.16.11.113:8080",
    # "http://172.16.11.113:8081"/,
    # Add more allowed origins as needed
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


# Defining path operation for root endpoint
@app.get("/")
def main():
    return {"message": "Welcome to Nutriku Model test API!"}


# Defining path operation for /documentation endpoint
@app.get("/documentation")
async def read_index():
    return FileResponse("doc/index.html")


# Defining path operation for /predict endpoint
@app.post("/predict")
async def predict_image(file: UploadFile = File(...)):
    # Read and preprocess the image
    content = await file.read()
    try:
        image = Image.open(io.BytesIO(content))
        image = func.preprocess_image(image)
    except Exception as e:
        return {"error": str(e)}

    response = func.predict(image)
    # Return the predicted class
    return response


if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8082))
    run(app, host="127.0.0.1", port=port, timeout_keep_alive=1200)
