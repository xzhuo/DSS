FROM bioconductor/bioconductor_docker:devel

# Update apt-get
RUN apt-get update \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install required Bioconductor package
RUN R -e 'BiocManager::install("DSS")'