# pairwiseHudsonFst

## About
Calculates population-level fairwise Fst based on Hudson et al. 1992 [10.1093/genetics/132.2.583](https://doi.org/10.1093/genetics/132.2.583). 

Relies on the [KRIS package](https://cran.r-project.org/web/packages/KRIS/index.html).

Built in R 4.3


## Usage
The function accepts a genind object _sensu_ adegenet, and returns a data.frame of population-level Hudson Fst values. Specifying and `output_file` will save the data.frame to a csv.

## Citations
Bhatia, G., Patterson, N., Sankararaman, S., and Price, A.L. (2013). Estimating and interpreting FST: The impact of rare variants. Genome Res. 23, 1514-1521.

Hudson, R.R., Slatkin, M., and Maddison, W.P. (1992). Estimation of levels of gene flow from DNA sequence data. Genetics 132, 583-589.

Bhatia, G., Patterson, N., Sankararaman, S., and Price, A.L. (2013). Estimating and interpreting FST: The impact of rare variants. Genome Res. 23, 1514-1521.

Hudson, R.R., Slatkin, M., and Maddison, W.P. (1992). Estimation of levels of gene flow from DNA sequence data. Genetics 132, 583-589.