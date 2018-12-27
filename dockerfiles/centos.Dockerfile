# Use cetos:latest base image
FROM centos

# Update and install a package
RUN yum update -y && yum install -y net-tools

# Set an environment variable
ENV DATABASE_IP 192.168.100.100

# Create a new user
RUN useradd -ms /bin/bash kawamata

# Move into the new users home director
WORKDIR /home/kawamata

# Copy a tar file to the contaier and untar it
ADD add.tar .

# Copy a tar file to the container
COPY copy.tar .

# Download an exteral file
ADD http://www.namutech.co.jp/img/product/cocktail.png .

# Run a bash shell after the container starts
CMD bash