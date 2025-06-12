FROM tensorflow/tensorflow:2.19.0

# Install only essential system dependencies for OpenCV
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    libgomp1 \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies with compatible versions
RUN pip install --upgrade pip && \
    pip install \
    "numpy<2.0" \
    tensorflow-hub==0.16.1 \
    opencv-python==4.10.0.84 \
    matplotlib \
    notebook \
    jupyterlab \
    ipywidgets \
    jupyterlab-widgets 

WORKDIR /app

# Copy the notebook
COPY NST_AR.ipynb /app/

# Create non-root user for security
RUN useradd -m -s /bin/bash jupyter_user && \
    chown -R jupyter_user:jupyter_user /app

# Switch to non-root user
USER jupyter_user

# Expose Jupyter port
EXPOSE 8888

# Start command
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]