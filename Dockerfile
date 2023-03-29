FROM paperist/texlive-ja:latest

RUN apt-get update \
    && apt-get install -y \
    git 
#    latexdiff

COPY ./.latexmkrc ./
RUN latexmk -pv ${INPUT_LATEX_FILE_NAME}