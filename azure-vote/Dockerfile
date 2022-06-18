FROM tiangolo/uwsgi-nginx-flask:python3.6
RUN pip install redis
RUN pip install -U pytest
ADD /azure-vote /app
