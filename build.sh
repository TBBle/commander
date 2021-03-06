#!/bin/bash
set -e

DOCKER_COMPOSE_VERSION=${1:-1.11.1}

my_dir="$( cd "$( dirname "${0}" )" && pwd )"

context_dir=${my_dir}

docker build \
  --build-arg=DOCKER_COMPOSE_VERSION=${DOCKER_COMPOSE_VERSION} \
  --tag=cyberdojo/commander \
  --file=${context_dir}/Dockerfile \
  ${context_dir}
