# Covalent BSP Node

This is a draft for a covalent BSP production ready containerized environment. 

# Requirements

- Docker, Docker Compose
```
sudo apt update -y
sudo apt install ca-certificates curl gnupg -y
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update -y
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo groupadd docker
sudo usermod -aG docker $USER
```


# How to run

## Generate a `jwt.hex` file inside `secrets` folder

```
openssl rand -hex 32 | tr -d "\n" > "./secrets/jwt.hex"
```

## Preparate environment variables

Copy the `default.env` file to `.env` in the root folder and modify its values accordingly.

```bash
cp default.env .env
```

# License

- MIT