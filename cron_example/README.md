# Example cronjob 

This pack is an example of a nomad cronjob that runs at a specific cron schedule

## Changing the schedule

##### https://crontab.guru/


To change the message this server responds with, change the "message" variable when running the pack.

```
nomad-pack run cron_example --var cron="5 4 * * *"
```

## Variables

- `message` (string) - The message your application will respond with
- `count` (number) - The number of app instances to deploy
- `job_name` (string) - The name to use as the job name which overrides using the pack name
- `datacenters` (list of strings) - A list of datacenters in the region which are eligible for task placement
- `region` (string) - The region where jobs will be deployed
- `cron_schedule` (cron regex) - A cron schedule (defaults to 0 0 * * *)  
