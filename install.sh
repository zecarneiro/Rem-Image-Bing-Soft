#!/bin/sh
# José M. C. N.
# 13/08/2017

comandoSudo="sudo"
comandoMkdir="mkdir"
comandoCp="cp"
comandoChmod="chmod +x"
pathInstalacao="/opt/Remove_img_Bing"
pathBoot="$(echo $HOME)/.config/autostart"
scriptNome="remove_img_bing.sh"
atalhoNome="Remove_Img_Bing.desktop"

echo "Instalando..."

$comandoSudo $comandoMkdir $pathInstalacao
$comandoSudo $comandoCp $scriptNome $pathInstalacao/
$comandoCp $atalhoNome $pathBoot
$comandoSudo $comandoChmod $pathInstalacao/$scriptNome
$comandoChmod $pathBoot/$atalhoNome

echo "Instalação concluída"