Image that has AWS tools packed into it.

The image has two mount points for volumes to pass project data and AWS configuration:

- /project
- /root/.aws

The following scripts automatically mount *./* and *~/.aws* directories as volumes inside the image:

- *aws-toolbox-run*

To start an interactive session within toolbox container just execute
```bash
./aws-toolbox-run
``` 

You can also specify an arbitrary command to be executed within toolbox container by passing it as an argument to *aws-toolbox-run* command:
```bash
./aws-toolbox-run aws s3 ls
```