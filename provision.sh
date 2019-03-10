#!/bin/sh -e

ansible-playbook -i "localhost," playbook.yml --connection=local -K
