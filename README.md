# Docker Fluidsynth

Fluidsynth running on docker.  
`Dockerfile` and `docker-compose.yml` provided.

## Usage
```bash
docker run --rm --interactive --tty \
  --volume $PWD:/fluidsynth \
  ricardofiorani/fluidsynth
```

Example:
```bash
docker run --rm --interactive --tty \
  --volume $PWD:/fluidsynth \
  ricardofiorani/fluidsynth -g 2 -F output_file.wav soundfont_file.sf2 input.mid
```
> The command above tries to convert a mid file to wave by using the specified soundfont.  
>
> Please refer to the official Fluidsynth documentation at http://www.fluidsynth.org/ for how to use it.
