strawboss-demo - demo project
=============================

.. image:: https://img.shields.io/travis/smartmob-project/strawboss-demo.svg
   :target: https://travis-ci.org/smartmob-project/strawboss-demo
   :alt: Current build status

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
       https://github.com/smartmob-project/strawboss-demo/archive/master.tar.gz
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
  ... [strawboss] web.0(...) spawned.
  ... [web.0] * Running on http://127.0.0.1:8081/ (Press CTRL-C to quit)

Point your browser to http://127.0.0.1:8081/ and see the result.  The web
process' access logs should show access from the browser::

  ... [web.0] 127.0.0.1 - - [...] "GET / HTTP/1.1" 200
  ... [web.0] 127.0.0.1 - - [...] "GET /favicon.ico HTTP/1.1" 404 -

When you're down, kill everything with CTRL-C and see the shutdown logs::

  ... [strawboss] web.0(...) killed.
  ... [strawboss] EOF from web.0(...).
  ... [strawboss] web.0(...) completed with exit status -9.

Verify the exit status::

  $ echo $?
  0

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
