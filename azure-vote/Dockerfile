FROM tiangolo/uwsgi-nginx-flask:python3.6
RUN pip install redis
RUN pip install -U pytest
RUN python3 -m pip install pytest
ADD /azure-vote /app
