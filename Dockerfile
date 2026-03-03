FROM registry.access.redhat.com/ubi8/ubi:latest

COPY entrypoint.sh /
# Intentionally do NOT copy LICENSE to /licenses/ - EC may require license in image
# Use deprecated "License" label (replacement: org.opencontainers.image.licenses) to trigger labels.deprecated_labels
LABEL License="MIT"

ENTRYPOINT ["/entrypoint.sh"]
