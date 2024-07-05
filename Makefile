ad-hoc:
	ansible all -i inventory.ini -u root -m 'ping'

playbook:
	ansible-playbook playbook.yml -i inventory.ini

playbookNginx:
	ansible-playbook playbookNginx.yml -i inventory.ini


add_user:
	ansible-playbook --check playbook.yml -i inventory.ini -t add_user_Sanich

install:
	ansible-playbook playbook.yml -i inventory.ini --check -t install_git,install_tree, install_nginx

all_tags:
	ansible-playbook --check playbook.yml -i inventory.ini --check -t all

facts:
	ansible servers -i inventory.ini -m setup
