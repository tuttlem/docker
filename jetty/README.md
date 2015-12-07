# JETTY Container

A basic installation of the [Jetty](http://www.eclipse.org/jetty/) server inside a docker container.

## Building

You need to download the Jetty tar.gz from their [download](http://download.eclipse.org/jetty/) page. This container is currently geared towards running a **stable-9** release.

```
$ docker build -t tuttlem/jetty .
```

## Running

Inside of the container, `JETTY_HOME` is set to `/opt/jetty-distribution-9.3.6.v20151106`. `JETTY_BASE` is set to `/opt/base`.

Mount your application folder at `/opt/base` inside of the container.

```
$ docker run --rm -ti -v $(pwd)/jetty-distribution-9.3.6.v20151106/demo-base:/opt/base -p 8080:8080 tuttlem/jetty
```

