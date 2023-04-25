## WEB application infrastructure in aws cloud using Terraform.

## Prerequisites:

 - [AWS Account](https://awesomeopensource.com/project/elangosundar/awesome-README-templates)
 - [Install AWS CLI](https://aws.amazon.com/cli/)
 - [Install Terrafform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
 - [Create aws profile](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html)
 - [Update aws profile name in provider.tf file created in above step]()
 - [Generate a Key Pair in aws console and update the name in launchconfig.tf file under key_name value.]( )


## Deploy the Infrastructure for Web application

Clone the Repository and perform key-pair step mentioned above in Prerequisites.

Run below commands


```
terraform init
```
```
terraform plan
```
Validate the plan here, it will list all the resources which we are going to create with next command.
```
terraform apply
```
Now you Navigate to the AWS console and verify all the resources are created.

## Test the deployment

Open a new window in the browser and copy and paste the output generated in after running terraform apply. Copy the Application Load Balancer URL and paste it into the browser.
If you see 502 Bad Gateway in browser then please wait for 5 min or else check if EC2 instances are healthy or still initializing.

## Teardown the Infrastructure:
Always teardown the infrastructure if not needed to avoid bills for unnecessary workloads.

To tear down the infrastructure run the following command and type ‘yes’ if prompted for confirmation.

```
terraform destroy
```
## Authors

- [@adityagupta2712](https://www.github.com/adityagupta2712)
