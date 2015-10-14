# ansible-arc-cluster

ansible-arc-cluster is a repository that is used to add new users to our clusters Hydra and Gravel at ARC. It was recently extened to sync user IDs and group IDs over from ldap to give users access to share drive. 

Setting Up Your Local Machine
=============================

Install ansible
---------------
First Install ansible on your local machine.

Configure Your ssh config and RSA Keys
---------------------------------------
Add the following lines to your ssh config:
```
	Host *.rc.pdx.edu
		User <username>
```

Replace '<username>' with your username but leave everything else the same.

After setting up your ssh config file setup RSA keys on all of the host machines to allow automatic login
**If you do not setup your RSA keys ansible will not work properly.**

Adding New Users
================

Add Users to arc-clusters.yml
-----------------------------
To add new users modify the file:

```
    ansible-arc-cluster/group_vars/arc-clusters.yml
```

Follow the format speficied below:

```
    cluster_users:
      - uid: <user_name>
        groups:
          - <group_name>
```

If the user is not requesting access to a sepcific group, ommit the group section.

Pushing Changes to the Cluster
------------------------------

After you have added the new user(s) to the arc-clusters file run the command:

```
    make group_sync
```

This will start adding the new users to the cluster as well as syncing their uids and gids for ldap.

Commit Your Changes
-------------------
After you have succesfully added users commit your changes to github to there is complete list of users.


