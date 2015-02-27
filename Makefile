check:
	ansible-playbook -i  hosts site.yml --check --diff -v

install:
	ansible-playbook -i hosts site.yml

facts:
	ansible all -i hosts -m setup -c
hydraFacts:
	ansible-playbook -i hydra gather.yml
