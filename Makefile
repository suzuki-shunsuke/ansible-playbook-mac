all: ansible

_roles: roles.yml
	ansible-galaxy install -r roles.yml

ansible: _roles
	ansible-playbook -i localhost --ask-become-pass playbook.yml

test: _roles
	ansible-playbook -i localhost --syntax-check --ask-become-pass playbook.yml
