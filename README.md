# Dependencies

## Conda
Packages should be handled with conda rather than pip. Packages are found and installed using:

```conda search numpy ``` (see if numpy exists)


```conda install numpy```

When new packages are installed, remember to update the requirements and environment files as such:

```conda list > requirements.txt```

```conda env export > environment.yml```


## Setup environment
Install dependencies by entering:

```conda env create -f environment.yml```

Or with pip:

 ```pip install -r requirements.txt```

