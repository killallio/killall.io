#!/bin/sh

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
# Description: Open Vivado project GUI
#
# Last update: 2022-06-08 10:06:56
#
##################################################################################

echo "> Open Vivado GUI..."
vivado -nojournal -nolog -notrace ../killallio_sig_sync/killallio_sig_sync.xpr
