#!/bin/bash

#Scripts que cargan las Transformaciones individiales
#Falta ponerlos con Kitchen en forma de JOB

echo "===============$(date)==========================" >> /root/Transformations/DWDNK/DWDNK.log
/opt/data-integration/pan.sh -file="/root/Transformations/DWDNK/INVENTARIO/DNK_INVENTARIO_PLANA.ktr" -level=Minimal >> /root/Transformations/DWDNK/DWDNK.log
/opt/data-integration/pan.sh -file="/root/Transformations/DWDNK/COMPRAS/DNK_COMPRAS_PLANA.ktr" -level=Minimal >> /root/Transformations/DWDNK/DWDNK.log
/opt/data-integration/pan.sh -file="/root/Transformations/DWDNK/Trans/INVENTARIO PREDW 2.0.ktr" -level=Minimal >> /root/Transformations/DWDNK/DWDNK.log
/opt/data-integration/pan.sh -file="/root/Transformations/DWDNK/Trans/SELL-INN PREDW.ktr" -level=Minimal >> /root/Transformations/DWDNK/DWDNK.log

