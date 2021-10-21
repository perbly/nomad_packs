job [[ template "job_name" . ]] {

  periodic {
    cron = "[[ .cron_example.cron_schedule ]]"
    time_zone = "[[ .cron_example.time_zone ]]"
  }

  [[ template "region" . ]]
  datacenters = [ [[ range $idx, $dc := .cron_example.datacenters ]][[if $idx]],[[end]][[ $dc | quote ]][[ end ]] ]
  type = "batch"

  group "app" {
    count = [[ .cron_example.count ]]

    network {
      port "http" {
        to = 8000
      }
    }

    restart {
      attempts = 2
      interval = "30m"
      delay = "15s"
      mode = "fail"
    }

    task "server" {
      driver = "docker"

      config {
        image = "alpine:latest"
        ports = ["http"]
        args = ["echo", "${MESSAGE}"]
      }

      env {
        MESSAGE = [[.cron_example.message | quote]]
      }
    }
  }
}
