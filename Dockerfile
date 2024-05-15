# Use the official Anaconda base image
FROM continuumio/miniconda3

# Create a new conda environment for JupyterLab
RUN conda create -n jupyterlab-env python=3.11 jupyterlab nodejs -y

# Expose the port JupyterLab will run on
EXPOSE 8888

# Start JupyterLab automatically when the container launches, ensuring it runs within the conda environment
CMD ["conda", "run", "-n", "jupyterlab-env", "jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"] 
