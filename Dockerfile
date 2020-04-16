FROM buildpack-deps:buster
ARG DEBIAN_FRONTEND="noninteractive"
RUN apt-get update -qq \
    && apt-get install -yq \
        python3-cryptography \
        python3-h5py \
        python3-matplotlib \
        python3-numpy \
        python3-pil \
        python3-scipy \
    && rm -rf /var/lib/apt/lists/* \
    && curl -fsSL https://bootstrap.pypa.io/get-pip.py | python3 -

WORKDIR /src/nibabel
COPY . .
RUN python3 -m  pip install --no-cache-dir --editable .[all]
