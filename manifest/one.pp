# Turn off interfering services
include interfering_services

# Install and enable ntp
include ntp

# Establish ordering
Class['interfering_services'] -> Class['ntp']
