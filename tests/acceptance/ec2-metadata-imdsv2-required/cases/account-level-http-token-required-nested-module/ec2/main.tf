resource "aws_instance" "example" {
  ami           = "ami-xxxxxxxxxxxxxx"
  instance_type = "t2.micro"

}

resource "aws_ec2_instance_metadata_defaults" "enforce-imdsv2" {
  http_tokens                 = "required"
  http_put_response_hop_limit = 1
}
