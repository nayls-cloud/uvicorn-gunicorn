# uvicorn-gunicorn - [github repo](https://github.com/nayls-cloud/uvicorn-gunicorn)

**Runtime images** - images without dev depndency

**SDK images** - images with dev dependency (build-essential, libffi-dev, etc), use for build in CI, and final image create with multistage build, see example.

## Supported tags and respective `Dockerfile` links

### python3.8

[`3.8-slim`](https://github.com/nayls-cloud/uvicorn-gunicorn/blob/main/3.8/python3.8-slim.dockerfile)  
[`3.8-slim-poetry`](https://github.com/nayls-cloud/uvicorn-gunicorn/blob/main/3.8/python3.8-slim-poetry.dockerfile)  
[`3.8-slim-sdk`](https://github.com/nayls-cloud/uvicorn-gunicorn/blob/main/3.8/python3.8-slim-sdk.dockerfile)  
[`3.8-slim-poetry-sdk`](https://github.com/nayls-cloud/uvicorn-gunicorn/blob/main/3.8/python3.8-slim-poetry-sdk.dockerfile)  

### python3.9

[`3.9-slim`](https://github.com/nayls-cloud/uvicorn-gunicorn/blob/main/3.9/python3.9-slim.dockerfile)  
[`3.9-slim-poetry`](https://github.com/nayls-cloud/uvicorn-gunicorn/blob/main/3.9/python3.9-slim-poetry.dockerfile)  
[`3.9-slim-sdk`](https://github.com/nayls-cloud/uvicorn-gunicorn/blob/main/3.9/python3.9-slim-sdk.dockerfile)  
[`3.9-slim-poetry-sdk`](https://github.com/nayls-cloud/uvicorn-gunicorn/blob/main/3.9/python3.9-slim-poetry-sdk.dockerfile)  

### python3.10

[`3.10-slim`](https://github.com/nayls-cloud/uvicorn-gunicorn/blob/main/3.10/python3.10-slim.dockerfile)  
[`3.10-slim-poetry`](https://github.com/nayls-cloud/uvicorn-gunicorn/blob/main/3.10/python3.10-slim-poetry.dockerfile)  
[`3.10-slim-sdk`](https://github.com/nayls-cloud/uvicorn-gunicorn/blob/main/3.10/python3.10-slim-sdk.dockerfile)  
[`3.10-slim-poetry-sdk`](https://github.com/nayls-cloud/uvicorn-gunicorn/blob/main/3.10/python3.10-slim-poetry-sdk.dockerfile)  

## Example multistage build image

```Dockerfile
FROM naylscloud/uvicorn-gunicorn:3.9-slim-poetry as dependency-image

COPY ./pyproject.toml ./poetry.lock ./
RUN poetry install --no-interaction --no-dev --no-root --no-ansi -vvv


FROM naylscloud/uvicorn-gunicorn:3.9-slim as runtime-image

ENV PYTHONPATH=/app
WORKDIR /app

COPY --from=dependency-image $VENV_PATH $VENV_PATH
COPY ./ ./

COPY entrypoint.sh /app/entrypoint.sh
ENTRYPOINT ["/bin/sh", "/app/entrypoint.sh"]
```