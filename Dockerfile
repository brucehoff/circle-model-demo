FROM python

COPY hello_world.py /hello_world.py
COPY parameters.json /parameters.json

CMD ["python", "hello_world.py"]
