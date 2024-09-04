# terraform-local-dynamic-inventory
Terraform module that generates local dynamic Ansible inventory files.

## Getting Started

Run these commands on the computer that is running Terraform:

1. **Initialize the project:**
    ```bash
    cd examples/terraform/
    terraform init
    ```

1. **Run an example:**

    To auto-approve the execution, add `-auto-approve` to the command.
    ```bash
    ./tf.sh apply 01-bare-minimum -auto-approve
    ./tf.sh destroy 01-bare-minimum

    ./tf.sh apply 01-bare-minimum
    ./tf.sh apply 02-hosts-list-empty
    ./tf.sh apply 03-hosts-vm
    ./tf.sh apply 04-hosts-list
    ./tf.sh apply 05-hosts-list-vms
    ```

1. **Run all examples:**
    ```bash
    ./run-all.sh apply
    ./run-all.sh destroy
    ```

1. **Create a release to be imported into other Terraform projects:**
    ```bash
    git tag
    git tag -a 1.0.4 -m "Release version 1.0.4"
    git push --tags
    ```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE "MIT License") file for details.

## Created by

Luciano Sampaio
