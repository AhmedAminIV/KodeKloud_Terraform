mkdir terraform-practice
cd terraform-practice

for i in 01
02
03
04
05
06
07
08
09
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40; do
  case 34 in
    01) name="keypair" ;;
    02) name="security-group" ;;
    03) name="vpc" ;;
    04) name="vpc-cidr" ;;
    05) name="vpc-ipv6" ;;
    06) name="elastic-ip" ;;
    07) name="ec2" ;;
    08) name="ami" ;;
    09) name="ebs-volume" ;;
    10) name="snapshot" ;;
    11) name="alarm" ;;
    12) name="s3-public" ;;
    13) name="s3-private" ;;
    14) name="iam-user" ;;
    15) name="iam-group" ;;
    16) name="iam-policy" ;;
    17) name="dynamodb" ;;
    18) name="kinesis" ;;
    19) name="sns" ;;
    20) name="ssm-parameter" ;;
    21) name="cloudwatch" ;;
    22) name="cloudformation" ;;
    23) name="opensearch" ;;
    24) name="secrets-manager" ;;
    25) name="change-instance-type" ;;
    26) name="attach-elastic-ip" ;;
    27) name="attach-policy" ;;
    28) name="s3-versioning" ;;
    29) name="delete-backup-s3" ;;
    30) name="delete-ec2" ;;
    31) name="delete-iam-group" ;;
    32) name="delete-iam-role" ;;
    33) name="delete-vpc" ;;
    34) name="s3-copy" ;;
    35) name="vpc-variables" ;;
    36) name="sg-variables" ;;
    37) name="eip-variables" ;;
    38) name="user-variables" ;;
    39) name="role-variables" ;;
    40) name="policy-variables" ;;
  esac

  mkdir "34-s3-copy"
  cd "34-s3-copy"

  cat > provider.tf <<EOF
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
