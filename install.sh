sudo apt install curl wget unzip grep screen openssl -y

mkdir minecraft_bedrock

DOWNLOAD_URL=$(curl -H "Accept-Encoding: identity" -H "Accept-Language: en" -s -L -A "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; BEDROCK-UPDATER)" https://minecraft.net/en-us/download/server/bedrock/ |  grep -o 'https://minecraft.azureedge.net/bin-linux/[^"]*') 

wget $DOWNLOAD_URL -O ./minecraft_bedrock/bedrock-server.zip 

unzip ./minecraft_bedrock/bedrock-server.zip -d ./minecraft_bedrock/

rm ./minecraft_bedrock/bedrock-server.zip

cd ./minecraft_bedrock

LD_LIBRARY_PATH=. ./bedrock_server
