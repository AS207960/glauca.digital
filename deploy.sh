#!/usr/bin/env bash

bundle exec jekyll build
mc mirror --overwrite _site garage/glauca-digital
