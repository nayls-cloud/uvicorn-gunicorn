#!/usr/bin/env bash

# ========================================
# ============ RUNTIME IMAGES ============
# ========================================

# -------------- PYTHON 3.8 --------------

printf "\n=== naylscloud/uvicorn-gunicorn:3.8-slim ==="
printf "\n-----------------------------\n"
docker build \
    -t naylscloud/uvicorn-gunicorn:3.8-slim \
    -f ./3.8/python3.8-slim.dockerfile \
    ./3.8 || exit 1
docker push naylscloud/uvicorn-gunicorn:3.8-slim || exit 1

printf "\n=== naylscloud/uvicorn-gunicorn:3.8-slim-poetry ==="
printf "\n------------------------------------\n"
docker build \
    -t naylscloud/uvicorn-gunicorn:3.8-slim-poetry \
    -f ./3.8/python3.8-slim-poetry.dockerfile \
    ./3.8 || exit 1
docker push naylscloud/uvicorn-gunicorn:3.8-slim-poetry || exit 1

# -------------- PYTHON 3.9 --------------

printf "\n=== naylscloud/uvicorn-gunicorn:3.9-slim ==="
printf "\n-----------------------------\n"
docker build \
    -t naylscloud/uvicorn-gunicorn:3.9-slim \
    -f ./3.9/python3.9-slim.dockerfile \
    ./3.9 || exit 1
docker push naylscloud/uvicorn-gunicorn:3.9-slim || exit 1

printf "\n=== naylscloud/uvicorn-gunicorn:3.9-slim-poetry ==="
printf "\n------------------------------------\n"
docker build \
    -t naylscloud/uvicorn-gunicorn:3.9-slim-poetry \
    -f ./3.9/python3.9-slim-poetry.dockerfile \
    ./3.9 || exit 1
docker push naylscloud/uvicorn-gunicorn:3.9-slim-poetry || exit 1

# -------------- PYTHON 3.10 --------------

printf "\n=== naylscloud/uvicorn-gunicorn:3.10-slim ==="
printf "\n-----------------------------\n"
docker build \
    -t naylscloud/uvicorn-gunicorn:3.10-slim \
    -f ./3.10/python3.10-slim.dockerfile \
    ./3.10 || exit 1
docker push naylscloud/uvicorn-gunicorn:3.10-slim || exit 1

printf "\n=== naylscloud/uvicorn-gunicorn:3.10-slim-poetry ==="
printf "\n------------------------------------\n"
docker build \
    -t naylscloud/uvicorn-gunicorn:3.10-slim-poetry \
    -f ./3.10/python3.10-slim-poetry.dockerfile \
    ./3.10 || exit 1
docker push naylscloud/uvicorn-gunicorn:3.10-slim-poetry || exit 1


# ========================================
# ============== SDK IMAGES ==============
# ========================================

# -------------- PYTHON 3.8 --------------

printf "\n=== naylscloud/uvicorn-gunicorn:3.8-slim-sdk ==="
printf "\n-----------------------------\n"
docker build \
    -t naylscloud/uvicorn-gunicorn:3.8-slim-sdk \
    -f ./3.8/python3.8-slim-sdk.dockerfile \
    ./3.8 || exit 1
docker push naylscloud/uvicorn-gunicorn:3.8-slim-sdk || exit 1

printf "\n=== naylscloud/uvicorn-gunicorn:3.8-slim-poetry-sdk ==="
printf "\n------------------------------------\n"
docker build \
    -t naylscloud/uvicorn-gunicorn:3.8-slim-poetry-sdk \
    -f ./3.8/python3.8-slim-poetry-sdk.dockerfile \
    ./3.8 || exit 1
docker push naylscloud/uvicorn-gunicorn:3.8-slim-poetry-sdk || exit 1

# -------------- PYTHON 3.9 --------------

printf "\n=== naylscloud/uvicorn-gunicorn:3.9-slim-sdk ==="
printf "\n-----------------------------\n"
docker build \
    -t naylscloud/uvicorn-gunicorn:3.9-slim-sdk \
    -f ./3.9/python3.9-slim-sdk.dockerfile \
    ./3.9 || exit 1
docker push naylscloud/uvicorn-gunicorn:3.9-slim-sdk || exit 1

printf "\n=== naylscloud/uvicorn-gunicorn:3.9-slim-poetry-sdk ==="
printf "\n------------------------------------\n"
docker build \
    -t naylscloud/uvicorn-gunicorn:3.9-slim-poetry-sdk \
    -f ./3.9/python3.9-slim-poetry-sdk.dockerfile \
    ./3.9 || exit 1
docker push naylscloud/uvicorn-gunicorn:3.9-slim-poetry-sdk || exit 1

# -------------- PYTHON 3.10 --------------

printf "\n=== naylscloud/uvicorn-gunicorn:3.10-slim-sdk ==="
printf "\n-----------------------------\n"
docker build \
    -t naylscloud/uvicorn-gunicorn:3.10-slim-sdk \
    -f ./3.10/python3.10-slim-sdk.dockerfile \
    ./3.10 || exit 1
docker push naylscloud/uvicorn-gunicorn:3.10-slim-sdk || exit 1

printf "\n=== naylscloud/uvicorn-gunicorn:3.10-slim-poetry-sdk ==="
printf "\n------------------------------------\n"
docker build \
    -t naylscloud/uvicorn-gunicorn:3.10-slim-poetry-sdk \
    -f ./3.10/python3.10-slim-poetry-sdk.dockerfile \
    ./3.10 || exit 1
docker push naylscloud/uvicorn-gunicorn:3.10-slim-poetry-sdk || exit 1