FROM ipython/ipython

MAINTAINER IPython Project <ipython-dev@scipy.org>

RUN apt-get install libxml2-dev libxslt1-dev python-dev
RUN pip2 install lxml && pip3 install lxml
RUN pip2 install terminado  && pip3 install terminado

# The ipython/ipython image has the full working copy of IPython
RUN chmod a+rwX /srv/ipython/examples

# jovyan is our user
RUN useradd -m -s /bin/bash jovyan

USER jovyan
RUN ipython profile create

# Workaround for issue with ADD permissions
USER root
ADD profile_default /home/jovyan/.ipython/profile_default

# Fake Google Analytics directory (for now)
ADD ga/ /srv/ga/
RUN chmod a+rX /srv/ga
RUN chown jovyan:jovyan /home/jovyan -R

EXPOSE 8888

USER jovyan
ENV HOME /home/jovyan
ENV SHELL /bin/bash
ENV USER jovyan

WORKDIR /home/jovyan/

# checkout workshop content 
RUN git clone https://github.com/DSSatPitt/web-scraping-workshop-2015.git
RUN rm web-scraping-workshop-2015/Dockerfile # users don't need to see this file in the notebook dir

CMD ipython3 notebook
