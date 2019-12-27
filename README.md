Image that has AWS tools packed into it.

The image has two mount points for volumes to pass project data and AWS configuration:

- /project
- /root/.aws

You can use **start-aws-toolbox.sh** script to start the image and mount *./* and *~/.aws* directories as volumes inside the image.