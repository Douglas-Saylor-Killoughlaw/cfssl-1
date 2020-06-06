# Zerynth CFSSL

This is a slight modification of [Cloudflare SSL tools](https://github.com/cfssl/cfssl) used in the Zerynth infrastructure.

To use the image run:

```
docker run -v "$PWD":/pad -it zerynth/cfssl whatever-command-you-need
```

The image executes any given command in the ```/pad``` directory. Useful to mount configurations repos and run makefiles.



