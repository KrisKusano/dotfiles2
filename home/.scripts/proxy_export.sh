#!/bin/bash
# run: eval $(./proxy_export.sh proxyuser)

# the new one doesn't work?!
# proxip=tmnaproxy.gtm.tema.toyota.com
# proxport=80

proxip=http://10.25.255.27
proxport=8080

# replace a special chars with percent encoding
percentencode() {
  local strin=$1
  strin=${strin//%/%25}
  strin=${strin//!/%21}
  strin=${strin//#/%23}
  strin=${strin//$/%24}
  strin=${strin//\&/%26}
  strin=${strin//\'/%27}
  strin=${strin//(/%28}
  strin=${strin//)/%29}
  strin=${strin//\*/%2A}
  strin=${strin//\+/%2B}
  strin=${strin//,/%2B}
  strin=${strin//\//%2F}
  strin=${strin//\\/%5C}
  strin=${strin//:/%3A}
  strin=${strin//;/%3B}
  strin=${strin//=/%3D}
  strin=${strin//\?/%3F}
  strin=${strin//@/%40}
  strin=${strin//\[/%5B}
  strin=${strin//\]/%5D}
  strin=${strin//\"/%22}
  strin=${strin//-/%2D}
  strin=${strin//./%2E}
  strin=${strin//</%3C}
  strin=${strin//>/%3E}
  strin=${strin//^/%5E}
  strin=${strin//{/%7B}
  strin=${strin//|/%7C}
  strin=${strin//\}/%7D}
  strin=${strin//\~/%7E}
  echo $strin
}

while true; do
  read -p "Type in LDAP password: " proxpass
  proxpass=$(percentencode $proxpass)
  if [[ ! -z "$proxpass" ]]; then
	echo export http_proxy=http://$1:${proxpass}@${proxip}:${proxport};
	echo export https_proxy=https://$1:${proxpass}@${proxip}:${proxport};
	break
  fi
done
