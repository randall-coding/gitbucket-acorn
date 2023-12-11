#!/bin/bash
acorn build -t ghcr.io/randall-coding/acorn/gitbucket && \
acorn push ghcr.io/randall-coding/acorn/gitbucket && \
acorn run -n gitbucket --memory=1Gi ghcr.io/randall-coding/acorn/gitbucket