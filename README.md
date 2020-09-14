## Tags

+ latest (version 2.10.1, comes with LaTeX 2020)

## Description
[Pandoc](http://pandoc.org/) is a swiss-army knife application designed to convert documents from one markup format to another. 

This container was built to make it easier to use Pandoc out of the box.

To run:
```
docker run --rm -v `pwd`:/source headgeekette/pandoc:<tag> -f INPUT_FORMAT -t OUTPUT_FORMAT original_file -o output_file
```
You can also check out the [pandoc demos](http://pandoc.org/demos.html) to see what other commands you can use with `docker run --rm -v `pwd`:/source headgeekette/pandoc`.

