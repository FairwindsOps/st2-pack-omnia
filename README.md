[![StackStorm](https://github.com/stackstorm/st2/raw/master/stackstorm_logo.png)](http://www.stackstorm.com)
# ChatOps & Ansible integration pack
This is unofficial [StackStorm](http://stackstorm.com/) pack with some real world [`Actions`](actions/) and [`Action Aliases`](aliases/) allowing you to run [Ansible ad-hoc commands](http://docs.ansible.com/intro_adhoc.html) and [Ansible Playbooks](http://docs.ansible.com/playbooks.html) as ChatOps commands.

For complete Vagrant demo, see [showcase-ansible-chatops](https://github.com/armab/showcase-ansible-chatops) repo.

## Installation
Install st2 ansible integration pack (dependency): 
```sh
st2 run packs.install packs=ansible
```

Install this pack:
```sh
st2 run packs.install packs=st2-chatops-aliases repo_url=armab/st2-chatops-aliases
```

## Available ChatOps commands
Full list of available commands (with real use case Slack screenshots):
* [`!ansible {{args}}`](http://i.imgur.com/pk3xouo.png) - Run ansible command on local machine
* [`!status {{hosts}}`](http://i.imgur.com/fak6ZP7.png) - Show status for hosts (ansible ping module)
* [`!show nginx stats on {{hosts}}`](http://i.imgur.com/Sc5wm7m.png) - Show sorted http status codes from nginx on hosts
* [`!show mysql processlist {{hosts=db}}`](http://i.imgur.com/6YNy3GJ.png) - Show MySQL processlist
* [`!service restart {{service_name}} on {{hosts}}`](http://i.imgur.com/xVyl6xW.png) - Restart service on remote hosts
* [`!show version {{package}} on {{hosts}}`](http://i.imgur.com/RnUqEUb.png) - Show package versions on hosts
* [`!update {{package}} on {{hosts}}`](http://i.imgur.com/IT2EDcn.png) - Update package on remote hosts
* [`!cowsay {{message}}`](http://i.imgur.com/ziIh0sZ.png) - Draws a cow that says what you want

See action [`aliases`](aliases/) code for explanation.
