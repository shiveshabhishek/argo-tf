FROM alpine:3.18

# Install necessary dependencies and download Terraform
RUN apk add --no-cache curl unzip bash libc6-compat \
    && curl -fsSL https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_linux_amd64.zip -o terraform.zip \
    && unzip terraform.zip \
    && mv terraform /usr/local/bin/ \
    && rm -f terraform.zip

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
  && install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl \
  && rm kubectl

# Verify Terraform installation
RUN terraform --version

# Set working directory
WORKDIR /app

# Copy Terraform configuration files
COPY main.tf .

# Set entrypoint for Terraform
ENTRYPOINT ["terraform"]
