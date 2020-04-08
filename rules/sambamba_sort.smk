rule sambamba_sort:
    input:
        bams = "mapped/{sample}_bwamem.bam"
    output:
        temp("mapped/{sample}_bwamem_sorted.bam")
    params:
        tdir = expand("{tdir}", tdir = config["TEMPDIR"]),
        memory = "6G"
    log:
        "logs/sambamba_sort/{sample}.log"
    benchmark:
        "benchmarks/sambamba_sort/{sample}.sambamba"
    conda:
        "../envs/sambamba.yaml"
    threads: 4
    message:
	    "Sorting BAM files"
    shell:
        "sambamba sort -p {input.bams} -o {output} --tmpdir={params.tdir} -m {params.memory} -t {threads}"