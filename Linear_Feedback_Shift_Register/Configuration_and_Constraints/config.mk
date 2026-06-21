export DESIGN_NAME = LFSR
export PLATFORM    = nangate45

export VERILOG_FILES = $(DESIGN_HOME)/src/$(DESIGN_NAME)/LFSR.v
export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NAME)/constraint.sdc
export ABC_AREA      = 1

# Adders degrade GCD
export DIE_AREA= 0 0 80 80
export CORE_AREA = 10 10 70 70
export LEC_CHECK = 0
