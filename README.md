# docker-wordpress-wpcli
When you want to make your own homepage using **wordpress**, you can use docker to build it.
Also, you can build **wordpress** container easlier to use **wordpress-cli** container.
But There is a problem. You can face **dependency problem** building them.

- - -
According to [docker reference](https://docs.docker.com/compose/compose-file/), **depends_on** options in *docker-compose.yml* won't check prepareaiton of each containers. So, When you use **wordpress-cli**, its command may not working correctly.
This is the problem that I experienced when I did my project.
I found a way to solve it. The way is useing **[dockerize](https://github.com/jwilder/dockerize)**
You can TCP communication using **dockerize**. When each container(db, wordpress) are ready, **docker-cli** starts its command.
