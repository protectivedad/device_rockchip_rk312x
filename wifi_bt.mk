#
# wifi bt config
#

#
# BOARD_CONNECTIVITY_VENDOR:
# for broadcom, realteck wifi, bt
# Broadcom:
#           rk90x,
#           ap6xxx,
#           ap6xxx_gps,      #like ap6476
#           ap6xxx_nfc,      #like ap6441 & ap6493
#
# for mtk wifi, bt
# MediaTek: 
#           combo_mt66xx,
#           mt5931_6622,   
#
# for realtek wifi, bt & rda587x bt
# RealTek:    
#         
#           rtl81xx,         #only wifi
#           rtl8723as,       #like  rtl8723as sdio
#           rtl8723bs,       #like  rtl8723bs sdio
#           rtl8723au,       #like  rtl8723au usb
#           rtl8723bu,       #like  rtl8723bu usb
#           rda587x,         #like  rtl8188+rda587x
#           mt6622,          #like  rtl8188+mt6622 
#
# for Espressif wifi & Beken bt
# Espressif:
#           esp8089_bk3515,
#           esp8089,         #only wifi
#           mt6622,          #like esp8089+mt6622
#           rda587x,         #like esp8089+rda587x
#
# MediaTek_mt7601:
#	    mt7601           #only wifi
#           rda587x,         #like  rtl8188+rda587x
#           mt6622,          #like  rtl8188+mt6622 
#
<<<<<<< HEAD
#BOARD_CONNECTIVITY_VENDOR := Espressif
#BOARD_CONNECTIVITY_MODULE := esp8089

=======
>>>>>>> 0252b0969f9e4594d9a6337a36f1f42fb713d272
BOARD_CONNECTIVITY_VENDOR := RealTek
BOARD_CONNECTIVITY_MODULE := rtl81xx
