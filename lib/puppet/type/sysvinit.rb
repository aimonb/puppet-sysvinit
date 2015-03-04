# vim: tabstop=2 shiftwidth=2 softtabstop=2

# Module: 'sysvinit'
# Author: Aimon Bustardo <me at aimon dot net>

Puppet::Type.newtype(:sysvinit) do
  @doc = "Puppet interface to sysv-rc-conf."

  ensurable

  newparam(:name, :namevar => :true) do
     desc "The name of the service to configure."
     newvalues(/^([a-z0-9-]+)$/i)
  end 

  newproperty(:runlevels) do
     desc "Compacted string of runlevels in which this service will be started."
     newvalues(/^(0?1?2?3?4?5?6?)$/i)
  end 
  
  newproperty(:on_off) do
    desc "Set 'runlevels' On or Off"
    newvalues(/^(on)|(off)$/i)
  end

end
