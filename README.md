# VDJbase IGH repertoire annotation and downstream analysis


The pipeline performs anotation and downstrean analysis of human IGH repertoire sequences.

The pipeline can be devided into seven main componenet:

**1. Initial repertoire alignment and annotation based reference set**

> In this section, the repertoire sequences are annotated using IgBlast and MakeDb (presto) against the supplied reference set.

**2. Undocumented allele inference**

> In this section, inference for undocumented IGHV allele (not found in the initial reference set) is performed using TIgGER.

**3. Second repertoire alignment and annotation with the discovered undocumented alleles.**

> In this section, in case undocumented alleles were inferred the repertoire is re-aligned and annotated with the additional alleles.

**4. Clonal inference and selection of colonal representative**

> In this section, clones are infered for the annotated repertoire, and a single representative for each clone whith the least number of mutation is chosen.

**5. Genotype inference**

> In this section, genotypes are inferred for each of the IGH calls: V, D, and J using TIgGER Bayesian inferernce tool, and a personal reference set is created.

**6. Third repertoire alignment and annotation with the personal reference set.**

> In this section, the repertoire sequences are annotated using IgBlast and MakeDb (presto) against the personal reference set from step 5.

**7. Haplotype inference and OGRDB statistics.**

> In this section, haplotypes are inferred using RAbHIT in case the repertoire is heterozygous to IGHJ6, and the reperotire statistics are deduced using ogrdbstats.


### Input files:

1. An IGH repertoire in fasta format.
2. Reference set files for IGHV, IGHD, and IGHJ alleles in fasta format.

### Output:

1. The aligned repertoire with the personal reference set.
2. A genotype report
3. A haplotype report
4. An ogrdb statistics report

### Docker images: 

The pipeline uses two docker images:

1. peresay/suite
2. williamlees/ogrdbstats


### Additional files:

> The reference set for the IGHV, IGHD, and IGHJ can be found in this github repository (link).



