# I want to use sratoolkit to get the fastq files from the sra database

# unix counts from 0 but just get the second number after doing wc

sra_count="$( less SRR_Acc_List_ibd.txt | wc | awk '{print $2}' )"

#for ((sra=1; sra<=sra_count; sra++)) 
#do 
#line=$( less SRR_Acc_List_ibd.txt | head -n $sra | tail -n 1 )

#prefetch $line

# putting the files in the dir specified by line and naming the file line.sra
#fasterq-dump --split-files $line/$line'.sra'

#done
 



##### this for loop tries to rename the files ####

# the first 17 files are colon and nonIBD
for ((sra=1; sra<=17; sra++)) 
do 
line=$( less SRR_Acc_List_ibd.txt | head -n $sra | tail -n 1 )

prefetch $line

# putting the files in the dir specified by line and naming the file line.sra
fasterq-dump --split-files $line/$line'.sra'

# these are pairend files
mv $line'_1.fastq' $line'_1_colon_nonIBD.fastq'
mv $line'_2.fastq' $line'_2_colon_nonIBD.fastq'
done

# rest of the files i downloaded are colon and CD chrons disease

for ((sra=18; sra<=sra_count; sra++)) 
do 
line=$( less SRR_Acc_List_ibd.txt | head -n $sra | tail -n 1 )

prefetch $line

# putting the files in the dir specified by line and naming the file line.sra
fasterq-dump --split-files $line/$line'.sra'

# these are pairend files
mv $line'_1.fastq' $line'_1_colon_CD.fastq'
mv $line'_2.fastq' $line'_2_colon_CD.fastq'
done