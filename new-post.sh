#!/bin/bash

read -rp "Enter post title: " title

echo -e "---
layout: post
title:  \"[REPLACE]: ${title}\"
date:   $(date +"%Y-%m-%d %T %z")
tags: [\"REPLACE\"]
author: REPLACE
---


" > "_posts/$(date +"%Y-%m-%d")-${title}.md"

$EDITOR "_posts/$(date +"%Y-%m-%d")-${title}.md"
