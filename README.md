# oitrc-ansible-cluster-config

oitrc-ansible-cluster-config is an ansible playbook used to create new user accounts on Rocks Clusters.

Setting Up Your Local Machine
=============================

Install Ansible
---------------
First Install Ansible on your local machine.

Configure Your ssh config and RSA Keys
---------------------------------------
Add the following lines to your ssh config:

```
	Host *.rc.pdx.edu
		User your_user_name
```

Replace 'your_user_name' with your username but leave everything else the same.

After setting up your ssh config file setup RSA keys on all of the host machines to allow automatic login.

**If you do not setup your RSA keys ansible will not work properly.**

Adding New Users
================

Add Users to arc-clusters.yml
-----------------------------
To add new users modify the file:

```
    oitrc-ansible-cluster-config/group_vars/arc-clusters.yml
```

Follow the format specified below:

```
    cluster_users:
      - uid: <user_name>
        groups:
          - <group_name>
```

If the user is not requesting access to a specific group, omit the group section.

Pushing Changes to the Cluster
------------------------------

After you have added the new user(s) to the arc-clusters file run the command:

```
    make sync
```

This will start adding the new users to the cluster as well as syncing their uids and gids for ldap.

Commit Your Changes
-------------------
After you have successfully added users commit your changes to github so there is complete list of users.


