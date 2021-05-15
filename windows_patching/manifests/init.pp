class windows_patching(
  $target_group = "Unassigned Computer",
  $target_group_enabled = 1,
  $wsus_server_url = 'http://wsus:80'
)
{


  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\TargetGroup':
    ensure => present,
    type   => string,
    data   => $target_group,
  }

  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\TargetGroupEnabled':
    ensure => present,
    type   => dword,
    data   => $target_group_enabled,
  }

  class { 'wsus_client':
   server_url             => $wsus_server_url #'http://192.168.105.227:80',           # WSUS Server
   enable_status_server   => true,                                   # Send status to WSUS too
    auto_update_option     => 'AutoNotify',                          # automatically download updates and notify for install
  }
}
