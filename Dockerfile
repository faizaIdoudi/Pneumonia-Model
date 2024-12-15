# Utilisation de l'image Python comme base
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers nécessaires
COPY requirements.txt /app/requirements.txt
COPY Pneumonia\ Detection\ Using\ Deep\ Learning.ipynb /app/
COPY model1.keras /app/

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port pour Jupyter (par défaut 8888)
EXPOSE 8888

# Lancer Jupyter Notebook
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]
