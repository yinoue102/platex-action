FROM paperist/texlive-ja:latest

RUN apt-get update \
    && apt-get install -y \
    git 
#    latexdiff

COPY ./.latexmkrc /.latexmkrc
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT [ "/entrypoint.sh" ]
# RUN latexmk -pv main.tex