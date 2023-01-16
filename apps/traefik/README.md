# Env Variables
> A lot fo these are taken from the [LeGo Cloudflare Docs](https://go-acme.github.io/lego/dns/cloudflare/)

|Var|Default|Description|
|---|---|---|
|USERPASS||Username and password hash, used for traefik admin UI. <br/> Generate a hash using: `echo $(htpasswd -nB user) \| sed -e s/\\$/\\$\\$/g`|
|CF_API_EMAIL|giard.alexandre@gmail.com||
|CF_DNS_API_TOKEN||API token with `DNS:Edit` permission|
|CF_ZONE_API_TOKEN||API token with `Zone:Read` permission|
|CF_API_KEY||API key|
|CLOUDFLARE_PROPAGATION_TIMEOUT|120|Maximum waiting time for DNS propagation (seconds)|
|CLOUDFLARE_POLLING_INTERVAL|2|Time between DNS propagation check|
|CLOUDFLARE_TTL|120|The TTL of the TXT record used for the DNS challenge|


# File permissions to assign

|File|Permissions|Group Owner|Description|
|---|---|---|---|
|config.yml|444|docker||
|traefik.yml|444|docker||
|acme.json|600|docker|LetsEncrypt Cert Info|
|custom/|444|docker|Directory with custom resources to apply to Traefik|

> Hint, Owner and Permission quick ref:
> - `chown <USER>:<GROUP> <FILE>` (`chown core:docker acme.json`)
> - `chmod <PERMISSIONS> <FILE>` (`chmod 600 acme.json`)
