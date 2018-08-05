class cloudalbania::files (
  $agentrun = present,
  ) {
  file { '/usr/sbin/agentrun':
    ensure => $agentrun,
    source => 'puppet:///modules/cloudalbania/agentrun',
    mode    => '0750',
  }
}

