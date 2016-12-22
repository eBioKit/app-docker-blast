############################################################
# Dockerfile to build Blast container image for the eBioKit
# Based on wurmlab/sequenceserver
############################################################

# Set the base image to wurmlab/sequenceserver
FROM wurmlab/sequenceserver

# File Author / Maintainer
MAINTAINER Rafael Hernandez <ebiokit@gmail.com>

################## BEGIN INSTALLATION ######################
#Add the link to internal MRS service

COPY configs/mrs.entry /tmp/mrs.entry
RUN sed -i '/implementation./r /tmp/mrs.entry' /var/lib/gems/2.3.0/gems/sequenceserver-1.0.9/lib/sequenceserver/links.rb

##################### INSTALLATION END #####################

