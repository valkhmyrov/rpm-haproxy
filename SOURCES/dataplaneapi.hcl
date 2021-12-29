config_version = 2

name = "legal_titmouse"

mode = "single"

status = ""

dataplaneapi {
  host = "0.0.0.0"
  port = 5555

  user "admin" {
    insecure = true
    password = "change_me"
  }

  transaction {
    transaction_dir = "/tmp/haproxy"
  }

  advertised {
    api_address = ""
    api_port    = 0
  }
}

haproxy {
  config_file = "/etc/haproxy/haproxy.cfg"
  haproxy_bin = "/usr/sbin/haproxy"

  reload {
    reload_delay = 5
    reload_cmd   = "service haproxy reload"
    restart_cmd  = "service haproxy restart"
  }
}
