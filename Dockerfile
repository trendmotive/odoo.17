FROM odoo:17.0
USER root
ENV DEBIAN_FRONTEND=noninteractive LANG=C.UTF-8

RUN apt-get update

COPY . /mnt/extra-addons
RUN pip3 install -r /mnt/extra-addons/requirements.txt
USER odoo
