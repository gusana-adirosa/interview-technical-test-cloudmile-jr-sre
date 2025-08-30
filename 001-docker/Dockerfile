FROM sonatype/nexus3:latest

# Install plugin
USER root

ARG GCS_PLUGIN_VERSION=0.9.2

# Download the plugin JAR directly from Sonatype's Maven repo
RUN curl -o /opt/sonatype/nexus/deploy/nexus-blobstore-google-cloud-${GCS_PLUGIN_VERSION}.kar \
    https://repo1.maven.org/maven2/org/sonatype/nexus/plugins/nexus-blobstore-google-cloud/${GCS_PLUGIN_VERSION}/nexus-blobstore-google-cloud-${GCS_PLUGIN_VERSION}.jar && \
    chown nexus:nexus /opt/sonatype/nexus/deploy/nexus-blobstore-google-cloud-${GCS_PLUGIN_VERSION}.kar

# Run the app
USER nexus

# Expose the default Nexus port
# Ignored when using k8s
EXPOSE 8081