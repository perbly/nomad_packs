// allow nomad-pack to set the job name

[[- define "job_name" -]]
[[- if eq .cron_example.job_name "" -]]
[[- .nomad_pack.pack.name | quote -]]
[[- else -]]
[[- .cron_example.job_name | quote -]]
[[- end -]]
[[- end -]]

// only deploys to a region if specified

[[- define "region" -]]
[[- if not (eq .cron_example.region "") -]]
region = [[ .cron_example.region | quote]]
[[- end -]]
[[- end -]]

[[- define "datacenter" -]]
[[- if not (eq .cron_example.datacenter "") -]]
datacenter = [[ .cron_example.datacenter | quote]]
[[- end -]]
[[- end -]]