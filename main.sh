#!/usr/bin/env bash
# by: @Mike90s15
# https://github.com/mike90s15
#
#
# Termux Banner
# Sutariya Parixit: Do Not Copy Or Modify
# Mike Edwards: Okay, But I'll Modify
#
#
trap _exit EXIT
function _exit() 
{
  clear
  xdg-open https://instagram.com/mike90s15 &>/dev/null
  printf "\nMike90s15 say: Goodbye, see you!\n"
  exit 0
}
xdg-open https://t.me/channel_90s15 &>/dev/null
clear
printf "\e[1;36m Atualizando o terminal\e[m\n"
pkg update -y &>/dev/null
pkg upgrade -y &>/dev/null
for i in "figlet" "toilet" "cowsay" "ruby"; do
  [[ -f ".okay" ]] && break
  printf "\e[1;34m  Instalando \e[1;36m${i^}\e[m\n"
  pkg install -y "${i}" &>/dev/null
done
[[ -f ".okay" ]] || (printf "\e[1;34m  Instalando \e[1;36mlolcat\e[m\n" || gem install lolcat &>/dev/null)
figlet -f big Done !!! | lolcat
printf "\n\n\e[1m\e[32mDesenvolvido Por:\e[33m Mike Edwards (90s15)\n\n"
sleep 2
clear
figlet -f small TermuxBanner | lolcat
echo -e "\e[1;32m\e[1m Ajuda de segurança para hackers éticos... \n"
printf "\e[1;32m\e[1m            -Mike Edwards \n"
read -p $'\e[1m\e[33m\n Qual é seu \e[33mnome para o \e[31mBanner\e[32m: ' varbanner
read -p $'\n\e[1m\e[33m Qual é sue nome para o Cowsay\e[32m: ' varcowsay
shell=".bashrc"
[[ "${SHELL}" == "zsh" ]] && shell=".zshrc"
> /data/data/com.termux/files/usr/etc/motd
echo -e "clear\ncowsay -f eyes \"$varcowsay\" | lolcat\ntoilet -f big '$varbanner' -F gay | lolcat" >"$HOME/${shell}Banner.sh"
[[ -f ".okay" ]] || (echo "source \$HOME/${shell}Banner.sh" >>"$HOME/${shell}" && touch ".okay")

