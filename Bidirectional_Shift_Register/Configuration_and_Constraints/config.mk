export DESIGN_NAME = bi_shift_reg
export PLATFORM    = nangate45

export VERILOG_FILES = $(DESIGN_HOME)/src/$(DESIGN_NAME)/bi_shift_reg.v
export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NAME)/constraint.sdc
export ABC_AREA      = 1

# Adders degrade GCD
export DIE_AREA= 0 0 150 150
export CORE_AREA = 10 10 140 140
export LEC_CHECK = 0
