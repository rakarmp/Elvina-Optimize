custom_dns () {
echo ""
echo ""
printf "\e[101m\e[1;77mNOTE!\e[0m\n"
echo ""
echo "look at ${G}https://t.me/c/1932178615/42${F} for the best DNS recommendations"
echo ""
echo -ne "${G}Enter DNS hostname (E.g: dns.google):${F} "
read -s ppdns
settings put global private_dns_mode hostname
settings put global private_dns_specifier $ppdns
echo ""
echo "Done!"
}