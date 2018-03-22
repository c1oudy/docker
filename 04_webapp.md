# 启动web应用

## builder web images
- 修改应用源代码
	- 数据库、redis连接
	- 源代码连接
- 修改Dockerfile
    `ADD --chown=www-data:www-data [web-source] /var/www/html`
    - `web-source`指本地源代码存放的目录
- builder image
	`docker build . -t  registry.gitlab.com/quanliren/wanshangpu:[type]-[area]`
	- `type`指用户类型，admin/agent
	- `area`指用户地区，区分数据库
- push image to registry
	`docker push registry.gitlab.com/quanliren/wanshangpu:[type]-[area]`

## 编写compose.yml
- 修改image
`image: registry.gitlab.com/quanliren/wanshangpu:[type]-[area]`
- 修改域名
`- "traefik.frontend.rule=Host:[domain]"`


