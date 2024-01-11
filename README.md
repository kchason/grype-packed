# Grype Packed

***The automated build has not yet been built so this repository is not yet functional.***

This is a watcher repository surrounding [Anchore's Grype](https://github.com/anchore/grype) to package the current vulnerabilty database into the container image. This makes it easier to run Grype in an offline or air-gapped environment.

## Usage

As this is a wrapper around the Grype image, the usage is the same as the Grype image. The only difference is that the Grype image is now `kchason/grype-packed` instead of `anchore/grype`.

For example, to scan a container image:

```bash
docker run --rm \
--volume /var/run/docker.sock:/var/run/docker.sock \
--name Grype kchason/grype-packed:latest \
$(ImageName):$(ImageTag)
```

Full documentation is available in the Grype repository: https://github.com/anchore/grype


## Tags and Versions

All images are based off the latest Grype image (`anchore/grype:latest`).

The latest image in this repository (`kchason/grype-packed:latest`) is the most up to date image. Images are alternatively tagged with their build date which contains the date the image was built in the format `YYYYMMDD` (e.g. `kchason/grype-packed:20240801`).