#!/bin/bash

if [ $(id -u) != "0" ]
then
	printf "Run me as root\n"
	exit
fi


files_path="$PWD/tools/"

rm -r /opt/saf2/ 2>/dev/null

cp -r "$files_path../" /opt/saf2/
cp -r "$files_path"../saf2 /usr/bin/

cp -r "$files_path"auto-gen_reversetcp/windows_ps1-reverse-tcp /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/windows_ps1-download-string /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/linux_bash-reverse-tcp /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/linux_mknod_nc-reverse-tcp /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/linux_python-reverse-tcp /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/linux_perl-reverse-tcp /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/linux_php-reverse-tcp /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/web_php-simple-backdoor /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/web_php-reverse-tcp /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/linux_gawk-reverse-tcp /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/linux_golang-reverse-tcp /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/linux_ruby-reverse-tcp /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/linux_socat-reverse-tcp /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/linux_awk-reverse-tcp /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/linux_nodejs-reverse-tcp /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/linux_c-reverse-tcp /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/linux_openssl-reverse-tcp /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/linux_java-reverse-tcp /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/linux_telnet-reverse-tcp /usr/bin/
cp -r "$files_path"auto-gen_reversetcp/linux_cpan-reverse-tcp /usr/bin/

cp -r "$files_path"decoders/binarydecode /usr/bin/
cp -r "$files_path"decoders/decimaldecode /usr/bin/
cp -r "$files_path"decoders/octaldecode /usr/bin/
cp -r "$files_path"decoders/hexadecode /usr/bin/
cp -r "$files_path"decoders/base64decode /usr/bin/
cp -r "$files_path"decoders/base32decode /usr/bin/

cp -r "$files_path"encoders/base64encode /usr/bin/
cp -r "$files_path"encoders/base32encode /usr/bin/
cp -r "$files_path"encoders/binaryencode /usr/bin/
cp -r "$files_path"encoders/decimalencode /usr/bin/
cp -r "$files_path"encoders/hexaencode /usr/bin/
cp -r "$files_path"encoders/octalencode /usr/bin/

cp -r "$files_path"exploits/UnrealIrcd-3.2.8.1-cve-2010-2075-exploit.sh  /usr/bin/
cp -r "$files_path"exploits/lfi2rce /usr/bin/

cp -r "$files_path"scanners/bports.sh /usr/bin/
cp -r "$files_path"scanners/lfiscan /usr/bin/
cp -r "$files_path"scanners/os-detection.sh /usr/bin/
cp -r "$files_path"scanners/pingscan.sh /usr/bin/
cp -r "$files_path"scanners/pyports.py /usr/bin/
cp -r "$files_path"scanners/webspider /usr/bin/
cp -r "$files_path"stego/evil-avatar /usr/bin/

cp -r "$files_path"webscrappers/gtfobins-web-scrapper.py /usr/bin/

chmod +x /usr/bin/saf2
chmod +x /usr/bin/windows_ps1-reverse-tcp
chmod +x /usr/bin/windows_ps1-download-string
chmod +x /usr/bin/linux_bash-reverse-tcp
chmod +x /usr/bin/linux_mknod_nc-reverse-tcp
chmod +x /usr/bin/linux_python-reverse-tcp
chmod +x /usr/bin/linux_perl-reverse-tcp
chmod +x /usr/bin/linux_php-reverse-tcp
chmod +x /usr/bin/linux_gawk-reverse-tcp
chmod +x /usr/bin/linux_golang-reverse-tcp
chmod +x /usr/bin/linux_ruby-reverse-tcp
chmod +x /usr/bin/linux_socat-reverse-tcp
chmod +x /usr/bin/linux_awk-reverse-tcp
chmod +x /usr/bin/linux_nodejs-reverse-tcp
chmod +x /usr/bin/linux_c-reverse-tcp
chmod +x /usr/bin/linux_openssl-reverse-tcp
chmod +x /usr/bin/linux_java-reverse-tcp
chmod +x /usr/bin/linux_telnet-reverse-tcp
chmod +x /usr/bin/linux_cpan-reverse-tcp
chmod +x /usr/bin/web_php-simple-backdoor
chmod +x /usr/bin/web_php-reverse-tcp

chmod +x /usr/bin/binarydecode
chmod +x /usr/bin/decimaldecode
chmod +x /usr/bin/octaldecode
chmod +x /usr/bin/hexadecode
chmod +x /usr/bin/base64decode
chmod +x /usr/bin/base32decode

chmod +x /usr/bin/base64encode
chmod +x /usr/bin/base32encode
chmod +x /usr/bin/binaryencode
chmod +x /usr/bin/decimalencode
chmod +x /usr/bin/hexaencode
chmod +x /usr/bin/octalencode

chmod +x /usr/bin/UnrealIrcd-3.2.8.1-cve-2010-2075-exploit.sh
chmod +x /usr/bin/lfi2rce
chmod +x /usr/bin/bports.sh
chmod +x /usr/bin/lfiscan
chmod +x /usr/bin/os-detection.sh
chmod +x /usr/bin/pingscan.sh
chmod +x /usr/bin/pyports.py
chmod +x /usr/bin/webspider
chmod +x /usr/bin/evil-avatar
chmod +x /usr/bin/gtfobins-web-scrapper.py

printf "Done.\n"
