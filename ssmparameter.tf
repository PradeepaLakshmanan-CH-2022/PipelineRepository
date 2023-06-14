module "string" {
  source  = "terraform-aws-modules/ssm-parameter/aws"

  name  = "Mysql_Url"
  value = "Mysql@localhost:3306"
}