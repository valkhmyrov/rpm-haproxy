config_version = 2

name = "famous_condor"

mode = "single"

dataplaneapi {
  host = "127.0.0.1"
  port = 5555

  user "admin" {
    insecure = true
    password = "change_me"
  }

  transaction {
    transaction_dir = "/tmp/haproxy"
  }

  advertised {}
}

haproxy {
  config_file = "/etc/haproxy/haproxy.cfg"
  haproxy_bin = "/usr/sbin/haproxy"

  reload {
    reload_delay = 5
    reload_cmd   = "/usr/bin/systemctl reload haproxy"
    restart_cmd  = "/usr/bin/systemctl restart haproxy"
  }
}

log_targets = [
  {
    log_to           = "stdout"
    log_file         = ""
    log_level        = "info"
    log_format       = "json"
    ACLFormat        = ""
    syslog_address   = ""
    syslog_protocol  = ""
    syslog_tag       = ""
    syslog_level     = ""
    syslog_facillity = ""
    SyslogMsgID      = ""

    log_types = [
      "access",
      "app",
    ]
  }
]
