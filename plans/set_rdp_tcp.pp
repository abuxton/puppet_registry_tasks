# implimentation of https://winaero.com/blog/change-rdp-port-windows-10/
# https://docs.microsoft.com/en-us/windows-server/remote/remote-desktop-services/clients/change-listening-port
plan puppet_registry_tasks::set_rdp_tcp(
  TargetSpec $nodes,
  Integer    $port  = 3389,
){

  apply_prep($nodes)

  apply($nodes){
    registry_value { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\PortNumber':
      ensure => present,
      type   => '(default)',
      data   => $port,
      notify => Exec['restart-computer']
    }
    exec { 'restart-computer':
      command     => ' Restart-Computer -computerName YourServer',
      provider    => powershell,
      refreshonly => true,
    }
  }
}
