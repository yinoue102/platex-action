FROM paperist/texlive-ja:latest

RUN apt update \
    && apt install -y \
    git 
#    latexdiff

COPY ./.latexmkrc ./
RUN latexmk -pv ${INPUT_LATEX_FILE_NAME}