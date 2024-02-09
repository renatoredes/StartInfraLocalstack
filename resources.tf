# cria os recursos
resource "aws_sns_topic" "topic" {
  name = "topico-sns"
}