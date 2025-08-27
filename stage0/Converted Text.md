# Stage 0

## Project 1:**BASh Basic**

**1. Print your name**

_echo " Pranjal Paul"_

![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcZze9k2Qe2ZsNSgeX600btN_nPIgyWVPc80xMsvcuNGnxdOr-_ueayCUmX0xc8cje4pA9RcbVFNzw7HZiD1SC-s_pLKiODg6y1lR94gE2QJ6dBJc0OrQYPal00kxszxQF1CA93?key=iXZi5XtdzIHfrB-ovYJerg)

**2. Create a folder titled your name**

_mkdir Pranjal_

**3.  Create another new directory titled biocomputing and change to that directory with one line of command**

_mkdir -p biocomputing && cd biocomputing_

**4. Download these 3 files:**

_wget https\://raw\.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna_

_wget https\://raw\.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk_

_wget https\://raw\.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk_

**5. Move the .fna file to the folder titled your name**

_mv wildtype.fna ../Pranjal_

**6. Delete the duplicate gbk file**

_rm -f wildtype.gbk.1_

**7. Confirm if the .fna file is mutant or wild type (tatatata vs tata)**

_cd ../Pranjal_

_head wildtype.fna_

\#Finds exact matches of the text “tatatata” in the file wildtype.fna 

 _grep -E "tatatata" wildtype.fna_

_#_It  Count occurrences of "tatatata" in .fna file and prints the output in a new line.

_grep -o "tatatata" wildtype.fna | wc -l_

\
\


__![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeP6dLvQNZ2E2AdRlxD3r4_HephpaozEx60mHmSFM8k87hQnHaOlZREjoTjj9NtrFKHsMiw7lvEda9Nx2d9Np5cJE_EAG8hg5CoXU1O0Qdb4JdOvONUuOfFN1HLcI0WZR6UzQE?key=iXZi5XtdzIHfrB-ovYJerg)__

\


**8. If mutant, print all matching lines into a new file**

\#since the file is mutant therefore this command is used to print the lines in a new text file. 

\#On using grep -E "tatatata", it shows that the file contains a mutant sequence of “tatatata”

 _grep -E "tatatata" wildtype.fna > mutant\_lines.txt_

\
\


![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdolJre_1FDZIQ2zmuGPI9STQF6Mb_UhwfCc22E1uTDq6BYZ3t0Ucf45f2OIsH2q9B6jorlI9pmKkS-mEh3cYGsBoQyG83swGCNazlQUZ2fxig86dJOlmLcDY6Wn7lD2RsOZm9w?key=iXZi5XtdzIHfrB-ovYJerg)

**9. Count number of lines (excluding header) in the .gbk file**

_tail -n +2 wildtype.gbk | wc -l_

_5749_

![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXey5d1joXiVnilg6T2j_zpz3v4nXaRuWDXedsiJGrWUVRboh0sycfWxZi0CXEQMReqKWho0SD4KPQ2sZ6DIqBdhfSBqoutMOa9bkeGfHWwK6435OOCzRK1vbEQnkpMFG3NDTMw?key=iXZi5XtdzIHfrB-ovYJerg)

**10. Print the sequence length of the .gbk file. (Use the LOCUS tag in the first line)** 

_echo "Sequence length:"_

 _grep "^LOCUS" wildtype.gbk | awk '{print "Sequence Length:", $3}'_

_Sequence length:_

_Sequence Length: 197394_

![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdoryEiuJJ3l-V3usvUC7mM3H8Np2U7ciTXUFlBndcyK8qj8bj5jbaCPKmBYoZQVNJJPmNUR79pV3YqCUl-iL1JunQL_TBHrmhHyROrC67c-oCgPrAv_dUaRg74Nz7l7wk0qjw?key=iXZi5XtdzIHfrB-ovYJerg)

**11. Print the source organism of the .gbk file. (Use the SOURCE tag in the first line)** 

_echo "Source Organism: "_

 _grep -m 1 "SOURCE" wildtype.gbk | awk '{$1=""; print "Source Organism:"   $0}'_

_Source Organism:_

_Source Organism: Staphylococcus aureus_

![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXevRvAKu8LOYD3suUL8o3LMta9mD1w6jlFPAB8ANBUxvyvGH6b_0SIyEjr43CH7jEQ0wlvAIsDsSKawYxpWoP-GwWKSYpm89jpeHT0iebypf14JBW3KhbFLPXMtrd8H0-pGyiem?key=iXZi5XtdzIHfrB-ovYJerg)

\
\


**12. List all the gene names of the .gbk file. Hint {grep '/gene='}**

_grep '/gene="' wildtype.gbk | awk -F'"' '{print "Gene:", $2}'_

![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXf2V079-Afv67nfdTx8jq9kjaRHS8gtoqp9931sglZuDuFsMr_U0QqgoEZ2YRSzm6N28nsl5U1V2bJGOVRmRBrBAReF2IgGmWHa9sTDVAJpDcEoHcWpM8IwjERovKgOW3zY-_D-?key=iXZi5XtdzIHfrB-ovYJerg)

