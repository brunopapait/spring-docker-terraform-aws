resource "aws_security_group" "contact-sg" {
  name        = "contactbook-sg"
  description = "Security group for contactbook"
  vpc_id      = aws_vpc.contact_vpc_1.id
}

# Regras de entrada
resource "aws_security_group_rule" "sgr_pub_out" {
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.contact-sg.id
  to_port           = 0
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
}

# Regras de http de entrada
resource "aws_security_group_rule" "sgr_http_in" {
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.contact-sg.id
  to_port           = 443
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
}

# Regras de ssh
resource "aws_security_group_rule" "srg_ssh_in" {
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.contact-sg.id
  to_port           = 22
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_key_pair" "contact_key" {
  key_name = "contact_key"
  public_key = file("~/.ssh/contactbook_key2.pub")
}






