# Use the official Debian base image
FROM debian:latest

# Set maintainer (you)
LABEL maintainer="Brandon <brandon14ogola@gmail.com>"

# Update package lists and install Git
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean

# Verify Git installation
RUN git --version

# Set working directory
WORKDIR /app

# Optional: Add a non-root user
RUN useradd -ms /bin/bash appuser
USER appuser

# Default command
CMD [ "bash" ]
