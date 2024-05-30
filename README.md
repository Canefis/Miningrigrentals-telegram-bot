# Postman-pre-request-script-for-mrr
Miningrigrentals telegram bot

Usage:

https://www.miningrigrentals.com/api/v2/

1) Place scripts into pre-request script tab and post-request script tab

2) Create environmental variables "api_key" & "api_secret", "chat_id", "bot_id", "hashrate15min" & "hash"

3) Create 2 requests in your collection:
   
   my request1:
   
   GET https://www.miningrigrentals.com/api/v2/rig/ID
   ID - from miningrigrentals rig id number, which you like to monitor hashrate


 
   
   telegram bot:
   
   POST https://api.telegram.org/{{bot_id}}/sendMessage?chat_id={{chat_id}}&text=Hashrate dropped to {{hash}} T/H
   
