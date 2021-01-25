export MAX_DOWNLOAD_SPEED=0
export MAX_CONCURRENT_DOWNLOADS=4
aria2c --enable-rpc --rpc-listen-all=false --rpc-listen-port 6800 \
  --always-resume=0 --max-connection-per-server=10 --rpc-max-request-size=1024M --check-certificate=false --max-tries=0 \
  --seed-time=0.01 --min-split-size=10M --human-readable=true \
  --follow-torrent=mem --bt-request-peer-speed-limit=1024K --bt-max-peers=0 --bt-tracker-connect-timeout=300 --bt-stop-timeout=300 --split=10 \
  --daemon=true --allow-overwrite=true --max-overall-download-limit=$MAX_DOWNLOAD_SPEED \
  --max-overall-upload-limit=1K --max-concurrent-downloads=$MAX_CONCURRENT_DOWNLOADS
