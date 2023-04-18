# jdownloader2 Helm Chart
![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square)
[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/jdownloader2)](https://artifacthub.io/packages/search?repo=jdownloader2)

From https://jdownloader.org/:
> JDownloader is a free, open-source download management tool with a huge community that makes downloading as easy and fast as it should be. Users can start, stop or pause downloads, set bandwith limitations, auto-extract archives and much more. It's an easy-to-extend framework that can save hours of your valuable time every day!

## Get Repo Info

    helm repo add my-jdownloader https://pmoscode-helm.github.io/jdownloader2/
    helm repo update

## Install chart

    helm install [RELEASE_NAME] my-jdownloader/jdownloader2

The command deploys jdownloader2 on the Kubernetes cluster in the default configuration.

See configuration below.

See [helm install](https://helm.sh/docs/helm/helm_install/) for command documentation.

## Uninstall Chart

    helm uninstall [RELEASE_NAME]

This removes all the Kubernetes components associated with the chart and deletes the release.

See [helm uninstall](https://helm.sh/docs/helm/helm_uninstall/) for command documentation.

## Upgrading Chart

    helm upgrade [RELEASE_NAME] [CHART] --install

See [helm upgrade](https://helm.sh/docs/helm/helm_upgrade/) for command documentation.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| image.pullPolicy | string | `"Always"` | pull policy |
| image.repository | string | `"jlesage/jdownloader-2"` | repository with jdownloader2 image |
| image.tag | string | `"v23.03.1"` | current version of the image |
| imagePullSecrets | list | `[]` | imagePullSecrets (not needed, if default image is used) |
| ingress | object | `{"annotations":{},"className":"","enabled":false,"hosts":[{"host":"chart-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}],"tls":[]}` | Configure ingress for the "web" service. Only considered, if "service.web" is enabled |
| myjd.email | string | `""` | if "service.myjd" is enabled, the email address of the myJdownloader account is required |
| myjd.password | string | `""` | if "service.myjd" is enabled, the password of the myJdownloader account is required |
| persistence.accessMode | string | `"ReadWriteOnce"` | accessMode |
| persistence.enabled | bool | `false` | enable persistence when true |
| persistence.size | string | `"20Gi"` | default storage size |
| persistence.storageClass | string | `""` | actual storageClass |
| service.myjd | object | `{"enabled":false,"port":3129,"type":"ClusterIP"}` | enable my.jdownloader.org remote connection |
| service.myjd.enabled | bool | `false` | enable "myJD" service |
| service.myjd.port | int | `3129` | exposed port of the service |
| service.myjd.type | string | `"ClusterIP"` | service type |
| service.vnc | object | `{"enabled":false,"port":5900,"type":"LoadBalancer"}` | enable VNC connection (via VNC client) |
| service.vnc.enabled | bool | `false` | enable "VNC" service |
| service.vnc.port | int | `5900` | exposed port of the service |
| service.vnc.type | string | `"LoadBalancer"` | service type |
| service.web | object | `{"enabled":true,"port":5800,"type":"ClusterIP"}` | enable the web interface (via browser) |
| service.web.enabled | bool | `true` | enable "web" service |
| service.web.port | int | `5800` | exposed port of the service |
| service.web.type | string | `"ClusterIP"` | service type |
| serviceAccount.annotations | object | `{}` | add annotations to serviceAccount |
| serviceAccount.create | bool | `true` | enable serviceAccount |
| serviceAccount.name | string | `""` | name of the serviceAccount (will be generated if empty) |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pmoscode | <info@pmoscode.de> | <https://pmoscode.de> |
