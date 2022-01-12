#!/usr/bin/env bash

export TOKEN

TOKEN=$(curl -s --user "${$LOGIN:?LOGIN envar is missing}:${PASSWORD:?PASSWORD envar is missing}" "https://auth.docker.io/token?service=registry.docker.io&scope=repository:ratelimitpreview/test:pull" | jq -r .token)
curl -s --head -H "Authorization: Bearer $TOKEN" https://registry-1.docker.io/v2/ratelimitpreview/test/manifests/latest

