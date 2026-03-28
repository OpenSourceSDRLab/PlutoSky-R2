# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BURST_COUNT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CHANNEL_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DEFAULT_POLARITY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "REGISTER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SYNC_COUNT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SYNC_EXTERNAL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SYNC_EXTERNAL_CDC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SYNC_INTERNAL" -parent ${Page_0}


}

proc update_PARAM_VALUE.BURST_COUNT_WIDTH { PARAM_VALUE.BURST_COUNT_WIDTH } {
	# Procedure called to update BURST_COUNT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BURST_COUNT_WIDTH { PARAM_VALUE.BURST_COUNT_WIDTH } {
	# Procedure called to validate BURST_COUNT_WIDTH
	return true
}

proc update_PARAM_VALUE.CHANNEL_COUNT { PARAM_VALUE.CHANNEL_COUNT } {
	# Procedure called to update CHANNEL_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHANNEL_COUNT { PARAM_VALUE.CHANNEL_COUNT } {
	# Procedure called to validate CHANNEL_COUNT
	return true
}

proc update_PARAM_VALUE.DEFAULT_POLARITY { PARAM_VALUE.DEFAULT_POLARITY } {
	# Procedure called to update DEFAULT_POLARITY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEFAULT_POLARITY { PARAM_VALUE.DEFAULT_POLARITY } {
	# Procedure called to validate DEFAULT_POLARITY
	return true
}

proc update_PARAM_VALUE.ID { PARAM_VALUE.ID } {
	# Procedure called to update ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ID { PARAM_VALUE.ID } {
	# Procedure called to validate ID
	return true
}

proc update_PARAM_VALUE.REGISTER_WIDTH { PARAM_VALUE.REGISTER_WIDTH } {
	# Procedure called to update REGISTER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REGISTER_WIDTH { PARAM_VALUE.REGISTER_WIDTH } {
	# Procedure called to validate REGISTER_WIDTH
	return true
}

proc update_PARAM_VALUE.SYNC_COUNT_WIDTH { PARAM_VALUE.SYNC_COUNT_WIDTH } {
	# Procedure called to update SYNC_COUNT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SYNC_COUNT_WIDTH { PARAM_VALUE.SYNC_COUNT_WIDTH } {
	# Procedure called to validate SYNC_COUNT_WIDTH
	return true
}

proc update_PARAM_VALUE.SYNC_EXTERNAL { PARAM_VALUE.SYNC_EXTERNAL } {
	# Procedure called to update SYNC_EXTERNAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SYNC_EXTERNAL { PARAM_VALUE.SYNC_EXTERNAL } {
	# Procedure called to validate SYNC_EXTERNAL
	return true
}

proc update_PARAM_VALUE.SYNC_EXTERNAL_CDC { PARAM_VALUE.SYNC_EXTERNAL_CDC } {
	# Procedure called to update SYNC_EXTERNAL_CDC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SYNC_EXTERNAL_CDC { PARAM_VALUE.SYNC_EXTERNAL_CDC } {
	# Procedure called to validate SYNC_EXTERNAL_CDC
	return true
}

proc update_PARAM_VALUE.SYNC_INTERNAL { PARAM_VALUE.SYNC_INTERNAL } {
	# Procedure called to update SYNC_INTERNAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SYNC_INTERNAL { PARAM_VALUE.SYNC_INTERNAL } {
	# Procedure called to validate SYNC_INTERNAL
	return true
}


proc update_MODELPARAM_VALUE.ID { MODELPARAM_VALUE.ID PARAM_VALUE.ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ID}] ${MODELPARAM_VALUE.ID}
}

proc update_MODELPARAM_VALUE.CHANNEL_COUNT { MODELPARAM_VALUE.CHANNEL_COUNT PARAM_VALUE.CHANNEL_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHANNEL_COUNT}] ${MODELPARAM_VALUE.CHANNEL_COUNT}
}

proc update_MODELPARAM_VALUE.DEFAULT_POLARITY { MODELPARAM_VALUE.DEFAULT_POLARITY PARAM_VALUE.DEFAULT_POLARITY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEFAULT_POLARITY}] ${MODELPARAM_VALUE.DEFAULT_POLARITY}
}

proc update_MODELPARAM_VALUE.REGISTER_WIDTH { MODELPARAM_VALUE.REGISTER_WIDTH PARAM_VALUE.REGISTER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REGISTER_WIDTH}] ${MODELPARAM_VALUE.REGISTER_WIDTH}
}

proc update_MODELPARAM_VALUE.BURST_COUNT_WIDTH { MODELPARAM_VALUE.BURST_COUNT_WIDTH PARAM_VALUE.BURST_COUNT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BURST_COUNT_WIDTH}] ${MODELPARAM_VALUE.BURST_COUNT_WIDTH}
}

proc update_MODELPARAM_VALUE.SYNC_INTERNAL { MODELPARAM_VALUE.SYNC_INTERNAL PARAM_VALUE.SYNC_INTERNAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SYNC_INTERNAL}] ${MODELPARAM_VALUE.SYNC_INTERNAL}
}

proc update_MODELPARAM_VALUE.SYNC_EXTERNAL { MODELPARAM_VALUE.SYNC_EXTERNAL PARAM_VALUE.SYNC_EXTERNAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SYNC_EXTERNAL}] ${MODELPARAM_VALUE.SYNC_EXTERNAL}
}

proc update_MODELPARAM_VALUE.SYNC_EXTERNAL_CDC { MODELPARAM_VALUE.SYNC_EXTERNAL_CDC PARAM_VALUE.SYNC_EXTERNAL_CDC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SYNC_EXTERNAL_CDC}] ${MODELPARAM_VALUE.SYNC_EXTERNAL_CDC}
}

proc update_MODELPARAM_VALUE.SYNC_COUNT_WIDTH { MODELPARAM_VALUE.SYNC_COUNT_WIDTH PARAM_VALUE.SYNC_COUNT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SYNC_COUNT_WIDTH}] ${MODELPARAM_VALUE.SYNC_COUNT_WIDTH}
}

