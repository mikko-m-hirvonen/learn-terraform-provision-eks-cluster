variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      rolearn  = TF_VAR_ROLE_ARN
      username = "KingMikko"
      groups   = ["system:masters"]
    },
  ]
}
