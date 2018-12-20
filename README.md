# sika online / sod

    Ondrej Sika <ondrej@ondrejsika.com>
    https://github.com/ondrejsika/sod

__sod__ is API backend for Sika Online

## Run

```
docker run -d --name sod -p 80:80 -v /var/run/docker.sock:/var/run/docker.sock sikaonline/sod --token demo
```

## API

### Deploy Image

```
curl http://sod.example.com/api/v1/deploy/docker/?domain=mydomain.com&image=myimage:4&token=demo
```

## Development

### Build

```
docker build -t sikaonline/sod .
```

or 

```
docker-compose build
```

### Push

```
docker build sikaonline/sod
```

or

```
docker-compose push
```