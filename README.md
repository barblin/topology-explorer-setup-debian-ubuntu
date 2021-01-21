# Debian / Ubuntu Topology Explorer Setup 

This setup script will provide everything to setup the topology explorer application.
Currently just DEV setup is supported. 
Learn more about the service and the UI here:

SERVICE: https://github.com/barblin/topology-explorer-service

UI: https://github.com/barblin/topology-explorer-ui


## Usage

Simply execute contained script with sudo rights:
```
sudo ./dev-setup.sh
```

This will start an installation process. During this process, two terminal windows will open.
During this process, a virutal environment for the flask service is created. All dependencies are installed. 
Same for the UI project, yarn will install all necessary requirements. Yarn and python are no prerequesties, the script will attempt to install them.
