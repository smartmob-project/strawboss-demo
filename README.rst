strawboss-demo - demo project
=============================


Description
-----------

This is a small self-contained Python project that showcases how to use the
strawboss_ process runner.

If it doesn't work on your machine, please open an issue in the `issue
tracker`_.

.. _strawboss: https://github.com/smartmob-project/strawboss
.. _`issue tracker`: https://github.com/smartmob/strawboss-demo/issues


Instructions
------------

Download the latest master::

  $ curl -L -o strawboss-demo-master.zip \
       https://github.com/smartmob-project/strawboss/archive/master.tar.gz
  $ tar --extract --strip-components=1 --file strawboss-demo-master.zip


Create a new Python 3.5 virtual environment::

  $ python3.5 -m venv env
  $ . env/bin/activate

Install the strawboss_ process runner::

  $ pip install strawboss

Install the application dependencies::

  $ pip install -r requirements.txt

Run processes in the Procfile_ (CTRL-C to end)::

  $ strawboss


Contributing
------------

We welcome pull requests!  Please open up an issue on the `issue tracker`_ to
discuss, fork the project and then send in a pull request :-)

Feel free to add yourself to the ``CONTRIBUTORS`` file on your first pull
request!


License
-------

The source code and documentation is made available under an MIT license.  See
``LICENSE`` file for details.
