FROM ubuntu:latest
MAINTAINER Colin Gabrielson <colin.gabrielson@gmail.com>

#
# Install inotify-tools & file, cleanly
#
RUN apt-get -q update \
&& apt-get -qy install --no-install-recommends inotify-tools file \
&& apt-get -qy autoremove \
&& apt-get clean \
&& rm -r /var/lib/apt/lists/*

# Copy over the script
COPY mediacat /usr/bin/mediacat
