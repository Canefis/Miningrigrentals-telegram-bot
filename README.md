# Postman-pre-request-script-for-mrr
Miningrigrentals telegram bot

Usage (Postman+newman+watch):

https://www.miningrigrentals.com/api/v2/

1) Place scripts into pre-request script tab and post-request script tab

2) Create environmental variables "api_key" & "api_secret", "chat_id", "bot_id", "hashrate15min" & "hash"

3) Create 2 requests in your collection:
   
   my request1:
   
   GET https://www.miningrigrentals.com/api/v2/rig/ID
   ID - from miningrigrentals rig id number, which you like to monitor hashrate
 
   telegram bot:
   
   POST https://api.telegram.org/{{bot_id}}/sendMessage?chat_id={{chat_id}}&text=Hashrate dropped to {{hash}} T/H
   
4) download and install newman: https://github.com/postmanlabs/newman 
   
5) Export from Postman your collection into coll.json & environmentals to env.json

6) Run script.sh in terminal by using watch:

chmod +x ./script.sh

watch -n x ./script.sh (example: watch -n 900 ./script.sh, run every 15min)

where x - is time interval in seconds at which to execute a command
