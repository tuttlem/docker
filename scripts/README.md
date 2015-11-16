# Invocation Scripts

The scripts in this folder are simple invocations of common docker containers to ease execution.

`_redis` and `_mongo` scripts will take in the name of another container that gets linked to the temporary container setup, and the main cli application will be invoked attempting to connect to the linked container.

`_hadoop` will setup a single hadoop node.

Everything else will drop you into a development environment of the same name (to the script that you invoke), mounting the folder that you've invoked the script from to `/usr/src/app`.

