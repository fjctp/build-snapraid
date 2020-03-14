# build-snapraid
Build snapraid from [github](https://github.com/amadvance/snapraid/releases) based on `opensuse/tumbleweed`

## Usage
Build a specific version of snapraid and copy the executable to current folder.
```
docker run -it --rm -v $PWD:/output -e VERSION=11.3 fjctp/build-snapraid
```