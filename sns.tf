resource "aws_sns_topic" "failer_sns" {
  name = "failer-sns"
}

resource "aws_sns_topic_subscription" "email_fixo" {
  topic_arn = aws_sns_topic.failer_sns.arn
  protocol  = "email"
  endpoint  = "carldepaula230@gmail.com"
}