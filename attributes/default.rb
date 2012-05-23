# 
# Attributes for pgpool2
#

# General Settings
default['pgpool2']['port'] = "5432"


# Load Balancing
default['pgpool2']['load_balance_mode'] = 'off'

# Master Slave
default['pgpool2']['master_slave_mode'] = 'off'
default['pgpool2']['master_slave_sub_mode'] = 'slony'