// EC2 Instance Resource for Module
resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_id}"
    count = "${var.number_of_instances}"
    #subnet_id = "${element(var.subnet_ids, count.index)}"
    subnet_id = "${lookup(var.subnet_ids, count.index % 2)}"
    security_groups = ["${var.security_groups}"]
    instance_type = "${var.instance_type}"
    user_data = "${var.user_data}"
    tags {
        created_by = "${lookup(var.tags,"created_by")}"
        // Takes the instance_name input variable and adds
        //  the count.index to the name., e.g.
        //  "example-host-web-1"
        Name = "${var.instance_name}-${count.index}"
    }
}
