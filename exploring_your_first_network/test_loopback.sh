#!/bin/bash
ping -c 4 $(ip -4 addr show scope host | grep 'inet ' | tr -s ' ' | cut -d' ' -f3 | cut -d'/' -f1 | head -n 1)