**Saving the gene list in a text file named : ‘genes.txt’**

![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXf6RerLib_j1i3-jvPmwnpC1fX0cg3k11nh9si80iuu119dW0QmyijMz8Slh02boOVH-RhDBj0k7gqeOUPwMdpsbYEDmFAeMYwbyqg3up-NJoNkRxO-w8lO3nAxbSbs07d9TSKX?key=iXZi5XtdzIHfrB-ovYJerg)

**13. Clear your terminal space and print all commands used today**

 **__**_clear && history_

**14. List the files in the two folders and share a screenshot of your terminal**

**Folder : Biocomputing** 

![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXecd7ezOwjr4vi2MtyW7ji_uCX-58Q1uv_0_3n7rl4EBfidwEAL-WhVPWiaIJWk1qrkbyBaTs0OyxM7gnvfnjFpWVlF3KxbHww_HRZXYz8mm0Nq4MYlHjRCvrgvYz-zowyrzB73?key=iXZi5XtdzIHfrB-ovYJerg)

\


**Folder : Pranjal**

![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcIUrvvtjOWCqNmnZGMQNRiTz9Kg6eO01v4t3u3yNArvSc52O0hxiAWQxJXHf4CePaYq-hFF_RMhBKkMPugI24KNQ3-1B2_wrJ4saZ14jEI9NzRCdvINRmnQsY4VxurE8LNRFAX?key=iXZi5XtdzIHfrB-ovYJerg)

The file **Pranjal.sh** contains the script for this analysis

\
\
\
\
\
\
\
\
\
\
\
\
\


All the commands used today : 

![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcRQX_rjBHxyeTwRZq5w6LC3ffz8agtIBGnwi7qNbtnFo5qrTZ7oHAmd2R22PDoEwBs9x7RJjxMsOf4AE7cyu4vH3gBxUD-q2vPx5KG4aPOwIR4WViNOgv0A4_EO4m8ubPhUZPk?key=iXZi5XtdzIHfrB-ovYJerg)

![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXfKeNq0R-39TACviam6x_MkUqbXWP_yc9uYE030pB1sPN5xTmQhB9D03ou7lI9d3OmJCPkx9RbKahFBVa6KzhjC62NOquwkU9FMgeAEp3uXXEx96C2AKtVk2CZvvVNb9xlQZki3?key=iXZi5XtdzIHfrB-ovYJerg)

\
\



## Project 2:**Installing Bioinformatics Software on the Terminal**

The conda environments was setup using Anaconda following these steps:

***


##  **Installing of miniconda on Ubuntu**

###  **1. Download the miniconda installer**

Go to the[ Anaconda Distribution page](https://www.anaconda.com/download) and copy the link for the latest Linux installer.

Then, in the terminal copy the link for linux download:

’’’’’’’’’

wget https\://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86\_64.sh

’’’’’’’’

\



###  **2. Run the installer**

’’’’’’’’’

bash Miniconda3-latest-Linux-x86\_64.sh

’’’’’’’’

- Type yes to accept.

- Choose the default install location (usually \~/anaconda3) unless you have a reason to change it.


###  **4. Initialize Conda**

After installation  run:

source \~/.bashrc

Then verified using :

conda --version

\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

**1. Activate your base conda environment**

_conda activate_

**2. Create a conda environment named funtools**

 _conda create --name funtools python=3.10.12_

**3. Activate the funtools environment**

_conda activate funtools_

**4. Install Figlet using conda**

_conda install -c conda-forge pyfiglet_

**5. Run figlet \<your name>**

Running figlet with my name : 

![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdYGpu0ZJ97WayQI8RPomPUMSiz9V2N5Flm1oZnyDD3qtkAZ0fEEdG9e1oPoNZt5d5gZ4yCnvP_rcQD1CCyN_ckOjOZmmv3CctI_iV-DWFj_eN0f4N8kAmuk_CxsqAGf7E3aLqX?key=iXZi5XtdzIHfrB-ovYJerg)

\
\
\
\
\
\
\


**6 to 13 Installing tools using bioconda channel:**

Configuring channels:

””

_conda config --add channels defaults_

_conda config --add channels bioconda_

_conda config --add channels conda-forge_

_”””_

Installing multiple tools : 

 **conda install -c bioconda bwa blast samtools bedtools spades bcftools fastp multiqc**


###

###

###

### **List All Installed Packages**

![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdJ9ADwAGvoV0gY6GCPNAiNlIBxc5Rua8clzZZc1efE2AJ-yF-ndCUWi9j_pgPQfL0yxp-KvQM4IIwkK3gbXU8pMiMChnPcZ8jg3nRb10tdjkWKRek04nVKEo6Aq14uFbv7yh5B?key=iXZi5XtdzIHfrB-ovYJerg)
