# sonm-cuda-docker

The base image that built on top of `nvidia/cuda` with some fixes for the Tensorflow + python.

Dockerfile exmaple:

```
FROM sonm/cuda:8.0

WORKDIR /usr/src/app

COPY . .
RUN python3 -m pip install --no-cache-dir -r requirements.txt

CMD [ "python3", "mnist.py" ]
```

Find more examples in the [@DoctorCotic's repo](https://github.com/DoctorCotic/MLSamples). 
