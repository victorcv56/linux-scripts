#!/bin/bash
mkdir -p /var/backups
tar -czf /var/backups/web-$(date +%F).tar.gz /var/www
