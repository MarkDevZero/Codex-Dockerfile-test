FROM python:3.12-slim

# 更新系統並安裝必要的套件
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# 安裝 Flask
RUN pip install --upgrade pip
RUN pip install Flask

# 設定工作目錄
WORKDIR /app

# 複製當前資料夾的內容到容器內的工作目錄
COPY . /app

# 暴露端口
EXPOSE 5000

# 容器啟動時執行的命令
CMD ["python", "app.py"]
