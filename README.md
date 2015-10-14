# ansible-arc-cluster

Setting Up Your Local Machine
=============================

Install ansible
---------------
First Install ansible on your local machine.

Configure Your ssh config and RSA Keys
---------------------------------------
The easiest way to configure your local machine to work with this ansible script is to set up a ~/.ssh/config file. This allows us to connect with the correct credentials without needing a hard-coded username.

> $ vim ~/.ssh/config

Create new entry:

```
	Host *.rc.pdx.edu
		User <username>
```

Replace <username> with your username.

After setting up your ssh config file setup RSA keys on all of the host machines to allow automatic login

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


