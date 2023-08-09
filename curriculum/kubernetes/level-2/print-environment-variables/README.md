## Print Environment Variables

### Problem

The Nautilus DevOps team is working on to setup some pre-requisites for an application that will send the greetings to
different users. There is a sample deployment, that needs to be tested. Below is a scenario which needs to be configured
on Kubernetes cluster. Please find below more details about it.

    Create a pod named print-envars-greeting.

    Configure spec as, the container name should be print-env-container and use bash image.

    Create three environment variables:

a. GREETING and its value should be Welcome to

b. COMPANY and its value should be Stratos

c. GROUP and its value should be Datacenter

    Use command to echo ["$(GREETING) $(COMPANY) $(GROUP)"] message.

    You can check the output using kubectl logs -f print-envars-greeting command.

Note: The kubectl utility on jump_host has been configured to work with the kubernetes cluster.

### Solution

- See: [Solution](./solution.yaml)
