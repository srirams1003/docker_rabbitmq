### Instructions to install RabbitMQ on Ubuntu 22.04

- `chmod +x install_rabbit.sh`
- Run the script `./install_rabbit.sh`

  <hr>

### NOTE: In the installation logs in the console, you will see some messages like:
`E: Failed to fetch ...` or `E: Some index files failed to download ...`
#### You can safely ignore these errors.

<hr>

### OPTIONAL: Once installed successfully, you can use the commands below to check out the current status of your rabbitmq

- `systemctl status rabbitmq-server`
- `sudo rabbitmqctl list_users`
  - Should now see guest as admin
- `sudo rabbitmqctl list_vhosts`
  - Should see /
- `sudo rabbitmqctl list_permissions -p /`
  - Should see list of permissions for /

<hr>

### Now that installation was successful, you can run your Python Files

- In one terminal, run: `python3 receive.py`
- In another terminal, run: `python3 send.py`
