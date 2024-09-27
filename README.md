### Instructions

- `chmod +x clean_containers.sh setup.sh run_docker_rabbitmq.sh`

- Run the script `./run_docker_rabbitmq.sh`

<hr>

- Once the set up is finished, run this command on two separate terminal tab/window(s), one for `send.cpp` and one for `receive.cpp`:
  - `docker exec -it debian_container bash -c "cd /usr/src/app && exec /bin/bash"`

- Now you can run `./send` on one terminal and `./receive` on the other.

<!-- 
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
- In another terminal, run: `python3 send.py` -->
