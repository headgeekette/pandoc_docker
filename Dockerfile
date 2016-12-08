FROM headgeekette/latex
MAINTAINER Charo Nuguid <me@thegeekettespeaketh.com>

# This is based on https://hub.docker.com/r/jagregory/pandoc
# Will endeavor to keep this current at all times.

# will ease up the update process # updating this env variable will trigger the automatic build of the Docker image 
# ENV PANDOC_VERSION "1.19"

# install Haskell
RUN apt-get update && apt-get install -y \
 haskell-platform \
 && apt-get clean

# install pandoc 
RUN cabal update && cabal install pandoc

ENTRYPOINT ["/root/.cabal/bin/pandoc"]
CMD ["--help"]