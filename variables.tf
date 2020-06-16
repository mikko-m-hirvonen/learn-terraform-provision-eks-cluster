data "aws_secretsmanager_secret" "my-role" {
  secret_id = "my-role"
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      rolearn  = data.aws_secretsmanager_secret.my-role.secret_string
      username = "KingMikko"
      groups   = ["system:masters"]
    },
  ]
}
