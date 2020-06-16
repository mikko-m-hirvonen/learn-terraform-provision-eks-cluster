variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      rolearn  = "arn:aws:iam::301182014273:role/CrewSandboxMikkoHirvonen"
      username = "KingMikko"
      groups   = ["system:masters"]
    },
  ]
}
