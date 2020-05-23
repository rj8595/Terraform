locals {
  name = "INV-CONSUMER"
  vpc_name = "testvpc"
  subnet = "10.0.0.0/25"
  key_name = "rajendra-keypair"
  tags = {
    Name        = local.name
    environment = "poc"
    system      = "noc"
    service     = "test"
    owner       = "rajendra.jagtap8595gmail.com"
  }
}
