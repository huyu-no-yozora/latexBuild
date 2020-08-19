# MIT License
# 
# Dockerfile
# 
# Copyright (c) 2020 冬ノ夜空
# 

FROM snoworld/swd-texlive-full:latest

COPY [".latexmkrc", "Makefile", "entrypoint.sh", "/"]

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]


