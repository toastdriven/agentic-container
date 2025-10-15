FROM python:3.12 AS base

ENV PYTHONDONTWRITEBYTECODE=true
ENV PYTHONUNBUFFERED=1
ENV PYTHONPATH=/home/code/src
ENV UV_LINK_MODE=copy

ENV PATH="$PATH:/root/.local/bin"

ENV OS_DEPENDENCIES="sudo curl git vim ripgrep rustup"

RUN apt-get update && \
    apt-get install --no-install-recommends -y ${OS_DEPENDENCIES}

RUN pip install --upgrade pip uv

RUN rustup default stable && \
    rustup update

RUN mkdir -p /app/code

COPY install_goose.sh /home/developer/install_goose.sh

RUN /home/developer/install_goose.sh

WORKDIR /app/code

CMD [ "tail", "-f", "/dev/null" ]
