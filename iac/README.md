# Usage
This folder contains the necessary code to setup the entire benchmark experiment (clients and SUT) in the Stackit Cloud. Adjustments would need to be made in order to run this in other cloud services. 
## Infrastructure Creation
```
cd terraform/stackit
terraform init
terraform apply
```
## Infrastructure Configuration
After the instances have been setup, we need to configure them to run our database systems and clients. For this, we use Ansible. This requires Ansible to be installed on the local system. The import of data into the systems requires a significant amount of time (in our experience, roughly 2 hours)
```
cd ../ansible
ansible-playbook -i inventory.ini init.yml -f 5 -v 
```

## Benchmark Execution
To do so, you can either SSH into the machine via 
```
ssh ubuntu@<manager-ip>
```
and then run an experiment by executing 
```
go run .
```

or just 
```
ssh ubuntu@<manager-ip> "go run ."
```
## Result collection
We originally setup the manager to run analysis. However, you can also conduct local analysis by importing the results from the manager to the local machine. For this, we first run a result collection playbook and then move teh results to the local analysis path (in this example, to run2). You need to adjust the IP to match your manager IP(which you can find by going to the terraform folder and running `terraform output`)
```
ansible-playbook -i inventory.ini analysis.yml -v   
scp -r "ubuntu@188.34.118.166:~/analysis-platform/results/*" ../../analysis/results/run2
scp -r "ubuntu@188.34.118.166:~/analysis-platform/metrics/*" ../../analysis/metrics/run2
```
## Infrastructure Deletion
After experiments have concluded (and you have collected results from the machines), infrastructure can be destroyed to save costs
```
cd terraform/stackit
terraform destroy
```