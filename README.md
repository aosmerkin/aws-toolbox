Image that has AWS tools packed into it.

The image has two mount points for volumes to pass project data and AWS configuration:

- /project
- /root/.aws

The following scripts automatically mount *./* and *~/.aws* directories as volumes inside the image:

- *aws-toolbox-run*
- *aws-toolbox-exec*

To start an interactive session within toolbox container just execute
```bash
./aws-toolbox-run
``` 

You can also specify an arbitrary command to be executed within toolbox container in non-interactive mode by passing it as an argument to *aws-toolbox-exec* command:
```bash
./aws-toolbox-exec aws s3 ls
```