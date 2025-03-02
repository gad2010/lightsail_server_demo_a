# Create a new GitLab Lightsail Instance
resource "aws_lightsail_instance" "gitlab_test" {
  name              = "Gitlab_Runner"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  # key_pair_name     = "dev-key"
  tags = {
    Name = "Lightsail-test"
    Team = "cloudops"
    env = "dev"
    Created_by= "Terraform"
  }
  lifecycle {
    create_before_destroy = true
  }
}
