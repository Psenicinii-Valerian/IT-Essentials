&SSID=Read-Host "Dati SSID"
&KEEY=Read-Host "Dati key"
netsh wlan set hostednetwork mode=allow ssid=&SSID key=&KEEY
sleep 10
nesh wlan stop hostednetwork