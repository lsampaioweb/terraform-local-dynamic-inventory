# terraform-local-dynamic-inventory
Terraform module that generates local dynamic Ansible inventory files.

## Terraform Registry

This module is published on the official Terraform Registry:

[lsampaioweb/dynamic-inventory/local](https://registry.terraform.io/modules/lsampaioweb/dynamic-inventory/local/latest)

You can use it directly in your Terraform configuration:

```hcl
module "dynamic_inventory" {
  source  = "lsampaioweb/dynamic-inventory/local"
  version = "1.0.5"

  path_inventory = "../ansible/inventory/vms"

  hosts_list = [
    {
      hostname  = "VM-01",
      public_ip = "10.0.0.1",
      port      = "8181"
    },
    {
      hostname  = "VM-02",
      public_ip = "10.0.0.2",
      port      = "443"
    }
  ]
}
```

## Getting Started

Run these commands on the computer that is running Terraform:

1. Run an example

    To auto-approve the execution, add `-auto-approve` to the command.

    ```bash
    cd examples/terraform
    ./tf.sh apply 01-bare-minimum -auto-approve
    ```

1. Run the basic example

    This example demonstrates the **bare minimum configuration** required to generate an inventory file.

    ```bash
    ./tf.sh apply 01-bare-minimum
    ```

1. Run the empty hosts list example

    This example generates an inventory with an **empty list of hosts**.

    ```bash
    ./tf.sh apply 02-hosts-list-empty
    ```

1. Run the single VM host example

    This example uses **host VM objects** with name and IP address.

    ```bash
    ./tf.sh apply 03-hosts-vm
    ```

1. Run the multiple hosts list example

    This example sets a **static list of hostnames**.

    ```bash
    ./tf.sh apply 04-hosts-list
    ```

1. Run the mixed VM objects and hostnames example

    This example demonstrates a combination of **hostname strings and VM objects**.

    ```bash
    ./tf.sh apply 05-hosts-list-vms
    ```

1. Run all examples

    To execute **all example configurations** in sequence, run.

    ```bash
    ./run-all.sh apply
    ```

1. Destroy all examples

    To clean up and **remove all resources** created by the examples.

    ```bash
    ./run-all.sh destroy
    ```

1. Creating a Release

    To version and release the module so it can be imported into other Terraform projects.

    1. List existing tags.
        ```bash
        git tag
        ```

    1. Create a new version tag.
        ```bash
        git tag -a 1.0.4 -m "Release version 1.0.4"
        ```

    1. Push the new tag to the repository.
        ```bash
        git push --tags
        ```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE "MIT License") file for details.

## Created by

Luciano Sampaio
