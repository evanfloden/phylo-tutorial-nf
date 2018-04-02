#!/usr/bin/env nextflow

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

mappedAlignedDatasets = alignedDatasets.map { file -> tuple(file.baseName, file) }

process raxml_tree {

    publishDir "results/trees/$datasetID"

    input:
        set val(datasetID), file(clustalw_result) from mappedAlignedDatasets

    output:
         file "RAxML_bestTree.$datasetID" into raxmlTrees

    script:
        """
        esl-reformat phylip ${clustalw_result} > ${datasetID}.phylip
        raxmlHPC -m PROTGAMMAJTT -p 4332 -n ${datasetID} -s ${datasetID}.phylip
        """
}


