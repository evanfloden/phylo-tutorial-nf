# An Introductory Nextflow Tutorial

## Nextflow Video Tutorial I: Installation & Setup

*Video*
[![ScreenShot](https://raw.github.com/skptic/phylo-tutorial-nf/master/resources/VideoScreen.png)](https://www.dropbox.com/s/zi5wm13s8gh86kk/Nextflow%20Tutorial%20-%20Pilot%20Episode.mp4?dl=0)


*Commands*

```
java -version

cd ~/bin 

curl -fsSL get.nextflow.io | bash

export PATH=$PATH:~/bin

nextflow run hello

cd ~/projects

git pull cbcrg/pylo-tutorial-nf

cd pylo-tutorial-nf

ls -l
```


## Nextflow Video Tutorial 2: Your First Nextflow Script

*Video*

*Commands*

`vim phylo-tutorial.nf`

```
params.input    =     "data/*.fa"

datasets     =     Channel.fromPath( params.input )

process clustalw_align {
        publishDir “results/clustalw”

        input:
    		    file fasta from datasets
        
        output:
           file “fasta.baseName”+”.aln”
	
         script:
  		   '''
		         clustalw2 -INFILE=${fasta}
		     '''
}
```

`nextflow run phylo-tutorial.nf --input ‘data/*.fa’`

`cd results/clustalw`

`cat mammals.aln```


## Nextflow Video Tutorial 3: Introduction to Processes and Channels

*Video*

*Commands*
```

```
