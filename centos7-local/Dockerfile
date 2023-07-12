# Use the CentOS 7 base image
FROM centos:7

# Install necessary packages
RUN yum -y update && \
    yum -y install epel-release && \
    yum -y install ansible openssh-server && \
    yum clean all

# Enable password authentication for SSH
RUN sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Set root password
RUN echo 'root:root' | chpasswd

# Generate SSH keys
RUN ssh-keygen -A

# Expose SSH port
EXPOSE 22

# Start SSH service
CMD ["/usr/sbin/sshd", "-D"]