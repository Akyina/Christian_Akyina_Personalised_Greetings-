ami="ami-04a81a99f5ec58529"
instance_type="t2.micro"
key="general_keys"
security_group="launch-wizard-5"
instance_name="chris_17_08_2024"

aws ec2 run-instances \
  --image-id $ami \
  --instance-type $instance_type \
  --key-name $key \
  --security-groups $security_group \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value='"$instance_name"'}]'
