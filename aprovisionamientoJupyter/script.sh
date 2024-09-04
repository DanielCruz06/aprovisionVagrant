#!/bin/bash

# Actualizar los paquetes y el sistema
sudo apt-get update -y
sudo apt-get upgrade -y

# Instalar Python y pip
sudo apt-get install -y python3 python3-pip python3-dev

# Instalar virtualenv para gestionar entornos virtuales (opcional)
sudo pip3 install virtualenv

# Crear un entorno virtual (opcional, pero recomendado)
# virtualenv jupyter_env
# source jupyter_env/bin/activate

# Instalar Jupyter Notebook
sudo pip3 install jupyter

# Instalar las librerías necesarias de Python (agrega las que necesites)
sudo pip3 install numpy pandas matplotlib scipy scikit-learn

# Crear un directorio para los notebooks (opcional)
mkdir -p ~/jupyter_notebooks

# Generar el archivo de configuración de Jupyter Notebook (opcional)
jupyter notebook --generate-config

# Configurar Jupyter Notebook para que se ejecute sin necesidad de un navegador
echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip = '0.0.0.0'" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.notebook_dir = '~/jupyter_notebooks'" >> ~/.jupyter/jupyter_notebook_config.py

# Exponer el puerto 8888 para acceder a Jupyter Notebook desde fuera de la VM
echo "c.NotebookApp.port = 8888" >> ~/.jupyter/jupyter_notebook_config.py

# Iniciar Jupyter Notebook (puedes comentar esta línea si prefieres iniciarlo manualmente)
jupyter notebook &

echo "Jupyter Notebook está instalado y ejecutándose en el puerto 8888"
