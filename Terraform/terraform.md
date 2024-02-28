# Terraform

## Infrastructure as Code (IaS)

Definition:  
Provisioning infrastructure through _software_ to archive _consistent_ and _predictable_ environments.

## Terraform Configuration File Format

A configuration file is either written in Hashicorp Configuration Language (HCL) or JSON with HCL being preferred.

## Core Components

- Executable - The terraform executable itself
- Configuration files - All the files with the .tf extension in a directory.
- Provider Plugins
- State Data

## Terraform Object Types

- Providers
- Resources (which are associated with a Provider)
- Data Sources

## HCL structure

HCL uses what is known as _Block Syntax_, a generic example of this is shown below

``` hcl
block_type "label" "name_label"{
    key="value"
    nested_block {
        key="value"
    }
}
```

The block type would be a keyword like resource for a resource block. The label is so we can specify the type of whatever block_type we are defining is. These labels are defined by the provider. The name_label is a unique identify for the block.

An example of this would be

``` hcl
resource "aws_instance" "web_server"{
    name="web_server"
    ebs_volume {
        size=40
    }
}
```

### Terraform Object Reference

If you wish to reference the value from another block in your current block you can do this by using what's known as an Object Reference. Object References are structured as

``` HCL
<resource_type>.<name_label>.<attribute_name>
```

For example

``` HCL
aws_instance.web_server.name
```

would reference the name within the example block above and would have the value "web_server".

### Comments

Single line comments are written with the # symbol.

### Workflow

1. terraform init
    - reads the configuration files
    - downloads plugins
    - creates empty state data file
2. terraform plan
    - Works out the actions to take to go from the current state as represented in the state file to the desired state as represented by the configuration files.
    - Saves a plan file.
3. terraform apply
    - Performs the actions in the given plan file.
4. terraform destroy
    - destroys all resources defined by the current state file.
