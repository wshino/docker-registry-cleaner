FROM python:3-onbuild

ADD remove.sh /
CMD [ "/bin/bash", "remove.sh" ]
