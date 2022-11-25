source oms_scripts_env

docker exec -t $ODOO_CONTAINER $ODOO_BIN scaffold $1 $CUSTOM_ADDONS_DIRECTORY

