#!/usr/bin/env bash

mkdir test

# Get a snapshot of the source code.
git archive --output=test/app.tar.gz HEAD

# Move into a brand new folder.
cd test

# Extact archive contents.
tar --extract --file app.tar.gz

# Create a new virtual environment.
python3.5 -m venv env
. env/bin/activate

# Install strawboss process runner.
pip install strawboss

# Install application dependencies.
pip install -r requirements.txt

# Run the process until it is killed.
strawboss &
sleep 1

# Query the page to make sure it works.
curl http://127.0.0.1:8081/

# Stop strawboss now that we know is works :-)
kill -n 2 $!
