variable "dataproc_job_iam_members" {
  description = <<EOT
Map of dataproc_job_iam_members, attributes below
Required:
    - job_id
    - member
    - role
Optional:
    - project
    - region
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    job_id  = string
    member  = string
    role    = string
    project = optional(string)
    region  = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

