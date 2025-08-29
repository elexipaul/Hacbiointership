```
#!/bin/bash
# Pranjal's HackBio Script
sudo apt update && sudo apt upgrade -y && sudo snap refresh
echo " Pranjal Paul"
mkdir Pranjal
ls
mkdir -p biocomputing && cd biocomputing
 wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
 wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
 wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
 ls
 mv wildtype.fna ../Pranjal
 ls
 rm -f wildtype.gbk.1
 cd ../Pranjal
 head wildtype.fna
 grep -E "tatatata" wildtype.fna
 grep -E "tatatata" wildtype.fna > mutant_lines.txt
 ls
 head mutant_lines.txt
 cd ../biocomputing
 tail -n +2 wildtype.gbk | wc -l
 head wildtype.gbk
 tail wildtype.gbk
 echo "Sequence length:"
 grep "^LOCUS" wildtype.gbk | awk '{print "Sequence Length:", $3}'
 echo "Source Organism: " 
 grep -m 1 "SOURCE" wildtype.gbk | awk '{$1=""; print "Source Organism:"   $0}'
 echo "gene names : "
 grep '/gene="' wildtype.gbk | awk -F'"' '{print "Gene:", $2}'>> genes.txt
 clear && history
 ls 
 cd ../Pranjal && ls
```



