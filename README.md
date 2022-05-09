# Polars-Examples-Public

For the Pandas Comparison see this notebook by Matthew Powers for the 100 m row dataset: https://github.com/coiled/coiled-resources/blob/main/local/speed-up-dask-10x.ipynb

To run the notebooks start the container with:
```bash
bash deploy.sh lab
```
and then start the notebook server using the alias defined in the Dockerfile by running
```bash
jlab
```

or by running 
```bash
jupyter lab --allow-root --ip 0.0.0.0 --no-browser
```


You should then be able to run the notebook in your browser at http://localhost:8888/
