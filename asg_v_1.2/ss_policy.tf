resource "aws_autoscaling_policy" "scale_out" {
  name                   = "${var.env}_scale_out_policy"
  scaling_adjustment     = 1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300
  autoscaling_group_name = aws_autoscaling_group.main.name
  policy_type            = "SimpleScaling"
}
resource "aws_autoscaling_policy" "scale_in" {
  name                   = "${var.env}_scale_in_policy"
  scaling_adjustment     = -1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300
  autoscaling_group_name = aws_autoscaling_group.main.name
  policy_type            = "SimpleScaling"
}
