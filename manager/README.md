# Benchmark Manager
This is the code for the benchmark manager responsible for coordinating experiments across multiple SUTs
## Running an experiment
The data is automatically uploaded to the manager, all you need to do is actually run the experiment. To do so, you can either SSH into the machine via 
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

## Collecting Results and Metrics
The `ansible` folder found in `iac` contains a playbook for collecting results/metrics.
```
cd ../iac/ansible
ansible-playbook -i inventory.ini analysis.yml -v 
```