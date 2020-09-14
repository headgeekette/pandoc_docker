FROM headgeekette/latex:2020

ENV PANDOC_VERSION 2.10.1

RUN apt-get update \
        && apt-get install -y wget \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

# Download pandoc
RUN mkdir pandoc \
        && cd pandoc \
        && wget https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-1-amd64.deb \
        && dpkg -i pandoc-${PANDOC_VERSION}-1-amd64.deb 
        #\
        #&& cd pandoc-${PANDOC_VERSION}

ENTRYPOINT ["pandoc"]

CMD ["--help"]

