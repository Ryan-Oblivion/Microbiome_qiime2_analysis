# Microbiome_qiime2_analysis
This repository contains the methods I use to analyze Inflammatory Bowel Disease (IBD) microbiota data. Specifically Chron's disease vs non-IBD patient biota data. 

The raw data in the form of fastq files are gathered from Gene Expression Omnibus (GEO), where you can find the paper the corresponds to the data used. 
The paper link is https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE147600.
To get the data from this paper, go to the bottom and click SRA run selector, and that will take you to a repository of all the data they uesd.

The SRR ids I used for this analysis are based on the biopsy_location and the disease_status fields in the SRA run selector. 
For quick access of all 43 files, just check, in the top right, 'biopsy_location' and 'disease_status' in the filter list. Next in the biopsy_location check 'colon', and finally in the disease_status check 'nonIBD' and 'CD'. CD stands for Chron's disease, which means that sample has IBD.
