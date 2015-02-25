FROM debian:jessie

RUN apt-get update && apt-get install -y libwww-perl libdatetime-perl && rm -rf /var/lib/apt/lists/*
ADD aws-scripts-mon /bin/aws-scripts-mon
ENTRYPOINT ["/bin/aws/scripts-mon/mon-put-instance-data.pl --mem-util --mem-used --swap-util --swap-used --disk-space-used --disk-space-avail --disk-space-util --disk-path=/ --from-cron"]
