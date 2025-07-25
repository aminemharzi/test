FROM rayproject/ray:2.46.0

# Switch to the root user to install system packages.
USER root

# Run your installation commands.
RUN apt-get update && apt-get install -y libgl1-mesa-glx libglib2.0-0 && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install -r requirements.txt

USER ray