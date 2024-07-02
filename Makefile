ad-hoc:
	ansible all -i inventory.ini -u root -m 'ping'

playbook:
	ansible-playbook playbook.yml -i inventory.ini