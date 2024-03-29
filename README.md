# An Introductory Nextflow Tutorial

This is a series of videos where we introduce the basics of the Nextflow platform and provide an example pipeline with which you can hopefully build along with us. In our example we will create a pipeline for a basic phylogenetic analysis, however the concepts explored can be applied equally to any pipeline, be it RNA-Seq, genome annotation, variant calling or even applications outside of bioinformatics.

The tutorial has been split into the following lessons, each approximatly 4 min in duration.

[1. Installation & Setup](https://github.com/skptic/phylo-tutorial-nf/blob/master/README.md#nextflow-video-tutorial-i-installation--setup)

[2. Your First Nextflow Script](https://github.com/skptic/phylo-tutorial-nf/blob/master/README.md#nextflow-video-tutorial-2-your-first-nextflow-script)

[3. Processes and Channels](https://github.com/skptic/phylo-tutorial-nf/blob/master/README.md#nextflow-video-tutorial-3-processes-and-channels)

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


## Nextflow Video Tutorial 3: Processes and Channels

*Video*

*Commands*
```

```
