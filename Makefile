check:
	ansible-playbook -i  hosts create_users.yml --check --diff -v

create_users:
	ansible-playbook -i hosts create_users.yml

facts:
	ansible all -i hosts -m setup -c
hydraFacts:
	ansible-playbook -i hydra gather.yml
	
