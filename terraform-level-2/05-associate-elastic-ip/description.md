# Task 05: associate elastic ip

## Objective
Create an EC2 instance named xfusion-ec2 using any Linux AMI like Ubuntu.

Instance type must be t2.micro and associate an Elastic IP address named xfusion-eipwith this instance.
Use the outputs.tf file and output the instance name using variable:
KKE_instance_name and the Elastic IP using variable KKE_eip.
### Directory Structure
```
05-associate-elastic-ip/
├── main.tf
├── variables.tf
├── outputs.tf
├── modules/
│   └── main.tf
├── files/
└── description.md
```

### Notes
- All AWS resources should be created in **us-east-1**.
- Use variables for reusability.
- Define meaningful outputs for verification.
