The R codes here are supplementary material for the case studies created with open portal
data found at data.pr.gov and indicadores.pr for an American Statistical
Association funded project. These case studies can be found in Spanish and English at 
https://data.pr.gov/category/Estudios-de-Caso

Please support the local chapter by becoming a member through: 
https://www.memberplanet.com/puertoricochapteroftheamericanstatisticalassociation

(IT'S FREE TO BECOME A MEMBER THROUGH THE LINK ABOVE!)

DISCLAIMER: These case studies were created for educational purposes and their output should 
be treated accordingly. Neither the owner of this GitHub account as an individual, the 
Puerto Rico Chapter of the American Statistical Association, or the Puerto Rico Institute 
organizations, hold any responsibility for changes in the URLs of the data sets, 
or the changes in the content of the data sets published at data.pr.gov and indicadores.pr 
Moreover, the results of the exploratory analyses and statistical models that are presented 
on this GitHub account are developed for illustrative purposes only, mainly to promote the 
use of statistics. The owner of this GitHub account strongly advises to consult an expert 
before using the results presented here in public debate or media, and/or for any purposes 
other than motivating the use of statistical methods.  

To get started:
1. If you don't have the statistical software, Install the latest R or RStudio on your computer:
https://cran.r-project.org/bin/windows/base/ or https://www.rstudio.com/products/rstudio/download3/
2. Open the R code of choice at https://github.com/EstadisticasPR/Examples-for-Data.PR.gov
3. You can then proceed to copy/paste the code into R. 

You can modify the code based on your needs. The code includes comments on what each command line does.

Writing reproducible R code for 16 case studies is a rather ambitious endeavor. Although no errors occurred as of the writing of this file, 
in the future, changes in R packages, R/RStudio, or the portal data may lead to issues. If you get errors while running the R code we recommend you consider 
the following:

1. Make sure that you copy/pasted just the R code, and not other characters in the GitHub website.
2. Be aware of where in the code the FIRST error occurs. That is likely to be where the problem is.
3. Check online what the error means. Simply copy paste the error message into Google.
4. Internet connection is required to get the data from the open portals when running the code of all case studies
5. Has data website address changed? If so, modify this line at the beginning of the R code (line using either read.socrata or fread command).
6. Examine the lines of R code. Codes for rainfall studies require having a password 
(see that R code for details). 
7. The Motion chart case study requires to have flash enabled in a browser. Firefox was buggy at the time of writing of this file.
Chrome and Microsoft Edge worked as long as the browsers had flash enabled.
8. Package updates may require changes in the R code. For example, new command arguments may be required. See package details for more.
9. New R version may require changes in R code. Search online for the error.


