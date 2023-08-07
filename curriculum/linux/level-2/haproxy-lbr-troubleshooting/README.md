## Haproxy LBR Troubleshooting

### Problem

xFusionCorp Industries has an application running on Nautlitus infrastructure in Stratos Datacenter. The monitoring tool
recognised that there is an issue with the haproxy service on LBR server. That needs to fixed to make the application
work properly.

Troubleshoot and fix the issue, and make sure haproxy service is running on Nautilus LBR server. Once fixed, make sure
you are able to access the website using StaticApp button on the top bar.

### Solution

```shell
haproxy -f /etc/haproxy/haproxy.cfg
```

- change `balance round` to `balance roundrobin`

- `systemctl restart haproxy`

- See: [Solution](./solution.yaml)
