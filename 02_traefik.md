# traefik启动

## 配置证书
- 将获取的证书安装到/home/www/servers/traefik/ca目录下
- 修改 traefik.toml 配置文件
	[entryPoints.https.tls]
      [[entryPoints.https.tls.certificates]]
      CertFile = "/etc/traefik/ca/214462692230331.pem"
      KeyFile = "/etc/traefik/ca/214462692230331.key"
      [[entryPoints.https.tls.certificates]]
      CertFile = "/etc/traefik/ca/214342178770331.pem"
      KeyFile = "/etc/traefik/ca/214342178770331.key"

## 启动traefik
	`docker stack deploy traefik -c traefik.yml`