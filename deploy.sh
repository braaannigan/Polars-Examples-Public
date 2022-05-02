#
#   Copyright (C) 2020 Liam Brannigan
#
#Target can be 'dev', 'test' or 'deploy' as per Dockerfile stages
TARGET=$1

DOCKER_BUILDKIT=1 docker build -t polars-examples .

if [ "${TARGET}" == "dev" ]; then
docker run  -it --rm  -v $(pwd):/usr/src/app -v docker_bash_history:/root/.bash_history polars-examples:latest /bin/bash
fi

if [ "${TARGET}" == "app" ]; then
docker run -it --rm -p 8501:8501  -v $(pwd):/usr/src/app polars-examples:latest /bin/bash
fi

if [ "${TARGET}" == "lab" ]; then
docker run -it --rm -p 8888:8888  -v $(pwd):/usr/src/app polars-examples:latest /bin/bash
fi
