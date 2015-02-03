check:
	ansible-playbook -i  hosts site.yml --check --diff

install:
	ansible-playbook -i hosts site.yml

facts:
	ansible all -i hosts -m setup -c
