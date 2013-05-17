Your Name:
___________________
Today's Date:
___________________

This R Markdown file is designed to facilitate visualizing data and finding the best transformation to find a more normal-type
distribution of the data. You can delete these instructions before printing out the finished document. Here is what you need to do:

1. Using the phenotype data you have collected, create and save a csv. Label each column in the csv, and make sure the following columns are labelled accordingly: the column with the strain names should be labelled "strain". Make sure you know the name of the trait that you want to transform.

2. In the grey section below, type in the full directory location of your csv file, including the actual file name, on the right side of yourFile<-. Keep the full file name/location in quotes. A tilde expansion can be used (if you don't know what this means, just start with "/Users/yourAccount/..." and go from there until you reach your file name.)

3. In the line below yourFile<-, change yourTrait<- to the name of the trait you want graphed.

4. In the line below "Step 4 Info Goes Below:", change "pheno.df" on the left hand side of the arrow to the name of the dataframe that you want to output. This is especially important when you want to generate multiple reports and don't want to overwrite previously generated phenotype dataframes. Then, within the parentheses of "plotTransformedPhenos(pheno.df)", change this "pheno.df" to the same name as the dataframe that you wanted to output.

5. Go to File->Save As and change the name of this file (ex. transformPathogens.Rmd), then save a copy in your files for your personal records. THIS IS IMPORTANT. Otherwise, the original template will be overwritten.

6. Go to the lower right hand window, click the "Packages" tab, then find and make sure the box next to "knitr" is checked.

7. Find the line below that reads "knit2html(input= , output=)." To the right of "input="", type in quotes the full directory containing your file and your file name (ex. "~/Dropbox/Coding/Active Projects/Report 1/transformPhenotypes.Rmd"). Then, to the right of "output=", type out the directory, also in quotes, where you would like to save the generated HTML report (ex. "~/Dropbox/Coding/Active Projects/Report 1/figure/transformPhenotypes.hmtl"). Then copy that line, paste it to the console window below and press Enter. Your report will appear in the directory that you specified in the "output=" argument.

 **Info for step 7 goes below**
 knit2html(input = "~/Dropbox/Coding/Active Projects/Report 1/transformPhenotypes.Rmd", output = "~/Dropbox/Coding/Active Projects/Report 1/figure/transformPhenotypes.hmtl")
     

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-11.png) ![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-12.png) ![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-13.png) ![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-14.png) 

