check:
	ansible-playbook -i  hosts site.yml --check --diff -v

sync:
	ansible-playbook -i hosts site.yml

group_sync:
	ansible-playbook -i hosts group_sync_site.yml

facts:
	ansible all -i hosts -m setup -c
hydraFacts:
	ansible-playbook -i hydra gather.yml
	
