#!/bin/bash

docker run -p 8200:8200 -e 'VAULT_DEV_ROOT_TOKEN_ID=vault' --cap-add=IPC_LOCK -d --name=dev-vault vault:1.2.4
