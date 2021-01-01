# docker-clean-all

## Introduction
This PlugIN removes all Docker containers,volumes,images and network.

---
## Using a plugin
To use the this plugin, simply make it executable:

```shell
sudo chmod +x ./docker-clean-all
```
and place it anywhere in your PATH:
```shell
sudo mv ./docker-clean-all /usr/local/bin
```
You can use your plugin as a docker-clean-all command:
```shell
docker-clean-all run
```


All args and flags are passed as-is to the executable:
```shell
docker-clean-all -version
```
The output is similar to this:
```
1.0.0
```

---
## Contributing
Pull requests are always welcome! Always thrilled to receive pull requests.Thank you!!