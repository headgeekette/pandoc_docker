# Pandoc Container

[Pandoc](http://pandoc.org/) is a swiss-army knife application designed to convert documents from one markup format to another.

This container was built to make it easier to use Pandoc out of the box.

To run:
```
docker run --rm -v `pwd`:/source headgeekette/pandoc -f INPUT_FORMAT -t OUTPUT_FORMAT original_file -o output_file
```
You can also check out the [pandoc demos](http://pandoc.org/demos.html) to see what other commands you can use with `docker run --rm -v `pwd`:/source headgeekette/pandoc`.

This container will always contain the latest pandoc version since the last time it was built. Since the Dockerfile itself is already stable, the build will have to be manually triggered from now on. Please feel free to message me (or leave an issue on the github repo) so I can trigger the build to use a newer Pandoc version.

Pandoc version as of last build: 1.19
