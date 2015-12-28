params.input  =  "data/*.fa"

datasets      =  Channel.fromPath( params.input )

process clustalw_align {

    publishDir "results/clustalw"

    input:
        file fasta from datasets

    output:
         file "$fasta.baseName"+".aln" into alignedDatasets 
   
    script:
        """
        clustalw2 -INFILE=${fasta}
        """
}

process raxml_tree {

    publishDir "results/clustalw"

    input:
        file clustalw_result from alignedDatasets

    output:
         file .nwk into raxmlTrees

    script:
        """
        ra
        """
}


