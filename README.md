# ysoserial-generate-all-payloads
### \-> Generates all ysoserial payloads, and can also let you know which payload worked.
### Usage:
```Bash
./generate_payloads.sh <commands>
./generate_payloads.sh --curl 'collaborator-link' #Adds payload name as a subdomain, so you can check which payload worked.
./generate_payloads.sh --request 'curl' 'collaborator-link' #Same as --curl, but you can choose the command to use. E.g. use ping instead of curl.
```
### Script: [here](https://github.com/WafflesExploits/ysoserial-generate-all-payloads/blob/main/generate_payloads.sh) to generate all ysoserial payloads for you.

### Payloads list: [here](https://github.com/WafflesExploits/ysoserial-generate-all-payloads/blob/main/payloads.txt)

### You can also send a HTTP request to your collaborator link, with the subdomain being the name of the payload. This way, you know which payload works:

- ![63da3eeffa1e509d262abd53b06081ec.png](https://github.com/WafflesExploits/ysoserial-generate-all-payloads/assets/15943431/00e679ac-72a4-4ce2-abf4-1ee0aa1b0eca)
- ![c8f4434126d5a991d19ece6635a66b9b.png](https://github.com/WafflesExploits/ysoserial-generate-all-payloads/assets/15943431/7bafa210-30a7-46ce-a64e-a59ad1faa63e)
- ![78fee57aa122b970f939e482faeb3703.png](https://github.com/WafflesExploits/ysoserial-generate-all-payloads/assets/15943431/b39eeca3-7214-455a-9ecc-874087229b1b)
