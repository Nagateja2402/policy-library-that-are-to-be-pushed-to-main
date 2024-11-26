resource "aws_instance" "example" {
  ami           = "ami-xxxxxxxxxxxxxx"
  instance_type = "t2.micro"

  metadata_options {
    http_tokens = "required"
  }

}

resource "aws_ec2_instance_metadata_defaults" "enforce-imdsv2" {
  http_tokens                 = "optional"
  http_put_response_hop_limit = 1
}
