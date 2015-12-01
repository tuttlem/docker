# Chrome docker container

`Dockerfile` will build a container for you and `run.sh` will execute it for you, keeping a persistent copy of the container around.

If you're on Arch linux, you'll want to make sure that `CONFIG_USER_NS` in `/proc/config.gz` is set to `y`. Refer to [this article](https://blog.samcater.com/docker-arch-linux-and-user-namespaces/) for further details.

