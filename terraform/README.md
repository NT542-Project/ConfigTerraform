Deploys a VPC with a load balancer, 2 Apache servers, and an observability stack on AWS (ap-southeast-1).
##Setup
# Run command 
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars and fill in your values
# Run
terraform init
terraform plan
terraform apply
