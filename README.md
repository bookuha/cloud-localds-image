# Cloud-localds Docker Image

This project provides a Docker image to run `cloud-localds`, a tool used to generate ISO images with cloud-init configuration files. This can be used to create cloud-init data for VMs or cloud environments.

## Build

```bash
   docker build -t cloud-localds-runner .
```

## Run

```bash
docker run --rm -v ${PWD}:/workspace cloud-localds-runner <output-iso-file> <cloud-init-config-file>
```

### Example

```bash
docker run --rm -v ${PWD}:/workspace cloud-localds-runner backend_cloudinit.iso backend_cloudinit.cfg
```
