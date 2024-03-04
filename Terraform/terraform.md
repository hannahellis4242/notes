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
    - adding a -out flag with a file name after it saves a plan file with the given name.
3. terraform apply
    - Performs the actions in the given plan file.
4. terraform destroy
    - destroys all resources defined by the current state file.

### Input Variables and Output

- Input Variables
  - Used to pass information to terraform at runtime
  - Defined in the configuration
- Local Values
  - Computed values inside configuration
  - Can be referenced in the configuration
- Output Values
  - Defined in the configuration
  - Output values are references to values in the configuration

#### Inputs

A variable block uses the variable keyword followed by a single label

``` hcl
variable "name_label" {}
```

Notice there is no "label" only a "name_label" this is because there is only one type of variable.

An empty block as shown above is valid, as terraform can accept input variable values in many ways, however there are some optional properties that aid both in readability of the configuration but also imposing type checks and even a default value. Here is an example of a more typical block

``` hcl
variable "name_label" {
    type=value
    description="description text"
    default=value
    sensitive=true|false
}
```

- The type property is the type of the variable.
- The description property is some text to describe what the variable is and what it is for.
- The default property gives a default value if no other value is provided to terraform by another method.
- The sensitive property tells terraform if it should show the value of this property in user output or not. If it is set to true then terraform will treat it as sensitive and not print it's value anywhere. The default is false, so if this property is not included then terraform will just assume the variable is not sensitive and that it can freely print the value in user output if it is required.

Examples

``` hcl
variable "product_tag" {}
```

``` hcl
variable "aws_region"{
    type=string
    description="Region to use for AWS resources"
    default="us-east-1"
    sensitive=false
}
```

##### Terraform Variable Reference

To reference a variable value in a different block, you use the following syntax

``` hcl
var.<name_label>
```

so for example

``` hcl
var.aws_region
```

#### Terraform Data Types

- Primitive
  - string
  - number
  - bool
- Collection
  - list
  - set
  - map
- Structural
  - tuple
  - object
- Any
  - example: list(any)
- Null

##### Examples

- List


``` hcl
[1,2,3,4]
["us-east-1","us-east-2","us-west-1","us-west-2"]
```

A list can only have one data type in its elements.

- Map

``` hcl
{
    small="t2.micro"
    medium="t2.small"
    large="t2.large"
}
```

Keys have to be unique and values have to be the same data type.

##### Referencing Collection Values

- List

``` hcl
variable "aws_regions" {
    type=list(string)
    description="Regions to use for AWS resources"
    default=["us-east-1","us-east-2","us-west-1","us-west-2"]
}
```

- _For a single element_

``` hcl
var.<name_label>[<element_index>]
```

for example

``` hcl
var.aws_regions[0]
```

- _For the whole list_

``` hcl
var.<name_label>
```

for example

``` hcl
var.aws_regions
```

- Map

``` hcl
variable "aws_instance_sizes" {
    type=map(string)
    description = "Instance sizes to use in AWS"
    default = {
    small="t2.micro"
    medium="t2.small"
    large="t2.large"
    }
}
```

- _Single item_

``` hcl
var.<name_label>.<key_name>
# or
var.<name_label>["key_name"]
```

for example

``` hcl
var.aws_instance_sizes.small
# or
var.aws_instance_sizes["small"]
```

#### Local Values

- Internal to the configuration
- Typically used for a value with multiple references
- Can also do data transformation

```hcl
locals{
    key=value
}
```

example

```hcl
locals{
    instance_prefix="parts"
    common_tags={
        company="PartsUnlimited"
        project=var.project
        billing_code=var.billing_code
    }
}
```

You can have multiple locals blocks within a config and in multiple files.

##### Terraform Locals Reference

To reference a local value anywhere in your config, you use the following syntax

``` hcl
local.<key>
```

For example

``` hcl
local.instance_prefix
local.common_tags.company
```

##### Interpolation

Local values can be interpolated from other variables and local values using the following syntax

``` hcl
"${ref1} - ${ref2}..."
```

using as many or as few references as you like and can have any other text added too. Just like TypeScript formatted strings. This only works for strings though.

#### Outputs

- Outputs are used to get information from terraform.
- They are printed to the terminal after a run.
- Outputs get stored in state data during the run
- Are used to expose values when a configuration is placed inside a module.

``` hcl
Output "name_label" {
    value=value
    description="a description"
    sensitive=true|false
}
```

The syntax is similar to an input except a value must be specified.

Example

``` hcl
Output "public_dns_hostname" {
    value=aws_instance.web_server.public_dns
    description="public DNS host name of web server"
}
```

If you wish to see the current state of the output values, you can run `terraform output`

### Formatting and Validation

You can make your config match a formatting standard by using the `terraform fmt` command. This follows the HashiCorp Standard for formatting and has the flags `-check` if you wish to just see which files have formatting violations and `-recursive` to also format modules in other directories. Note that this tool does not check validity.

To validate your configuration you can use the command `terraform validate`. In order to use it, you must first initialise terraform by running the `terraform init` command as the validation command requires the providers to check against. The command checks both syntax and logic, but does not check the current state. Additionally it cannot guarantee that configuration is actually deployable.

## Supplying Variable Values

There are several ways to provide values for a variable.

- Default value
- Supply on command when running with the `-var` flag. For example `-var product_tag="my_tag"`.
- Supplying a variables file on the command with the `-var-file` flag.
- Inside a configuration variables file. These are are any files in your configuration that have the extension with `.tfvars` or `.tfvars.json`.
- Inside a configuration automatic variables file. There are any files in your configuration with the extension `.auto.tfvars` or `.auto.tfvars.json`
- Environment Variables. Terraform looks for any environment variable that starts with `TF_VAR_`

### Order of Evaluation

1. Environment variables `TF_VAR_`
2. Regular variables file `*.tfvars`
3. Automatic variables file `*.auto.tfvars`
4. Variables file given by the command `-var-file` flag
5. Variables given on the command by the `-var` flag
6. Command line prompt (if no default is given in the config)

If a variable is repeated then the later step will override it's value.

For example if you have a variable value in both your environment variables and in a `*.tfvars` file, then terraform will read in the value from the environment, then when it reads the value from the `*.tfvars` files, it will overwrite the value from the environment.

## Terraform Documentation

- General: <https://developer.hashicorp.com/terraform>
- Providers: <https://registry.terraform.io/>

## Terraform State

### Contents
- Resources,data sources and outputs
- JSON format ___DO NOT EDIT!___
- Maps object address to unique ID

### Planning
