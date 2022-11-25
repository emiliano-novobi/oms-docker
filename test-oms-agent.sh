source ./oms_agent_scripts_env

docker exec -t $ODOO_CONTAINER $ODOO_BIN -d $TEST_DB -p 8001 --stop-after-init -i oms_agent --test-tags /oms_agent
