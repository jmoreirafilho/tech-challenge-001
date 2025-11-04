# Imagem base leve com Python 3.10
FROM python:3.10-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos do projeto
COPY . /app

# Instala dependências do sistema (para matplotlib, numpy, shap etc.)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libatlas-base-dev \
    libpng-dev \
    libfreetype6-dev \
    && rm -rf /var/lib/apt/lists/*

# Instala as dependências do Python
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta padrão do Jupyter Notebook
EXPOSE 8888

# Comando para iniciar o Jupyter Notebook automaticamente
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
