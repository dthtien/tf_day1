# Terraform - Day1
## user_data_replace_on_change
Since you set user_data_replace_on_change to true and changed the user_data parameter, this will force a replacement, which means that the original EC2 Instance will be terminated and a completely new Instance will be created. It’s worth mentioning that while the web server is being replaced, any users of that web server would experience downtime; you’ll see how to do a zero-downtime deployment with Terraform later in this blog post series.

## Reference
- To access the values from other parts of your code
- `<provider>_<type>.<name>.<attribute>`
    - `provide` is the name of the provider: eg aws
    - `type` is the type of resource: eg `securty_group`,
    - `name` is the name of that resource: eg the security group is named "instance"
    - `attribute` is either one of the argument of the resource eg: name or one of the attributes exported by resource
        - you can find the list of avaiblable attributes in the documentation for each resource

## Variable
- Syntax:
```tf
variable "NAME" {
    [CONFIG...]
}
```
- Parameters
    - `description`: document how a variable is used
    - `default`:
        - `-var`: via cli
        - `-var-file`: via file
        - `TF_VAR_<variable_name>`: via environment variables
    - `type`: type constaints
        - string, number, bool, list, map, set, object, tuple, any
    - `validation`: custom validation rules
    - `sensitive`: filter out or not when logging out


## Output
- Syntax
```tf
output "NAME" {
    [CONFIG...]
}
```
- Parameters
    - `descripton`: document
    - `sensitive`
    - `depends_one`:  For example, perhaps you have an output variable that returns the IP address of a server, but that IP won’t be accessible until a security group (firewall) is properly configured for that server
