# lmod
This project provides an [Lmod](https://lmod.readthedocs.io/en/latest/) container on DockerHub at https://hub.docker.com/repository/docker/shahzebsiddiqui/lmod/

To get started, you can run one of the images let's say version 8.7.5 in interactive shell

```
docker run -it shahzebsiddiqui/lmod:8.7.5
```

Upon completion you should be in a container instance, the `module` command should be present, so let's run `module --version`

```
[root@55409943483a Lmod-8.7.5]# module --version

Modules based on Lua: Version 8.7.5  2022-06-22 10:58 -05:00
    by Robert McLay mclay@tacc.utexas.edu
```

The container provides builtin modulefiles `lmod` and `settarg` which should be in MODULEPATH when you run `module avail`

```
[root@55409943483a Lmod-8.7.5]# module av

------------------------------------------------------------------------------------------------- /opt/apps/lmod/lmod/modulefiles/Core -------------------------------------------------------------------------------------------------
   lmod    settarg

```
