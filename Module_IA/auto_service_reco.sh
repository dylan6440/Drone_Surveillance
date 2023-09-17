#!/bin/bash
sudo cp reconnaissance.service  /etc/systemd/system/reconnaissance.service
sudo systemctl enable reconnaissance.service
sudo systemctl start reconnaissance.service
