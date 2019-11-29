# How to use this image

Run aguacate server

```shell
$ docker run --rm razzek/aguacate-swagger
```

You can test it by visiting http://container-ip:8080 in a browser


# Environment

The default environment for Aguacate Swagger image is

```
DIRECTORY_DATABASE:       /var/lib/aguacate/database
DIRECTORY_SCRIPT:         /var/lib/aguacate/script
DIRECTORY_CONFIGURATION:  /var/lib/aguacate/configuration
DIRECTORY_SWAGGER:        /var/lib/aguacate/swagger
```

# Examples

Example of use: [demo project](https://github.com/mcnew/aguacate-swagger-demo)

# License
View [license information](https://www.apache.org/licenses/LICENSE-2.0) for the software contained in this image.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
