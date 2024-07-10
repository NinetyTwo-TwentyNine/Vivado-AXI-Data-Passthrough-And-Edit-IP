# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  set COM_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "COM_AXI_DATA_WIDTH" -widget comboBox]
  set_property tooltip {Width of S_AXI/M_AXI data bus} ${COM_AXI_DATA_WIDTH}
  set COM_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "COM_AXI_ADDR_WIDTH" -widget comboBox]
  set_property tooltip {Width of S_AXI/M_AXI address bus} ${COM_AXI_ADDR_WIDTH}
  set AXI_READ_RPLC_AMOUNT [ipgui::add_param $IPINST -name "AXI_READ_RPLC_AMOUNT"]
  set_property tooltip {Axi Read Replacements Amount} ${AXI_READ_RPLC_AMOUNT}
  set AXI_WRITE_RPLC_AMOUNT [ipgui::add_param $IPINST -name "AXI_WRITE_RPLC_AMOUNT"]
  set_property tooltip {Axi Write Replacements Amount} ${AXI_WRITE_RPLC_AMOUNT}
  set C_S00_AXI_BASEADDR [ipgui::add_param $IPINST -name "C_S00_AXI_BASEADDR"]
  set_property tooltip {Where to write to edit data replacement parameters} ${C_S00_AXI_BASEADDR}

}

proc update_PARAM_VALUE.AXI_READ_RPLC_AMOUNT { PARAM_VALUE.AXI_READ_RPLC_AMOUNT } {
	# Procedure called to update AXI_READ_RPLC_AMOUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_READ_RPLC_AMOUNT { PARAM_VALUE.AXI_READ_RPLC_AMOUNT } {
	# Procedure called to validate AXI_READ_RPLC_AMOUNT
	return true
}

proc update_PARAM_VALUE.AXI_WRITE_RPLC_AMOUNT { PARAM_VALUE.AXI_WRITE_RPLC_AMOUNT } {
	# Procedure called to update AXI_WRITE_RPLC_AMOUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_WRITE_RPLC_AMOUNT { PARAM_VALUE.AXI_WRITE_RPLC_AMOUNT } {
	# Procedure called to validate AXI_WRITE_RPLC_AMOUNT
	return true
}

proc update_PARAM_VALUE.COM_AXI_ADDR_WIDTH { PARAM_VALUE.COM_AXI_ADDR_WIDTH } {
	# Procedure called to update COM_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COM_AXI_ADDR_WIDTH { PARAM_VALUE.COM_AXI_ADDR_WIDTH } {
	# Procedure called to validate COM_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.COM_AXI_DATA_WIDTH { PARAM_VALUE.COM_AXI_DATA_WIDTH } {
	# Procedure called to update COM_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COM_AXI_DATA_WIDTH { PARAM_VALUE.COM_AXI_DATA_WIDTH } {
	# Procedure called to validate COM_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_M00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_M00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_DATA_WIDTH { PARAM_VALUE.C_M00_AXI_DATA_WIDTH } {
	# Procedure called to update C_M00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_DATA_WIDTH { PARAM_VALUE.C_M00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_M00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.COM_AXI_DATA_WIDTH { MODELPARAM_VALUE.COM_AXI_DATA_WIDTH PARAM_VALUE.COM_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COM_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.COM_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.COM_AXI_ADDR_WIDTH { MODELPARAM_VALUE.COM_AXI_ADDR_WIDTH PARAM_VALUE.COM_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COM_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.COM_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH PARAM_VALUE.C_M00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_READ_RPLC_AMOUNT { MODELPARAM_VALUE.AXI_READ_RPLC_AMOUNT PARAM_VALUE.AXI_READ_RPLC_AMOUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_READ_RPLC_AMOUNT}] ${MODELPARAM_VALUE.AXI_READ_RPLC_AMOUNT}
}

proc update_MODELPARAM_VALUE.AXI_WRITE_RPLC_AMOUNT { MODELPARAM_VALUE.AXI_WRITE_RPLC_AMOUNT PARAM_VALUE.AXI_WRITE_RPLC_AMOUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_WRITE_RPLC_AMOUNT}] ${MODELPARAM_VALUE.AXI_WRITE_RPLC_AMOUNT}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_BASEADDR { MODELPARAM_VALUE.C_S00_AXI_BASEADDR PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_BASEADDR}] ${MODELPARAM_VALUE.C_S00_AXI_BASEADDR}
}

