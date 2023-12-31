#!/usr/bin/env sh
set -o errexit -o nounset -o xtrace

if [ "${INPUT_DRY_RUN}" ]; then
    /kaniko/executor \
        --context="${INPUT_CONTEXT}" \
        --dockerfile="${INPUT_DOCKERFILE}" \
        --reproducible \
        --no-push
    exit
fi

(
    set +x
    auth=$(printf "%s:%s" "${INPUT_USER}" "${INPUT_TOKEN}" | base64 -w 0)
    cat - >/kaniko/.docker/config.json <<EOF
{ "auths": { "${INPUT_AUTH_TARGET}": { "auth": "${auth}" } } }
EOF
)
/kaniko/executor \
    --context="${INPUT_CONTEXT}" \
    --dockerfile="${INPUT_DOCKERFILE}" \
    --destination="${INPUT_DESTINATION}" \
    --reproducible
