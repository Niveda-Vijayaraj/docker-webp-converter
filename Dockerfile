FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install pillow

COPY download.png /app/download.png

CMD ["python3", "-c", "from PIL import Image; Image.open('download.png').convert('RGB').save('compressed.webp', 'WEBP', lossless=True, method=6)"]
