variable "instance_names" {
    type = list 
    default = ["db","backend","frontend"]
  
}



variable "image_id" {
  type    = string
  default = "ami-09c813fb71547fc4f" #optional
  description = "RHEL-9 AMI ID" #optional

}

variable "instance_type" {
    type = string
    default = "t2.micro"
    
  
}


variable "common_tags" {
    default = {
        project = "Expense"
        Enviroment = "Dev"
        terraform = "true"
        
    }
  
}

variable "sg_name" {
    type = string
    default =  "allow-ssh"
  
}


variable "sg_description" {
    type = string
    default =   "allowing SSH port 22"
  
}



variable "ssh_port" {
    default = 22
  
}

variable "protocol" {
    default = "tcp"
  
}

variable "allow_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
  
}