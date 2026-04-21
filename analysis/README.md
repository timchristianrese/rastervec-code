# Analysis
The scripts in this folder exist to provide analysis options for benchmark execution results. The notebooks `analyze_results.ipynb` and `analyze_metrics.ipynb` take values from the `metrics` and `results` subfolder. Within each script, you need to define which runs you want to regard. We keep the results used in the paper stored there so that you may conduct analysis on them without needing to run further experiments, but you are free to run your own experiments. 
## How to run the scripts
Change the `run` or `runs` variable to adjust the experiment run(s) you want to analyze