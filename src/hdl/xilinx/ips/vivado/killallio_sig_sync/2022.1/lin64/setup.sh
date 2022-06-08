##################################################################################
#                                 _             _
#                                | |_  ___ _ __(_)__ _
#                                | ' \/ -_) '_ \ / _` |
#                                |_||_\___| .__/_\__,_|
#                                         |_|
#
##################################################################################
#
# Company: hepia
# Author: Joachim Schmidt <joachim.schmidt@semaphore-networks.ch
#
# Project Name: killallio_sig_sync
# Target Device: hepia-cores.ch:scalp_node:part0:0.1 xc7z015clg485-2
# Tool version: 2022.1
# Description: TCL script creating aliases for Vivado project management scripts
#
# Last update: 2022-06-08 10:06:56
#
##################################################################################

# Create aliases
alias create_project='cd .scripts && ./create_prj_killallio_sig_sync.sh && cd ..'
alias clean_project='cd .scripts && ./clean_prj_killallio_sig_sync.sh && cd ..'
alias export_hw='cd .scripts && ./export_hw_killallio_sig_sync.sh && cd ..'
alias gen_bitstream='cd .scripts && ./gen_bitstream_killallio_sig_sync.sh && cd ..'
alias load_bitstream='cd .scripts && ./load_bitstream_killallio_sig_sync.sh && cd ..'
alias open_gui='cd .scripts && ./open_prj_killallio_sig_sync.sh && cd ..'
