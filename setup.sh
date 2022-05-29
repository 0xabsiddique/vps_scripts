#!/bin/bash
sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y git
sudo apt-get install -y rename
sudo apt-get install -y xargs
sudo apt-get install screen;
echo "done"

#install go
if [[ -z "$GOPATH" ]];then
echo "It looks like go is not installed, would you like to install it now"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
                yes)

					echo "Installing Golang"
					wget https://dl.google.com/go/go1.14.6.linux-amd64.tar.gz
					sudo tar -xvf go1.14.6.linux-amd64.tar.gz
					sudo mv go /usr/local
					export GOROOT=/usr/local/go
					export GOPATH=$HOME/go
					export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
					echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
					echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
					echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
					source ~/.bash_profile
					sleep 1
					break
					;;
				no)
					echo "Please install go and rerun this script"
					echo "Aborting installation..."
					exit 1
					;;
	esac	
done
fi


#create a tools folder in ~/
mkdir ~/tools
mkdir ~/.gf
mkdir ~/Recon;
dir=~/tools;
cd ~/tools/

go get github.com/michenriksen/aquatone
sudo snap install chromium
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip install -r requirements.txt
cd ~/tools/

git clone https://github.com/tomdev/teh_s3_bucketeers.git
cd ~/tools/

git clone https://github.com/wpscanteam/wpscan.git
cd wpscan*
sudo gem install bundler && bundle install --without test
cd ~/tools/

git clone https://github.com/jobertabma/virtual-host-discovery.git
cd ~/tools/

git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd ~/tools/

git clone https://github.com/guelfoweb/knock.git
cd ~/tools/

sudo apt-get install -y nmap

git clone https://github.com/blechschmidt/massdns.git
cd ~/tools/massdns
make
cd ~/tools/

git clone https://github.com/yassineaboukir/asnlookup.git
cd ~/tools/asnlookup
pip install -r requirements.txt
cd ~/tools/

git clone https://github.com/nahamsec/crtndstry.git

echo "downloading Seclists"
cd ~/tools/
git clone https://github.com/danielmiessler/SecLists.git
cd ~/tools/SecLists/Discovery/DNS/
##THIS FILE BREAKS MASSDNS AND NEEDS TO BE CLEANED
cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt
cd ~/tools/
echo "done"

apt install -y awscli

