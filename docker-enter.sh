#!/bin/bash

CWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

which docker >/dev/null || {
  echo "ERROR: Please install Docker first."
  exit 1
}

echo "===== RUNNING =====" && \
  docker run --rm -t -i \
    --name "website" \
    -p 8000:8000 \
    -v ${CWD}:/code \
    -w /code \
    -e LC_CTYPE=en_US.UTF-8 \
    -e LANG=en_US.UTF-8 \
    jekyll/jekyll \
    bash
    #ruby:2.3 \
