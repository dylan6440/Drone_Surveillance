#!/bin/bash
sudo cp reconnaisance.service  /etc/systemd/system/reconnaisance.service
sudo systemctl enable reconnaisance.service
sudo systemctl start reconnaisance.service
