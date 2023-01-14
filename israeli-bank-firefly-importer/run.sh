#!/usr/bin/with-contenv bashio
set -e

export FIREFLY_BASE_URL=$(bashio::config 'firefly_base_url')
export FIREFLY_TOKEN_API=$(bashio::config 'firefly_token_api')
export CONFIG_FILE=$(bashio::config 'config_file')
export CRON=$(bashio::config 'cron')

israeli-bank-firefly-importer
