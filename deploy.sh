#!/bin/bash

acorn build -t ghcr.io/randall-coding/acorn/gitbucket && \
acorn push ghcr.io/randall-coding/acorn/gitbucket && \
acorn run -n gitbucket ghcr.io/randall-coding/acorn/gitbucket