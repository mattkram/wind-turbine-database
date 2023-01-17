FROM continuumio/miniconda3
RUN conda install -y anaconda-project
RUN mkdir -p /app
COPY . /app
# COPY anaconda-project.yml /app/anaconda-project.yml
WORKDIR /app
RUN anaconda-project prepare

EXPOSE 5006

CMD anaconda-project run dashboard
