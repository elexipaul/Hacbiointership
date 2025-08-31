```
#!/bin/bash
# Pranjal's HackBio Script
sudo apt update && sudo apt upgrade -y && sudo snap refresh
#Print your name
echo " Pranjal Paul"
#Create a folder titled your name
mkdir Pranjal

#Create another new directory titled biocomputing and change to that directory with one line of command
mkdir -p biocomputing && cd biocomputing
#Check if the directory exists
[ -d biocomputing/Pranjal ] && echo "Directory exists " || echo "Directory missing "
#Download these 3 files:
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
        https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
wget -O wildtype.gbk.1
 https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
#Confirm specific files are downloaded
for file in wildtype.fna wildtype.gbk wildtype.gbk.1; do
    if [ -f "biocomputing/Pranjal/$file" ]; then
        echo "$file found "
    else
        echo "$file missing "
    fi
done

# Move the .fna file to the folder titled your name
 mv wildtype.fna ../Pranjal
#List files inside the directory with their file size
ls -lh biocomputing/Pranjal
#Delete the duplicate gbk file
 rm -f wildtype.gbk.1
#verify the deletion by checking 
ls
 #Confirm if the .fna file is mutant or wild type (tatatata vs tata)
 cd ../Pranjal
 head wildtype.fna
 #grep Finds exact matches of the text “tatatata” in the file wildtype.fna 
 grep -E "tatatata" wildtype.fna && echo "Mutant detected" || echo "Wild type"
#If grep finds a match, it returns exit code 0 → && triggers "Mutant detected"
#If no match is found, grep returns exit code 1 → || triggers "Wild type"
#It  Count occurrences of "tatatata" in .fna file and prints the output in a new line.
grep -o "tatatata" wildtype.fna | wc -l
 If mutant, print all matching lines into a new file
#since the file is mutant therefore therefore we are printing the lines in a new text file. 
#On using grep -E "tatatata", it shows that the file contains a mutant sequence of “tatatata” 
 grep -E "tatatata" wildtype.fna > mutant_lines.txt
 ls
 head mutant_lines.txt
#Count number of lines (excluding header) in the .gbk file
 cd ../biocomputing
 tail -n +2 wildtype.gbk | wc -l
 #Print the sequence length of the .gbk file. (Use the LOCUS tag in the first line) 

 head wildtype.gbk
 tail wildtype.gbk
 echo "Sequence length:"
 #grep Searches for lines that start with the word LOCUS
 #awk splits the line into fields using whitespace
 #$3 refers to the third field, which in this case is the sequence length
 grep "^LOCUS" wildtype.gbk | awk '{print "Sequence Length:", $3}'
  #Print the source organism of the .gbk file. (Use the SOURCE tag in the first line) 
 echo "Source Organism: " 
  #grep Searches for lines that start with the word SOURCE
  #awk splits the line into fields using whitespace
  #$1 refers to the first field, which in this case is the Source Organism
 grep -m 1 "SOURCE" wildtype.gbk | awk '{$1=""; print "Source Organism:"   $0}'
 #List all the gene names of the .gbk file. Hint {grep '/gene='}
 echo "gene names : "
 #grep Searches for lines that start with the word gene
 #awk splits the line into fields using whitespace
 #$2 refers to the second field, which in this case is the gene name
 #>> creates a new text file with the gene names
 grep '/gene="' wildtype.gbk | awk -F'"' '{print "Gene:", $2}'>> genes.txt
 #Clear your terminal space and print all commands used today
 export HISTTIMEFORMAT="%F %T 
 clear && history| grep "2025-08-28"
  #Project 2:Installing Bioinformatics Software on the Terminal
 #Download the miniconda installer
 #Go to the Anaconda Distribution page and copy the link for the latest Linux installer.
#Then, in the terminal copy the link for linux download:
```
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

```


 #2. Run the installer
```
bash Miniconda3-latest-Linux-x86_64.sh
```

#Type yes to accept.
#Choose the default install location (usually ~/anaconda3) unless you have a reason to change it.
 #4. Initialize Conda
#After installation  run:
source ~/.bashrc
#Then verified using :
conda --version
#1. Activate your base conda environment
conda activate
#2. Create a conda environment named funtools
 conda create --name funtools python=3.10.12
#3. Activate the funtools environment
conda activate funtools
#4. Install Figlet using conda
conda install -c conda-forge pyfiglet
#5. Run figlet <your name>
Running figlet with my name : 
python -c "import pyfiglet; print(pyfiglet.figlet_format('Pranjal'))"
#6 to 13 Installing tools using bioconda channel:
#Configuring channels:
```
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
```
#Installing multiple tools : 
 conda install -c bioconda bwa blast samtools bedtools spades bcftools fastp multiqc
#Verify Package installation : 
```
for tool in bwa blastn samtools bedtools spades.py bcftools fastp multiqc; do
    echo "Checking $tool..."
    command -v $tool >/dev/null && echo "$tool is installed" || echo "$tool is NOT installed"
Done
```





```



