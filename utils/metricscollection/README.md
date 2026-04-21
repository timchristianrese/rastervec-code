# Metricscollection

Running systemd processes on each VM which collect certain system metrics every second and store them in .csv files. After benchmark execution collecting them and run analytics on it. This is done when running the analysis ansible playbook. 
```
# From the top level folder of the repository
cd iac/ansible
ansible-playbook -i inventory.ini analysis.yml -v       
```
