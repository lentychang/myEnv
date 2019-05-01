# Usage
normal build procedure: 
1. install/ setup correspondent environment in base 
2. build base
3. build user based on base, remember to setup whether you need sudo
4. build dev base on dev

# Note
1. Entrypoint is only need when conda is installed, which conda.sh need to be source first.

So if conda is installed on base image or like ROS command need to be sourced first, you need to specify these source commands in entrypoint file. So that when you run `docker run ......` "conda" or "rosrun" is recognized by the command line.
Since shell that `docker run` runs will not execute ~/.bashrc first, which means that the shell is really clean without bashrc settings.
Of course you can source ~/.bashrc in entrypoint.


# Todo
1. Change all ENV to read from .env files
2. Interactive shell script to ask parameters like images name