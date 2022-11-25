docker exec -t $ODOO_CONTAINER $ODOO_BIN -d $DB_TEST -p 8001 --stop-after-init -i $1 --test-tags /$1
