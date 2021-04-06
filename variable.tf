variable "amiid" {

  description = "AMI ID Of the instance"
  default =  "ami-0742b4e673072066f"
  type = string
}

variable "instancecount" {


  description = "no of instances"
  type = number
  default = 2
}