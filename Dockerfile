# Use your base Docker image and tag
FROM <base_image>:<tag> AS build

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
