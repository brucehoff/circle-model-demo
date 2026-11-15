FROM ubuntu:22.04


COPY hello_world.py hello_world.py

# TODO parameters
CMD ["python3 hello_world.py"]