go get -u github.com/m4ll0k/Aron;
go get github.com/Ice3man543/SubOver;
go get -u github.com/tomnomnom/assetfinder;
go get -u github.com/tomnomnom/fff;
go get github.com/tomnomnom/hacks/filter-resolved;
go get -u github.com/tomnomnom/hacks/gittrees;
go get github.com/tomnomnom/hacks/waybackurls;
go get -u github.com/tomnomnom/hacks/unisub;
go get -u -v github.com/lukasikic/subzy;
go install -v github.com/lukasikic/subzy;
go get -u github.com/tomnomnom/unfurl;
go get github.com/tomnomnom/burl;
go get -u github.com/tomnomnom/meg;
go get -u github.com/j3ssie/metabigor;
go get -u github.com/rverton/webanalyze;
pip install requests;
go get -u github.com/c-bata/go-prompt;
go get github.com/hahwul/websocket-connection-smuggler;
GO111MODULE=on go get -u -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei;
git clone https://github.com/projectdiscovery/nuclei-templates $dir/nuclei-templates;
git clone https://github.com/tomnomnom/hacks $dir/hacks;
git clone https://github.com/tomnomnom/gf $dir/gf;
git clone https://github.com/zdresearch/OWASP-Nettacker $dir/OWASP-Nettacker;
go get github.com/haccer/subjack;
go get github.com/eth0izzle/shhgit;
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/cmd/subfinder;
go get github.com/tiagorlampert/CHAOS;
GO111MODULE=on go get -u github.com/projectdiscovery/chaos-client/cmd/chaos;
GO111MODULE=on go get -u -v github.com/hahwul/dalfox;
go get github.com/ffuf/ffuf;
GO111MODULE=on go get -u -v github.com/lc/gau;
go get -u github.com/tomnomnom/gf;
cp -r /usr/local/go/src/github.com/tomnomnom/gf/examples ~/.gf/;
go get github.com/003random/getJS;
go get github.com/subfinder/goaltdns;
go get github.com/OJ/gobuster;
go get -u github.com/sensepost/gowitness;
go get -u github.com/jaeles-project/gospider;
go get github.com/hakluke/hakcheckurl;
go get github.com/hakluke/hakrawler;
go get github.com/hakluke/hakrevdns;
go get -u github.com/tomnomnom/httprobe;
GO111MODULE=on go get -u -v github.com/projectdiscovery/httpx/cmd/httpx;
git clone https://github.com/udit-thakkur/AdvancedKeyHacks $dir/AdvancedKeyHacks;
git clone https://github.com/streaak/keyhacks $dir/keyhacks;
git clone https://github.com/s0md3v/Arjun $dir/Arjun;
git clone https://github.com/NullArray/AutoSploit $dir/AutoSploit;
git clone https://github.com/devanshbatham/FavFreak $dir/FavFreak;
git clone https://github.com/MichaelStott/CRLF-Injection-Scanner $dir/CRLF-Injection-Scanner;
git clone https://github.com/1N3/BruteX $dir/BruteX;
git clone https://github.com/AlexisAhmed/BugBountyTools $dir/BugBountyTools;
git clone https://github.com/gwen001/BBvuln $dir/BBvuln;
git clone https://github.com/D35m0nd142/LFISuite $dir/LFISuite;
git clone https://github.com/GerbenJavado/LinkFinder $dir/LinkFinder;
git clone https://github.com/pwn0sec/PwnXSS $dir/PwnXSS;
git clone https://github.com/hahwul/XSpear $dir/XSpear;
git clone https://github.com/jordanpotti/CloudScraper $dir/CloudScraper;
git clone https://github.com/swisskyrepo/SSRFmap $dir/SSRFmap;
git clone https://github.com/m4ll0k/SecretFinder $dir/SecretFinder;
git clone https://github.com/s0md3v/Striker $dir/Striker;
git clone https://github.com/devanshbatham/ParamSpider $dir/ParamSpider;
git clone https://github.com/j3ssie/Osmedeus $dir/Osmedeus;
git clone https://github.com/codingo/NoSQLMap $dir/NoSQLMap;
git clone https://github.com/nsonaniya2010/SubDomainizer $dir/SubDomainizer;
git clone https://github.com/s0md3v/XSStrike $dir/XSStrike;
GO111MODULE=on go get -u -v github.com/projectdiscovery/dnsprobe;
git clone https://github.com/maurosoria/dirsearch $dir/dirsearch;
git clone https://github.com/dwisiswant0/apkleaks $dir/apkleaks;
git clone https://github.com/ozguralp/gmapsapiscanner $dir/gmapsapiscanner;
git clone https://github.com/defparam/smuggler $dir/smuggler;
git clone https://github.com/epsylon/Smuggler $dir/epsylon_Smuggler;
git clone https://github.com/kowainik/smuggler $dir/kowa_smuggler;
GO111MODULE=on go get -u -v github.com/projectdiscovery/shuffledns/cmd/shuffledns;
git clone https://github.com/p4pentest/crtsh $dir/crtsh;
git clone https://github.com/XecLabs/Theif $dir/Theif;
git clone https://github.com/YashGoti/crtsh.py $dir/crtsh.py;
git clone https://github.com/epinna/tplmap $dir/tplmap;
git clone https://github.com/xmendez/wfuzz $dir/wfuzz;
git clone https://github.com/secdec/xssmap $dir/xssmap;
git clone https://github.com/hahwul/websocket-connection-smuggler $dir/websocket-connection-smuggler;
git clone https://github.com/rastating/wordpress-exploit-framework $dir/wordpress-exploit-framework;
git clone https://github.com/1ndianl33t/Gf-Patterns;
mv ~/Gf-Patterns/*.json ~/.gf/;
rm -rf ~/Gf-Patterns;
wget https://raw.githubusercontent.com/devanshbatham/ParamSpider/master/gf_profiles/potential.json;
mv ~/potential.json ~/.gf/;
echo 'source /usr/local/go/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc;

echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All tools are set up in ~/tools"
ls -la
