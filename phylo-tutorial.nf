params.input  =  "data/*.fa"

datasets      =  Channel.fromPath( params.input )

process clustalw_align {

    publishDir "results/clustalw"

    input:
        file fasta from datasets

    output:
         file "fasta.baseName"+".aln"
   
    script:
        """
        clustalw2 -INFILE=${fasta}
        """
}


