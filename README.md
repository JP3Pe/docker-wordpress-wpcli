# WP-CLI with WordPress using Docker

## What is this sample?

This repository show how to use WP-CLI to control dependencies between MySQL, WordPress and WP-CLI.

## Who should reference this sample?

1. If you need to make single WordPress environment or multiple WordPress environments.
2. If you suffered from dependencies between containers.


## Background
When I was on one of the member of security project team to find new zero-day vulnerability from CMS, my job was find a way how to create runtime environments easily.
I found a docker and it was a perfect tool to do annoying jobs.

**But**, I faced to dependence problem among WordPress container, WP-CLI container and MySQL container.
I must wait my WP-CLI container's job before to finish to build WordPress container and MySQL container.
According to [Docker reference](https://docs.docker.com/compose/compose-file/compose-file-v3/), **depends_on** options in *docker-compose.yml* won't check prepareaiton of each containers. So, When you use **WP-CLI**, its command may not works correctly.

> **depends_on** does not wait for db and redis to be “ready” before starting web - only until they have been started. If you need to wait for a service to be ready, see Controlling startup order for more on this problem and strategies for solving it.

So I solved dependency problem using third-party tool **[dockerize](https://github.com/jwilder/dockerize)**.
You can communicate with TCP using **dockerize**. When each container(db, WordPress) are ready, **docker-cli** starts its command.
