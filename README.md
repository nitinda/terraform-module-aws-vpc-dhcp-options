# _Terraform Module: terraform-module-aws-vpc-dhcp-options_
_Terraform module for_ **_AWS VPC DHCP Options_**


<!--BEGIN STABILITY BANNER-->
---

![_Code : Stable_](https://img.shields.io/badge/Code-Stable-brightgreen?style=for-the-badge&logo=github)

>

---
<!--END STABILITY BANNER-->

## _General_

_This module can be used to deploy a_ **_VPC DHCP Options_** _on AWS Cloud Provider......_


---

## _Prerequisites_

_This module needs **_Terraform 0.12.23_** or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).



---

## _Features Branches_

_Below we are able to check the resources that are being created as part of this module call:_

- **_VPC DHCP Options_**


---

## _Usage_

## _Using this repo_

_To use this module, add the following call to your code:_

- **_Sample Code:_**

```tf
module "vpc_dhcp_options" {
  source = "git::https://github.com/nitinda/terraform-module-aws-vpc-dhcp-options.git?ref=master"

  domain_name_servers = ["8.8.8.8", "8.8.4.4"]
  tags                = {
    Environment = "prod"
    Project     = "POC"
  }
}

```

```tf
module "vpc_dhcp_options" {
  source = "git::https://github.com/nitinda/terraform-module-aws-vpc-dhcp-options.git?ref=master"

  domain_name          = "service.consul"
  domain_name_servers  = ["127.0.0.1", "10.0.0.2"]
  ntp_servers          = ["127.0.0.1"]
  netbios_name_servers = ["127.0.0.1"]
  netbios_node_type    = 2
  tags                 = {
    Environment = "prod"
    Project     = "POC"
  }
}

```


---

## _Inputs_

_The variables required in order for the module to be successfully called from the deployment repository are the following:_

|**_Variable_** | **_Description_** | **_Type_** | **_Argument Status_** |
|:----|:----|-----:|:---:|
| **_domain\_name_** | _the suffix domain name to use by default when <br/> resolving non Fully Qualified Domain Names_ | _bool_ | **_Optional <br/> (Default - null)_** |
| **_domain\_name\_servers_** | _List of name servers to configure in /etc/resolv.conf_ | _list(string)_ | **_Optional <br/> (Default - ["AmazonProvidedDNS"])_** |
| **_ntp\_servers_** | _List of NTP servers to configure_ | _list(string)_ | **_Optional <br/> (Default - [])_** |
| **_netbios\_name\_servers_** | _The NetBIOS node type_ | _string_ | **_Optional <br/> (Default - null)_** |
| **_tags_** | _A mapping of tags to assign to the resource_ | _map(string)_ | **_Required_** |


---


## _Outputs_

### _General_

_This module has the following outputs:_

* **_id_**


---

### _Usage_

_In order for the variables to be accessed at module level please use the syntax below:_

```tf
module.<module_name>.<output_variable_name>
```


_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
data.terraform_remote_state.<layer_name>.<output_variable_name>
```

---



## _Authors_

_Module maintained by Module maintained by the -_ **_Nitin Das_**
