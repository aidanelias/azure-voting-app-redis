FROM tiangolo/uwsgi-nginx-flask:python3.6
RUN pip install redis
RUN pip install -U pytest
RUN python --version
ADD /azure-vote /app
