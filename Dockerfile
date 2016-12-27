FROM headgeekette/latex
MAINTAINER Charo Nuguid <me@thegeekettespeaketh.com>

# install Haskell
RUN apt-get update && apt-get install -y \
 haskell-platform \
 && apt-get clean

# install pandoc 
RUN cabal update && cabal install pandoc

ENTRYPOINT ["/root/.cabal/bin/pandoc"]
CMD ["--help"]
