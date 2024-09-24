# Use a base image with `cloud-localds` installed
FROM ubuntu:22.04

# Update package list and install cloud-image-utils
RUN apt-get update && apt-get install -y \
    cloud-image-utils \
    && rm -rf /var/lib/apt/lists/*

# Set the default working directory inside the container to `/workspace`
WORKDIR /workspace

# Volume to mount cloud-init config files
VOLUME ["/workspace"]

# Default entrypoint for the container
ENTRYPOINT ["cloud-localds"]