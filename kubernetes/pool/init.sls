{%- from "kubernetes/map.jinja" import pool with context %}
include:
- kubernetes.pool.cni
{%- if pool.network.engine == "calico" %}
- kubernetes.pool.calico
{%- endif %}
{%- if pool.network.engine == "opencontrail" %}
- kubernetes.pool.opencontrail
{%- endif %}
- kubernetes.pool.service
{%- if pool.network.engine == "flannel" %}
- kubernetes.pool.flannel
{%- endif %}
- kubernetes.pool.kube-proxy
