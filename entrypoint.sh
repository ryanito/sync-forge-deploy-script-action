#!/bin/sh
set -e

update_deploy_script() {
    curl \
        --fail \
        --silent \
        --show-error \
        --max-time 30 \
        --connect-timeout 30 \
        --request 'PUT' \
        -H "Authorization: Bearer $API_KEY" \
        -H "Accept: application/json" \
        --data-urlencode "content=$(cat $GITHUB_WORKSPACE/$SCRIPT_PATH)" \
        "https://forge.laravel.com/api/v1/servers/$SERVER_ID/sites/$SITE_ID/deployment/script"
}

if [ -z "$API_KEY" ] || [ -z "$SERVER_ID" ] || [ -z "$SITE_ID" ] || [ -z "$SCRIPT_PATH" ]; then
    echo "API_KEY, SERVER_ID, SITE_ID, and SCRIPT_PATH environment variables must be set."
    exit 1
fi

update_deploy_script
