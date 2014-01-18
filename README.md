vagrant
=======

working vagrant files on windows

Steps to get started:
1. Download personal vagrant set up here: https://github.com/badhashsolution/vagrant
2. Create project directory:  I chose C:\cygwin64\home\Wes\sites\exec
3. Copy vagrant files into it & extract
4. You will find a gswd-vagrant folder within some of the extracted folders, move it into ..exec\
5. in cygwin cd into C:\cygwin64\home\Wes\sites\exec\gswd-vagrant
6. ~sites/exec/gswd-vagrant$ vagrant up
  6.1 this issue means you aren’t in the right directory:
    shell provisioner:
    * `path` for shell provisioner does not exist on the host system: 
    C:/cygwin64/home/Wes/bootstrap.sh
  6.2 This issue means you likely didn’t move the gswd-vagrant folder into the right directory
    Bringing machine 'default' up with 'virtualbox' provider...
    There was an error while executing `VBoxManage`, a CLI used by Vagrant
    for controlling VirtualBox. The command and stderr is shown below.
    
    Command: ["list", "hostonlyifs"]
    
    Stderr: VBoxManage.exe: error: Failed to create the VirtualBox object!
    VBoxManage.exe: error: Code CO_E_SERVER_EXEC_FAILURE (0x80080005) - Server execution failed (extended info not available)
    VBoxManage.exe: error: Most likely, the VirtualBox COM server is not running or failed to start.
  6.4 if you get a port error change the 8888 in this line of the vagrantfile: config.vm.forward_port 8000, 8888
  6.3 Helpful cygwin/linux tips:
    6.3.1 ctrl-l to clear screen
    6.3.2 ls to view files
    6.3.3 ls -larth --color is a beefier version and can be aliased to ll
  
7. Once vagrant up is working: $vagrant ssh
8. Create a virtual environment
  8.1 vagrant@precise64:/vagrant$ mkdir project_name
  8.2 vagrant@precise64:/vagrant/project_name$ virtualenv ~/virtual-env-name
  8.3 vagrant@precise64:/vagrant/project_name$ source ~/virtual-env-name/bin/activate
    8.3.1 this will change the prompt name, now you have a virtual environment!
  8.4 (virtual-env-name)vagrant@precise64:/vagrant/project_name$ sudo apt-get install git
  
