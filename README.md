creativevpn — XRay (VLESS over WS) for Render

How to deploy:
1) Push this repo to GitHub.
2) On Render.com: New -> Web Service -> Connect to GitHub -> select this repo.
   - Build Command: (leave empty)
   - Start Command: (leave empty)
   - Docker will be detected automatically.
   - Service Port: 8080
3) Choose free plan (Hobby) and Deploy.

After deploy you'll get a public URL like:
https://<service-name>.onrender.com

Client config (VLESS over WS + TLS):
- Address: <service-host> (replace with your Render URL host)
- Port: 443
- ID/UUID: b3d2f6e4-9a1c-4f2b-8c3d-7e6a5b4c3d2e
- Network: ws
- Path: /_hidden_api
- TLS: ON (use TLS)
- Encryption: none

VLESS URI example (paste into client, replace <service-host> with your host):
vless://b3d2f6e4-9a1c-4f2b-8c3d-7e6a5b4c3d2e@<service-host>:443?path=%2F_hidden_api&security=tls&type=ws&encryption=none#creativevpn
