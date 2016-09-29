# shodan-search
## WEBSITE
https://www.shodan.io/

## INSTALL SHODAN 
easy_install shodan

## ADD YOUR API KEY (you must login)
shodan init <you shodan API>

## MANUEL SHODAN SEARCH (exemple of commande).
shodan search windows-xp
shodan search --fields ip_str,port,hostnames windows-xp
shodan download search windows-xp
shodan parse search.json.gz --fields ip_str,port,hostnames
shodan parse search.json.gz --fields ip_str,port,asn
shodan parse search.json.gz --fields ip_str,port,org
shodan parse search.json.gz --fields ip_str,port,OS
shodan myip
shodan host 31.13.83.36

## TO GET HELP FOR A SPECIAL COMMANDE (ex: search)

shodan serach -h

## USE shodan_search.sh SCRIPT
How to use
	When the argument passed host use IP as a parameter
	Exemplo: shodan_search.sh host 192.168.1.1

	The above command will make one last fingerprint IP.

	Searching services and aplications
	Example: shodan_search.sh windows-xp
