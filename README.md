# sika online / sod

    Ondrej Sika <ondrej@ondrejsika.com>
    https://gitlab.sikahq.com/sikaonline/sod
    https://github.com/ondrejsika/sod

__sod__ is API backend for Sika Online

## Run

```
docker run -d --name sod -p 80:80 -v /var/run/docker.sock:/var/run/docker.sock sikaonline/sod --token demo
```

## API

### Deploy Image

Deploy public image

```
curl "http://sod.example.com/api/v1/deploy/docker/?domain=mydomain.com&image=myimage:4&token=demo"
```

Deploy private image

```
curl "http://sod.example.com/api/v1/deploy/docker/?domain=mydomain.com&image=myprivateimage:4&token=demo&registry_user=user&registry_password=password"
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