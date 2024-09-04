# Se realizo el aprovisionamiento tradicional, usando archivo .sh

# Se realiza sobre una maquina y se ajusta 2 gpu y más ram de la indicada

# Se realiza la instalación de python y los servicios de jupyter

# Çomando para lanzar proceso
jupyter notebook --no-browser --ip=0.0.0.0 --port=8888

# Detener proceso 
pkill -f jupyter-notebook

# Reiniciar
jupyter notebook --no-browser --ip=0.0.0.0 --port=8888

# Verificar proceso 
ps aux | grep jupyter

# prueba desde navegador 
192.168.100.3:8888

