# ansible-arc-cluster

Setting up user
===============

The easiest way to configure your local machine to work with this ansible script is to set up a ~/.ssh/config file. This allows us to connect with the correct credentials without needing a hard-coded username.

> $ vim ~/.ssh/config

Create new entry:

.. code-block:: sh

Host *.rc.pdx.edu
	User <username>

Replace <username> with your username.
