# vim: tabstop=2 shiftwidth=2 softtabstop=2

# Module: 'debootstrap'
# Author: Aimon Bustardo <me at aimon dot net>

Puppet::Type.type(:sysvinit).provide(:sysvinit) do
  desc "Puppet Module for managing sysv services via sysv-rc-conf"

  case Facter.fact(:osfamily).value
  when "RedHat"
    commands :sysvinit => "/sbin/chkconfig"
  when "Debian"
    commands :sysvinit => "/usr/sbin/sysv-rc-conf"
  end

  def name
    resource[:name]
  end

  def runlevels
    resource[:runlevels]
  end

  def on_off
    resource[:on_off]
  end

  def create
    sysvinit('--level', runlevels, name, on_off)
  end

  def exists?
    state = sysvinit('--list', name)
    state_r = state.split(" ")
    runlevels.split('').each{ |level|
      return false if state_r[level.to_i+1] != "#{level}:#{on_off}" 
    }
    return true
  end
end
