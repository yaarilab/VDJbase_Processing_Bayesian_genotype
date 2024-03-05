$HOSTNAME = ""
params.outdir = 'results'  

// Add for each process an option to change the parameters. Default is the set params
// part 1
//* params.edit_First_Alignment_IgBlastn_params =  "no"  //* @dropdown @options:"yes","no"  @show_settings:"IgBlastn"
//* params.edit_First_Alignment_MakeDb_params =  "no"  //* @dropdown @options:"yes","no" @show_settings:"MakeDb"
//* params.edit_First_Alignment_Collapse_AIRRseq_params =  "no"  //* @dropdown @options:"yes","no" @show_settings:"Collapse_AIRRseq"
// part 2
//* params.edit_Undocumented_Alleles_params =  "no"  //* @dropdown @options:"yes","no" @show_settings:"Undocumented_Alleles"
// part 3
//* params.edit_Second_Alignment_IgBlastn_params =  "no"  //* @dropdown @options:"yes","no"  @show_settings:"IgBlastn"
//* params.edit_Second_Alignment_MakeDb_params =  "no"  //* @dropdown @options:"yes","no" @show_settings:"MakeDb"
//* params.edit_Second_Alignment_Collapse_AIRRseq_params =  "no"  //* @dropdown @options:"yes","no" @show_settings:"Collapse_AIRRseq"
// part 4
//* params.edit_Clone_AIRRseq_First_CreateGermlines_params =  "no"  //* @dropdown @options:"yes","no" @show_settings:"CreateGermlines"
//* params.edit_Clone_AIRRseq_DefineClones_params =  "no"  //* @dropdown @options:"yes","no" @show_settings:"DefineClones"
//* params.edit_Clone_AIRRseq_Second_CreateGermlines_params =  "no"  //* @dropdown @options:"yes","no" @show_settings:"CreateGermlines"
// part 5
//* params.edit_TIgGER_bayesian_genotype_Inference_d_call_params =  "no"  //* @dropdown @options:"yes","no" @show_settings:"TIgGER_bayesian_genotype_Inference"
//* params.edit_TIgGER_bayesian_genotype_Inference_j_call_params =  "no"  //* @dropdown @options:"yes","no" @show_settings:"TIgGER_bayesian_genotype_Inference"
//* params.edit_PIgLET_IGHV_ASC_genotype_Inference_params =  "no"  //* @dropdown @options:"yes","no" @show_settings:"PIgLET_IGHV_ASC_genotype_Inference"
// part 6
//* params.edit_Third_Alignment_IgBlastn_params =  "no"  //* @dropdown @options:"yes","no"  @show_settings:"IgBlastn"
//* params.edit_Third_Alignment_MakeDb_params =  "no"  //* @dropdown @options:"yes","no" @show_settings:"MakeDb"
//* params.edit_Third_Alignment_Collapse_AIRRseq_params =  "no"  //* @dropdown @options:"yes","no" @show_settings:"Collapse_AIRRseq"
// part 7
//* params.edit_ogrdbstats_report_params =  "no"  //* @dropdown @options:"yes","no" @show_settings:"ogrdbstats_report"

// part 1
if(params.edit_First_Alignment_IgBlastn_params){
    // Process Parameters for First_Alignment_IgBlastn:
    params.First_Alignment_IgBlastn.num_threads = "44"
    params.First_Alignment_IgBlastn.ig_seqtype = "Ig"
    params.First_Alignment_IgBlastn.outfmt = "MakeDb"
    params.First_Alignment_IgBlastn.num_alignments_V = "10"
    params.First_Alignment_IgBlastn.domain_system = "imgt"
    params.First_Alignment_IgBlastn.auxiliary_data = "/usr/local/share/igblast/optional_file/human_gl.aux"
}

if(params.edit_First_Alignment_MakeDb_params){
    params.First_Alignment_MakeDb.failed = "false"
    params.First_Alignment_MakeDb.format = "airr"
    params.First_Alignment_MakeDb.regions = "default"
    params.First_Alignment_MakeDb.extended = "true"
    params.First_Alignment_MakeDb.asisid = "false"
    params.First_Alignment_MakeDb.asiscalls = "false"
    params.First_Alignment_MakeDb.inferjunction = "false"
    params.First_Alignment_MakeDb.partial = "false"
}

if(params.edit_First_Alignment_Collapse_AIRRseq_params){
    // Process Parameters for First_Alignment_Collapse_AIRRseq:
    params.First_Alignment_Collapse_AIRRseq.conscount_min = 2
    params.First_Alignment_Collapse_AIRRseq.n_max = 10
}

// part 2
if(params.edit_Undocumented_Alleles_params){
    // Process Parameters for Undocumented_Alleles:
    params.Undocumented_Alleles.chain = "IGH"
    params.Undocumented_Alleles.num_threads = 10
    params.Undocumented_Alleles.germline_min = 200
    params.Undocumented_Alleles.min_seqs = 50
    params.Undocumented_Alleles.auto_mutrange = "true"
    params.Undocumented_Alleles.mut_range = "1:10"
    params.Undocumented_Alleles.pos_range = "1:318"
    params.Undocumented_Alleles.y_intercept = 0.125
    params.Undocumented_Alleles.alpha = 0.05
    params.Undocumented_Alleles.j_max = 0.15
    params.Undocumented_Alleles.min_frac = 0.75
}

// part 3
if(params.edit_Second_Alignment_IgBlastn_params){
    // Process Parameters for Second_Alignment_IgBlastn:
    params.Second_Alignment_IgBlastn.num_threads = "44"
    params.Second_Alignment_IgBlastn.ig_seqtype = "Ig"
    params.Second_Alignment_IgBlastn.outfmt = "MakeDb"
    params.Second_Alignment_IgBlastn.num_alignments_V = "10"
    params.Second_Alignment_IgBlastn.domain_system = "imgt"
    params.Second_Alignment_IgBlastn.auxiliary_data = "/usr/local/share/igblast/optional_file/human_gl.aux"
}

if(params.edit_Second_Alignment_MakeDb_params){
    params.Second_Alignment_MakeDb.failed = "false"
    params.Second_Alignment_MakeDb.format = "airr"
    params.Second_Alignment_MakeDb.regions = "default"
    params.Second_Alignment_MakeDb.extended = "true"
    params.Second_Alignment_MakeDb.asisid = "false"
    params.Second_Alignment_MakeDb.asiscalls = "false"
    params.Second_Alignment_MakeDb.inferjunction = "false"
    params.Second_Alignment_MakeDb.partial = "false"
}

if(params.edit_Second_Alignment_Collapse_AIRRseq_params){
    // Process Parameters for Second_Alignment_Collapse_AIRRseq:
    params.Second_Alignment_Collapse_AIRRseq.conscount_min = 2
    params.Second_Alignment_Collapse_AIRRseq.n_max = 10
}

// part 4
if(params.edit_Clone_AIRRseq_First_CreateGermlines_params){
    // Process Parameters for Clone_AIRRseq_First_CreateGermlines:
    params.Clone_AIRRseq_First_CreateGermlines.failed = "false"
    params.Clone_AIRRseq_First_CreateGermlines.format = "airr"
    params.Clone_AIRRseq_First_CreateGermlines.g = "dmask"
    params.Clone_AIRRseq_First_CreateGermlines.cloned = "false"
    params.Clone_AIRRseq_First_CreateGermlines.seq_field = ""
    params.Clone_AIRRseq_First_CreateGermlines.v_field = ""
    params.Clone_AIRRseq_First_CreateGermlines.d_field = ""
    params.Clone_AIRRseq_First_CreateGermlines.j_field = ""
    params.Clone_AIRRseq_First_CreateGermlines.clone_field = ""
}

if(params.edit_Clone_AIRRseq_DefineClones_params){
    params.Clone_AIRRseq_DefineClones.failed = "false"
    params.Clone_AIRRseq_DefineClones.format = "airr"
    params.Clone_AIRRseq_DefineClones.seq_field = ""
    params.Clone_AIRRseq_DefineClones.v_field = ""
    params.Clone_AIRRseq_DefineClones.d_field = ""
    params.Clone_AIRRseq_DefineClones.j_field = ""
    params.Clone_AIRRseq_DefineClones.group_fields =  ""
    params.Clone_AIRRseq_DefineClones.mode = "gene"
    params.Clone_AIRRseq_DefineClones.dist = "0.2"
    params.Clone_AIRRseq_DefineClones.norm = "len"
    params.Clone_AIRRseq_DefineClones.act = "set"
    params.Clone_AIRRseq_DefineClones.model = "hh_s5f"
    params.Clone_AIRRseq_DefineClones.sym = "min"
    params.Clone_AIRRseq_DefineClones.link = "single"
    params.Clone_AIRRseq_DefineClones.maxmiss = "0"
}

if(params.edit_Clone_AIRRseq_Second_CreateGermlines_params){
    // Process Parameters for Clone_AIRRseq_Second_CreateGermlines:
    params.Clone_AIRRseq_Second_CreateGermlines.failed = "false"
    params.Clone_AIRRseq_Second_CreateGermlines.format = "airr"
    params.Clone_AIRRseq_Second_CreateGermlines.g = "dmask"
    params.Clone_AIRRseq_Second_CreateGermlines.cloned = "true"
    params.Clone_AIRRseq_Second_CreateGermlines.seq_field = ""
    params.Clone_AIRRseq_Second_CreateGermlines.v_field = ""
    params.Clone_AIRRseq_Second_CreateGermlines.d_field = ""
    params.Clone_AIRRseq_Second_CreateGermlines.j_field = ""
    params.Clone_AIRRseq_Second_CreateGermlines.clone_field = ""
}

// part 5
if(params.edit_PIgLET_IGHV_ASC_genotype_Inference_params){
    // Process Parameters for TIgGER_bayesian_genotype_Inference:
    params.PIgLET_IGHV_ASC_genotype_Inference.call = "v_call"
    params.PIgLET_IGHV_ASC_genotype_Inference.seq = "sequence_alignment"
    params.PIgLET_IGHV_ASC_genotype_Inference.find_unmutated = "false"
    params.PIgLET_IGHV_ASC_genotype_Inference.single_assignments = "false"
}

if(params.edit_TIgGER_bayesian_genotype_Inference_d_call_params){
    // Process Parameters for TIgGER_bayesian_genotype_Inference_d_call:
    params.TIgGER_bayesian_genotype_Inference_d_call.call = "d_call"
    params.TIgGER_bayesian_genotype_Inference_d_call.seq = "sequence_alignment"
    params.TIgGER_bayesian_genotype_Inference_d_call.find_unmutated = "false"
    params.TIgGER_bayesian_genotype_Inference_d_call.single_assignments = "true"
}

if(params.edit_TIgGER_bayesian_genotype_Inference_j_call_params){
    // Process Parameters for TIgGER_bayesian_genotype_Inference_j_call:
    params.TIgGER_bayesian_genotype_Inference_j_call.call = "j_call"
    params.TIgGER_bayesian_genotype_Inference_j_call.seq = "sequence_alignment"
    params.TIgGER_bayesian_genotype_Inference_j_call.find_unmutated = "false"
    params.TIgGER_bayesian_genotype_Inference_j_call.single_assignments = "true"
}

// part 6
if(params.edit_Third_Alignment_IgBlastn_params){
    // Process Parameters for Third_Alignment_IgBlastn:
    params.Third_Alignment_IgBlastn.num_threads = "44"
    params.Third_Alignment_IgBlastn.ig_seqtype = "Ig"
    params.Third_Alignment_IgBlastn.outfmt = "MakeDb"
    params.Third_Alignment_IgBlastn.num_alignments_V = "10"
    params.Third_Alignment_IgBlastn.domain_system = "imgt"
    params.Third_Alignment_IgBlastn.auxiliary_data = "/usr/local/share/igblast/optional_file/human_gl.aux"
}

if(params.edit_Third_Alignment_MakeDb_params){
    params.Third_Alignment_MakeDb.failed = "false"
    params.Third_Alignment_MakeDb.format = "airr"
    params.Third_Alignment_MakeDb.regions = "default"
    params.Third_Alignment_MakeDb.extended = "true"
    params.Third_Alignment_MakeDb.asisid = "false"
    params.Third_Alignment_MakeDb.asiscalls = "false"
    params.Third_Alignment_MakeDb.inferjunction = "false"
    params.Third_Alignment_MakeDb.partial = "false"
}

if(params.edit_Third_Alignment_Collapse_AIRRseq_params){
    // Process Parameters for Third_Alignment_Collapse_AIRRseq:
    params.Third_Alignment_Collapse_AIRRseq.conscount_min = 2
    params.Third_Alignment_Collapse_AIRRseq.n_max = 10
}

// part 7
if(params.edit_ogrdbstats_report_params){
    // Process Parameters for ogrdbstats_report:
    params.ogrdbstats_report.chain = "IGHV"
    params.ogrdbstats_report.haplotype_gene = "IGHJ6"
    params.ogrdbstats_report.specie = "Human"
}

if (!params.airr_seq){params.airr_seq = ""} 
if (!params.v_germline_file){params.v_germline_file = ""} 
if (!params.d_germline){params.d_germline = ""} 
if (!params.j_germline){params.j_germline = ""} 
// Stage empty file to be used as an optional input where required
ch_empty_file_1 = file("$baseDir/.emptyfiles/NO_FILE_1", hidden:true)
ch_empty_file_2 = file("$baseDir/.emptyfiles/NO_FILE_2", hidden:true)
ch_empty_file_3 = file("$baseDir/.emptyfiles/NO_FILE_3", hidden:true)
ch_empty_file_4 = file("$baseDir/.emptyfiles/NO_FILE_4", hidden:true)

Channel.fromPath(params.airr_seq, type: 'any').map{ file -> tuple(file.baseName, file) }.into{g_1_0_g0_9;g_1_0_g0_12;g_1_0_g11_9;g_1_0_g11_12;g_1_0_g21_9;g_1_0_g21_12}
Channel.fromPath(params.v_germline_file, type: 'any').map{ file -> tuple(file.baseName, file) }.into{g_2_1_g_8;g_2_1_g_15;g_2_2_g0_12;g_2_0_g0_22}
Channel.fromPath(params.d_germline, type: 'any').map{ file -> tuple(file.baseName, file) }.into{g_3_1_g_30;g_3_2_g_34;g_3_2_g14_0;g_3_2_g14_1;g_3_3_g0_12;g_3_0_g0_16;g_3_3_g21_12;g_3_0_g21_16;g_3_3_g11_12;g_3_0_g11_16}
Channel.fromPath(params.j_germline, type: 'any').map{ file -> tuple(file.baseName, file) }.into{g_4_1_g_31;g_4_3_g14_0;g_4_3_g14_1;g_4_4_g0_12;g_4_0_g0_17;g_4_4_g21_12;g_4_0_g21_17;g_4_4_g11_12;g_4_0_g11_17}


process Third_Alignment_D_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_3_0_g21_16

output:
 file "${db_name}"  into g21_16_germlineDb02_g21_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process Third_Alignment_J_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_4_0_g21_17

output:
 file "${db_name}"  into g21_17_germlineDb03_g21_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process First_Alignment_D_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_3_0_g0_16

output:
 file "${db_name}"  into g0_16_germlineDb02_g0_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process First_Alignment_J_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_4_0_g0_17

output:
 file "${db_name}"  into g0_17_germlineDb03_g0_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process First_Alignment_V_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_2_0_g0_22

output:
 file "${db_name}"  into g0_22_germlineDb01_g0_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process First_Alignment_IgBlastn {

input:
 set val(name),file(fastaFile) from g_1_0_g0_9
 file db_v from g0_22_germlineDb01_g0_9
 file db_d from g0_16_germlineDb02_g0_9
 file db_j from g0_17_germlineDb03_g0_9

output:
 set val(name), file("${outfile}") optional true  into g0_9_igblastOut01_g0_12

script:
num_threads = params.First_Alignment_IgBlastn.num_threads
ig_seqtype = params.First_Alignment_IgBlastn.ig_seqtype
outfmt = params.First_Alignment_IgBlastn.outfmt
num_alignments_V = params.First_Alignment_IgBlastn.num_alignments_V
domain_system = params.First_Alignment_IgBlastn.domain_system
auxiliary_data = params.First_Alignment_IgBlastn.auxiliary_data

randomString = org.apache.commons.lang.RandomStringUtils.random(9, true, true)
outname = name + "_" + randomString
outfile = (outfmt=="MakeDb") ? name+"_"+randomString+".out" : name+"_"+randomString+".tsv"
outfmt = (outfmt=="MakeDb") ? "'7 std qseq sseq btop'" : "19"

if(db_v.toString()!="" && db_d.toString()!="" && db_j.toString()!=""){
	"""
	igblastn -query ${fastaFile} \
		-germline_db_V ${db_v}/${db_v} \
		-germline_db_D ${db_d}/${db_d} \
		-germline_db_J ${db_j}/${db_j} \
		-num_alignments_V ${num_alignments_V} \
		-domain_system imgt \
		-auxiliary_data ${auxiliary_data} \
		-outfmt ${outfmt} \
		-num_threads ${num_threads} \
		-out ${outfile}
	"""
}else{
	"""
	"""
}

}


process First_Alignment_MakeDb {

input:
 set val(name),file(fastaFile) from g_1_0_g0_12
 set val(name_igblast),file(igblastOut) from g0_9_igblastOut01_g0_12
 set val(name1), file(v_germline_file) from g_2_2_g0_12
 set val(name2), file(d_germline_file) from g_3_3_g0_12
 set val(name3), file(j_germline_file) from g_4_4_g0_12

output:
 set val(name_igblast),file("*_db-pass.tsv") optional true  into g0_12_outputFileTSV00_g0_19
 set val("reference_set"), file("${reference_set}") optional true  into g0_12_germlineFastaFile11_g_37

script:

failed = params.First_Alignment_MakeDb.failed
format = params.First_Alignment_MakeDb.format
regions = params.First_Alignment_MakeDb.regions
extended = params.First_Alignment_MakeDb.extended
asisid = params.First_Alignment_MakeDb.asisid
asiscalls = params.First_Alignment_MakeDb.asiscalls
inferjunction = params.First_Alignment_MakeDb.inferjunction
partial = params.First_Alignment_MakeDb.partial

failed = (failed=="true") ? "--failed" : ""
format = (format=="changeo") ? "--format changeo" : ""
extended = (extended=="true") ? "--extended" : ""
regions = (regions=="rhesus-igl") ? "--regions rhesus-igl" : ""
asisid = (asisid=="true") ? "--asis-id" : ""
asiscalls = (asiscalls=="true") ? "--asis-calls" : ""
inferjunction = (inferjunction=="true") ? "--infer-junction" : ""
partial = (partial=="true") ? "--partial" : ""

reference_set = "reference_set_makedb.fasta"

if(igblastOut.getName().endsWith(".out")){
	"""
	
	cat ${v_germline_file} ${d_germline_file} ${j_germline_file} > ${reference_set}
	
	MakeDb.py igblast \
		-s ${fastaFile} \
		-i ${igblastOut} \
		-r ${v_germline_file} ${d_germline_file} ${j_germline_file} \
		--log MD_${name}.log \
		${extended} \
		${failed} \
		${format} \
		${regions} \
		${asisid} \
		${asiscalls} \
		${inferjunction} \
		${partial}
	"""
}else{
	"""
	
	"""
}

}


process First_Alignment_Collapse_AIRRseq {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /${outfile}+failed.*$/) "failed_makedb_reads_first_alignment/$filename"}
input:
 set val(name),file(airrFile) from g0_12_outputFileTSV00_g0_19

output:
 set val("passed"), file("${outfile}"+"passed.tsv") optional true  into g0_19_outputFileTSV00_g_8, g0_19_outputFileTSV00_g_15
 set val("failed"), file("${outfile}"+"failed*") optional true  into g0_19_outputFileTSV11

script:
conscount_min = params.First_Alignment_Collapse_AIRRseq.conscount_min
n_max = params.First_Alignment_Collapse_AIRRseq.n_max

outfile = airrFile.toString() - '.tsv' +"_collapsed-"

if(airrFile.getName().endsWith(".tsv")){	
	"""
	#!/usr/bin/env python3
	
	from pprint import pprint
	from collections import OrderedDict,Counter
	import itertools as it
	import datetime
	import pandas as pd
	import glob, os
	import numpy as np
	import re
	
	# column types default
	
	# dtype_default={'junction_length': 'Int64', 'np1_length': 'Int64', 'np2_length': 'Int64', 'v_sequence_start': 'Int64', 'v_sequence_end': 'Int64', 'v_germline_start': 'Int64', 'v_germline_end': 'Int64', 'd_sequence_start': 'Int64', 'd_sequence_end': 'Int64', 'd_germline_start': 'Int64', 'd_germline_end': 'Int64', 'j_sequence_start': 'Int64', 'j_sequence_end': 'Int64', 'j_germline_start': 'Int64', 'j_germline_end': 'Int64', 'v_score': 'Int64', 'v_identity': 'Int64', 'v_support': 'Int64', 'd_score': 'Int64', 'd_identity': 'Int64', 'd_support': 'Int64', 'j_score': 'Int64', 'j_identity': 'Int64', 'j_support': 'Int64'}
	
	SPLITSIZE=2
	
	class CollapseDict:
	    def __init__(self,iterable=(),_depth=0,
	                 nlim=10):
	        self.lowqual={}
	        self.seqs = {}
	        self.children = {}
	        self.depth=_depth
	        self.nlim=nlim
	        for fseq in iterable:
	            self.add(fseq)
	
	    def split(self):
	        newseqs = {}
	        for seq in self.seqs:
	            if len(seq)==self.depth:
	                newseqs[seq]=self.seqs[seq]
	            else:
	                if seq[self.depth] not in self.children:
	                    self.children[seq[self.depth]] = CollapseDict(_depth=self.depth+1)
	                self.children[seq[self.depth]].add(self.seqs[seq],seq)
	        self.seqs=newseqs
	
	    def add(self,fseq,key=None):
	        if 'duplicate_count' not in fseq: fseq['duplicate_count']='1'
	        if 'KEY' not in fseq:
	            fseq['KEY']=fseq['sequence_vdj'].replace('-','').replace('.','')
	        if 'ISOTYPECOUNTER' not in fseq:
	            fseq['ISOTYPECOUNTER']=Counter([fseq['c_call']])
	        if 'VGENECOUNTER' not in fseq:
	            fseq['VGENECOUNTER']=Counter([fseq['v_call']])
	        if 'JGENECOUNTER' not in fseq:
	            fseq['JGENECOUNTER']=Counter([fseq['j_call']])
	        if key is None:
	            key=fseq['KEY']
	        if self.depth==0:
	            if (not fseq['j_call'] or not fseq['v_call']):
	                return
	            if fseq['sequence_vdj'].count('N')>self.nlim:
	                if key in self.lowqual:
	                    self.lowqual[key] = combine(self.lowqual[key],fseq)
	                else:
	                    self.lowqual[key] = fseq
	                return
	        if len(self.seqs)>SPLITSIZE:
	            self.split()
	        if key in self.seqs:
	            self.seqs[key] = combine(self.seqs[key],fseq)
	        elif (self.children is not None and
	              len(key)>self.depth and
	              key[self.depth] in self.children):
	            self.children[key[self.depth]].add(fseq,key)
	        else:
	            self.seqs[key] = fseq
	
	    def __iter__(self):
	        yield from self.seqs.items()
	        for d in self.children.values():
	            yield from d
	        yield from self.lowqual.items()
	
	    def neighbors(self,seq):
	        def nfil(x): return similar(seq,x)
	        yield from filter(nfil,self.seqs)
	        if len(seq)>self.depth:
	            for d in [self.children[c]
	                      for c in self.children
	                      if c=='N' or seq[self.depth]=='N' or c==seq[self.depth]]:
	                yield from d.neighbors(seq)
	
	    def fixedseqs(self):
	        return self
	        ncd = CollapseDict()
	        for seq,fseq in self:
	            newseq=seq
	            if 'N' in seq:
	                newseq=consensus(seq,self.neighbors(seq))
	                fseq['KEY']=newseq
	            ncd.add(fseq,newseq)
	        return ncd
	
	
	    def __len__(self):
	        return len(self.seqs)+sum(len(c) for c in self.children.values())+len(self.lowqual)
	
	def combine(f1,f2):
	    def val(f): return -f['KEY'].count('N'),(int(f['consensus_count']) if 'consensus_count' in f else 0)
	    targ = (f1 if val(f1) >= val(f2) else f2).copy()
	    targ['consensus_count'] =  int(f1['consensus_count'])+int(f2['consensus_count'])
	    targ['duplicate_count'] =  int(f1['duplicate_count'])+int(f2['duplicate_count'])
	    targ['ISOTYPECOUNTER'] = f1['ISOTYPECOUNTER']+f2['ISOTYPECOUNTER']
	    targ['VGENECOUNTER'] = f1['VGENECOUNTER']+f2['VGENECOUNTER']
	    targ['JGENECOUNTER'] = f1['JGENECOUNTER']+f2['JGENECOUNTER']
	    return targ
	
	def similar(s1,s2):
	    return len(s1)==len(s2) and all((n1==n2 or n1=='N' or n2=='N')
	                                  for n1,n2 in zip(s1,s2))
	
	def basecon(bases):
	    bases.discard('N')
	    if len(bases)==1: return bases.pop()
	    else: return 'N'
	
	def consensus(seq,A):
	    return ''.join((basecon(set(B)) if s=='N' else s) for (s,B) in zip(seq,zip(*A)))
	
	n_lim = int('${n_max}')
	conscount_filter = int('${conscount_min}')
	
	df = pd.read_csv('${airrFile}', sep = '\t') #, dtype = dtype_default)
	
	# make sure that all columns are int64 for createGermline
	
	cols =  [col for col in df.select_dtypes('float64').columns.values.tolist() if not re.search('support|score|identity', col)]
	df[cols] = df[cols].apply(lambda x: pd.to_numeric(x.replace("<NA>",np.NaN), errors = "coerce").astype("Int64"))
	
	conscount_flag = False
	if not 'consensus_count' in df:
	    df['consensus_count'] = 1
	    conscount_flag = True
	if not 'duplicate_count' in df:
	    df['duplicate_count'] = 1
	if not 'c_call' in df or not 'isotype' in df or not 'prcons' in df or not 'primer' in df or not 'reverse_primer' in df:
	    if 'c_call' in df:
	        df['c_call'] = df['c_call']
	    elif 'isotype' in df:
	        df['c_call'] = df['isotype']
	    elif 'primer' in df:
	        df['c_call'] = df['primer']
	    elif 'reverse_primer' in df:
	        df['c_call'] = df['reverse_primer']    
	    elif 'prcons' in df:
	        df['c_call'] = df['prcons']
	    elif 'barcode' in df:
	        df['c_call'] = df['barcode']
	    else:
	        df['c_call'] = 'Ig'
	
	# removing sequenes with duplicated sequence id    
	dup_n = df[df.columns[0]].count()
	df = df.drop_duplicates(subset='sequence_id', keep='first')
	dup_n = str(dup_n - df[df.columns[0]].count())
	
	df['c_call'].fillna('Ig', inplace=True)
	df['consensus_count'].fillna(2, inplace=True)
	nrow_i = df[df.columns[0]].count()
	df = df[df.apply(lambda x: x['sequence_alignment'][0:(x['v_germline_end']-1)].count('N')<=n_lim, axis = 1)]
	low_n = str(nrow_i-df[df.columns[0]].count())
	
	df['sequence_vdj'] = df.apply(lambda x: x['sequence_alignment'].replace('-','').replace('.',''), axis = 1)
	header=list(df.columns)
	fasta_ = df.to_dict(orient='records')
	c = CollapseDict(fasta_,nlim=10)
	d=c.fixedseqs()
	header.append('ISOTYPECOUNTER')
	header.append('VGENECOUNTER')
	header.append('JGENECOUNTER')
	
	rec_list = []
	for i, f in enumerate(d):
	    rec=f[1]
	    rec['sequence']=rec['KEY']
	    rec['consensus_count']=int(rec['consensus_count'])
	    rec['duplicate_count']=int(rec['duplicate_count'])
	    rec_list.append(rec)
	df2 = pd.DataFrame(rec_list, columns = header)        
	
	collapse_n = str(df[df.columns[0]].count()-df2[df2.columns[0]].count())
	
	# removing sequences without J assignment and non functional
	nrow_i = df2[df2.columns[0]].count()
	cond = (~df2['j_call'].str.contains('J')|df2['productive'].isin(['F','FALSE','False']))
	df_non = df2[cond]
	
	
	df2 = df2[df2['productive'].isin(['T','TRUE','True'])]
	cond = ~(df2['j_call'].str.contains('J'))
	df2 = df2.drop(df2[cond].index.values)
	
	non_n = nrow_i-df2[df2.columns[0]].count()
	if conscount_flag:
	    df2['consensus_count'] = df2['consensus_count'].replace(1,2)
	
	# removing sequences with low cons count
	df_cons_low = df2[df2['consensus_count']<conscount_filter]
	nrow_i = df2[df2.columns[0]].count()
	df2 = df2[df2['consensus_count']>=conscount_filter]
	
	
	cons_n = str(nrow_i-df2[df2.columns[0]].count())
	nrow_i = df2[df2.columns[0]].count()    
	
	df2.to_csv('${outfile}'+'passed.tsv', sep = '\t',index=False)
	
	df_cons_low.to_csv('${outfile}'+'failed_conscount.tsv', sep = '\t',index=False)
	df_non.to_csv('${outfile}'+'failed_functional.tsv', sep = '\t',index=False)
	
	print(str(low_n)+' Sequences had N count over 10')
	print(str(dup_n)+' Sequences had a duplicated sequnece id')
	print(str(collapse_n)+' Sequences were collapsed')
	print(str(df_non[df_non.columns[0]].count())+' Sequences were declared non functional or lacked a J assignment')
	print(str(df_cons_low[df_cons_low.columns[0]].count())+' Sequences had a conscount lower than threshold')
	print('Going forward with '+str(df2[df2.columns[0]].count())+' sequences')
	
	"""
}else{
	"""
	
	"""
}

}

if(params.container.startsWith("peresay")){
	cmd = 'source("/usr/local/bin/functions_tigger.R")'
}else{
	cmd = 'library(tigger)'
}
process Undocumented_Alleles {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /.tsv$/) "novel_report/$filename"}
input:
 set val(name),file(airr_file) from g0_19_outputFileTSV00_g_8
 set val(v_germline_name), file(v_germline_file) from g_2_1_g_8

output:
 set val(name),file(".tsv") optional true  into g_8_outputFileTSV00
 set val("v_germline"), file("${out_novel_germline}") optional true  into g_8_germlineFastaFile13_g_15, g_8_germlineFastaFile12_g11_12, g_8_germlineFastaFile10_g11_22

script:
chain = params.Undocumented_Alleles.chain
num_threads = params.Undocumented_Alleles.num_threads
germline_min = params.Undocumented_Alleles.germline_min
min_seqs = params.Undocumented_Alleles.min_seqs
auto_mutrange = params.Undocumented_Alleles.auto_mutrange
mut_range = params.Undocumented_Alleles.mut_range
pos_range = params.Undocumented_Alleles.pos_range
y_intercept = params.Undocumented_Alleles.y_intercept
alpha = params.Undocumented_Alleles.alpha
j_max = params.Undocumented_Alleles.j_max
min_frac = params.Undocumented_Alleles.min_frac


out_novel_file = airr_file.toString() - ".tsv" + "_novel-passed.tsv"

out_novel_germline = "V_novel_germline"

"""
#!/usr/bin/env Rscript

${cmd}

# libraries
suppressMessages(require(dplyr))

# functions

## check for repeated nucliotide in sequece. get the novel allele and the germline sequence.
Repeated_Read <- function(x, seq) {
  NT <- as.numeric(gsub('([0-9]+).*', '\\1', x))
  SNP <- gsub('.*>', '', x)
  OR_SNP <- gsub('[0-9]+([[:alpha:]]*).*', '\\1', x)
  seq <- c(substr(seq, (NT), (NT + 3)),
           substr(seq, (NT - 1), (NT + 2)),
           substr(seq, (NT - 2), (NT + 1)),
           substr(seq, (NT - 3), (NT)))
  PAT <- paste0(c(
    paste0(c(rep(SNP, 3), OR_SNP), collapse = ""),
    paste0(c(rep(SNP, 2), OR_SNP, SNP), collapse = ""),
    paste0(c(SNP, OR_SNP, rep(SNP, 2)), collapse = ""),
    paste0(c(OR_SNP, rep(SNP, 3)), collapse = "")
  ), collapse = '|')
  if (any(grepl(PAT, seq)))
    return(gsub(SNP, 'X', gsub(OR_SNP, 'z', seq[grepl(PAT, seq)])))
  else
    return(NA)
}

# read data and germline
data <- data.table::fread('${airr_file}', stringsAsFactors = F, data.table = F)
vgerm <- tigger::readIgFasta('${v_germline_file}')

# transfer groovy param to rsctipt
num_threads = as.numeric(${num_threads})
germline_min = as.numeric(${germline_min})
min_seqs = as.numeric(${min_seqs})
y_intercept = as.numeric(${y_intercept})
alpha = as.numeric(${alpha})
j_max = as.numeric(${j_max})
min_frac = as.numeric(${min_frac})
auto_mutrange = as.logical('${auto_mutrange}')
mut_range = as.numeric(unlist(strsplit('${mut_range}',":")))
mut_range = mut_range[1]:mut_range[2]
pos_range = as.numeric(unlist(strsplit('${pos_range}',":")))
pos_range = pos_range[1]:pos_range[2]


novel =  try(findNovelAlleles(
data = data,
germline_db = vgerm,
v_call = 'v_call',
j_call = 'j_call' ,
seq = 'sequence_alignment',
junction = 'junction',
junction_length = 'junction_length',
germline_min = germline_min,
min_seqs = min_seqs,
y_intercept = y_intercept,
alpha = alpha,
j_max = j_max,
min_frac = min_frac,
auto_mutrange = auto_mutrange,
mut_range = mut_range,
pos_range = pos_range,
nproc = num_threads
))
  
# select only the novel alleles
if (class(novel) != 'try-error') {

	if (nrow(novel) != 0) {
		novel <- tigger::selectNovel(novel)
		novel <- novel %>% dplyr::distinct(novel_imgt, .keep_all = TRUE) %>% 
		dplyr::filter(!is.na(novel_imgt), nt_substitutions!='') %>% 
		dplyr::mutate(gene = alakazam::getGene(germline_call, strip_d = F)) %>%
		dplyr::group_by(gene) %>% dplyr::top_n(n = 2, wt = novel_imgt_count)
	}
	
	## remove padded alleles
	print(novel)
	
	if (nrow(novel) != 0) {
		SNP_XXXX <- unlist(sapply(1:nrow(novel), function(i) {
		  subs <- strsplit(novel[['nt_substitutions']][i], ',')[[1]]
		  RR <-
		    unlist(sapply(subs,
		           Repeated_Read,
		           seq = novel[['germline_imgt']][i],
		           simplify = F))
		  RR <- RR[!is.na(RR)]
		  
		  length(RR) != 0
		}))
		
		novel <- novel[!SNP_XXXX, ]
		
		# save novel output
		write.table(
		    novel,
		    file = '${out_novel_file}',
		    row.names = FALSE,
		    quote = FALSE,
		    sep = '\t'
		)
		
		# save germline
		novel_v_germline <- setNames(gsub('-', '.', novel[['novel_imgt']], fixed = T), novel[['polymorphism_call']])
		tigger::writeFasta(c(vgerm, novel_v_germline), paste0('${out_novel_germline}','.fasta'))
	}else{
		## write fake file
		file.create(paste0('${out_novel_germline}','.txt'))
		
	}
}else{
	file.create(paste0('${out_novel_germline}','.txt'))
}
"""


}


process Second_Alignment_D_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_3_0_g11_16

output:
 file "${db_name}"  into g11_16_germlineDb02_g11_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process Second_Alignment_J_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_4_0_g11_17

output:
 file "${db_name}"  into g11_17_germlineDb03_g11_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process Second_Alignment_V_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_8_germlineFastaFile10_g11_22

output:
 file "${db_name}"  into g11_22_germlineDb01_g11_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process Second_Alignment_IgBlastn {

input:
 set val(name),file(fastaFile) from g_1_0_g11_9
 file db_v from g11_22_germlineDb01_g11_9
 file db_d from g11_16_germlineDb02_g11_9
 file db_j from g11_17_germlineDb03_g11_9

output:
 set val(name), file("${outfile}") optional true  into g11_9_igblastOut01_g11_12

script:
num_threads = params.Second_Alignment_IgBlastn.num_threads
ig_seqtype = params.Second_Alignment_IgBlastn.ig_seqtype
outfmt = params.Second_Alignment_IgBlastn.outfmt
num_alignments_V = params.Second_Alignment_IgBlastn.num_alignments_V
domain_system = params.Second_Alignment_IgBlastn.domain_system
auxiliary_data = params.Second_Alignment_IgBlastn.auxiliary_data

randomString = org.apache.commons.lang.RandomStringUtils.random(9, true, true)
outname = name + "_" + randomString
outfile = (outfmt=="MakeDb") ? name+"_"+randomString+".out" : name+"_"+randomString+".tsv"
outfmt = (outfmt=="MakeDb") ? "'7 std qseq sseq btop'" : "19"

if(db_v.toString()!="" && db_d.toString()!="" && db_j.toString()!=""){
	"""
	igblastn -query ${fastaFile} \
		-germline_db_V ${db_v}/${db_v} \
		-germline_db_D ${db_d}/${db_d} \
		-germline_db_J ${db_j}/${db_j} \
		-num_alignments_V ${num_alignments_V} \
		-domain_system imgt \
		-auxiliary_data ${auxiliary_data} \
		-outfmt ${outfmt} \
		-num_threads ${num_threads} \
		-out ${outfile}
	"""
}else{
	"""
	"""
}

}


process Second_Alignment_MakeDb {

input:
 set val(name),file(fastaFile) from g_1_0_g11_12
 set val(name_igblast),file(igblastOut) from g11_9_igblastOut01_g11_12
 set val(name1), file(v_germline_file) from g_8_germlineFastaFile12_g11_12
 set val(name2), file(d_germline_file) from g_3_3_g11_12
 set val(name3), file(j_germline_file) from g_4_4_g11_12

output:
 set val(name_igblast),file("*_db-pass.tsv") optional true  into g11_12_outputFileTSV00_g11_19
 set val("reference_set"), file("${reference_set}") optional true  into g11_12_germlineFastaFile11

script:

failed = params.Second_Alignment_MakeDb.failed
format = params.Second_Alignment_MakeDb.format
regions = params.Second_Alignment_MakeDb.regions
extended = params.Second_Alignment_MakeDb.extended
asisid = params.Second_Alignment_MakeDb.asisid
asiscalls = params.Second_Alignment_MakeDb.asiscalls
inferjunction = params.Second_Alignment_MakeDb.inferjunction
partial = params.Second_Alignment_MakeDb.partial

failed = (failed=="true") ? "--failed" : ""
format = (format=="changeo") ? "--format changeo" : ""
extended = (extended=="true") ? "--extended" : ""
regions = (regions=="rhesus-igl") ? "--regions rhesus-igl" : ""
asisid = (asisid=="true") ? "--asis-id" : ""
asiscalls = (asiscalls=="true") ? "--asis-calls" : ""
inferjunction = (inferjunction=="true") ? "--infer-junction" : ""
partial = (partial=="true") ? "--partial" : ""

reference_set = "reference_set_makedb.fasta"

if(igblastOut.getName().endsWith(".out")){
	"""
	
	cat ${v_germline_file} ${d_germline_file} ${j_germline_file} > ${reference_set}
	
	MakeDb.py igblast \
		-s ${fastaFile} \
		-i ${igblastOut} \
		-r ${v_germline_file} ${d_germline_file} ${j_germline_file} \
		--log MD_${name}.log \
		${extended} \
		${failed} \
		${format} \
		${regions} \
		${asisid} \
		${asiscalls} \
		${inferjunction} \
		${partial}
	"""
}else{
	"""
	
	"""
}

}


process Second_Alignment_Collapse_AIRRseq {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /${outfile}+failed.*$/) "failed_collapse/$filename"}
input:
 set val(name),file(airrFile) from g11_12_outputFileTSV00_g11_19

output:
 set val("passed"), file("${outfile}"+"passed.tsv") optional true  into g11_19_outputFileTSV02_g_15
 set val("failed"), file("${outfile}"+"failed*") optional true  into g11_19_outputFileTSV11

script:
conscount_min = params.Second_Alignment_Collapse_AIRRseq.conscount_min
n_max = params.Second_Alignment_Collapse_AIRRseq.n_max

outfile = airrFile.toString() - '.tsv' +"_collapsed-"

if(airrFile.getName().endsWith(".tsv")){	
	"""
	#!/usr/bin/env python3
	
	from pprint import pprint
	from collections import OrderedDict,Counter
	import itertools as it
	import datetime
	import pandas as pd
	import glob, os
	import numpy as np
	import re
	
	# column types default
	
	# dtype_default={'junction_length': 'Int64', 'np1_length': 'Int64', 'np2_length': 'Int64', 'v_sequence_start': 'Int64', 'v_sequence_end': 'Int64', 'v_germline_start': 'Int64', 'v_germline_end': 'Int64', 'd_sequence_start': 'Int64', 'd_sequence_end': 'Int64', 'd_germline_start': 'Int64', 'd_germline_end': 'Int64', 'j_sequence_start': 'Int64', 'j_sequence_end': 'Int64', 'j_germline_start': 'Int64', 'j_germline_end': 'Int64', 'v_score': 'Int64', 'v_identity': 'Int64', 'v_support': 'Int64', 'd_score': 'Int64', 'd_identity': 'Int64', 'd_support': 'Int64', 'j_score': 'Int64', 'j_identity': 'Int64', 'j_support': 'Int64'}
	
	SPLITSIZE=2
	
	class CollapseDict:
	    def __init__(self,iterable=(),_depth=0,
	                 nlim=10):
	        self.lowqual={}
	        self.seqs = {}
	        self.children = {}
	        self.depth=_depth
	        self.nlim=nlim
	        for fseq in iterable:
	            self.add(fseq)
	
	    def split(self):
	        newseqs = {}
	        for seq in self.seqs:
	            if len(seq)==self.depth:
	                newseqs[seq]=self.seqs[seq]
	            else:
	                if seq[self.depth] not in self.children:
	                    self.children[seq[self.depth]] = CollapseDict(_depth=self.depth+1)
	                self.children[seq[self.depth]].add(self.seqs[seq],seq)
	        self.seqs=newseqs
	
	    def add(self,fseq,key=None):
	        if 'duplicate_count' not in fseq: fseq['duplicate_count']='1'
	        if 'KEY' not in fseq:
	            fseq['KEY']=fseq['sequence_vdj'].replace('-','').replace('.','')
	        if 'ISOTYPECOUNTER' not in fseq:
	            fseq['ISOTYPECOUNTER']=Counter([fseq['c_call']])
	        if 'VGENECOUNTER' not in fseq:
	            fseq['VGENECOUNTER']=Counter([fseq['v_call']])
	        if 'JGENECOUNTER' not in fseq:
	            fseq['JGENECOUNTER']=Counter([fseq['j_call']])
	        if key is None:
	            key=fseq['KEY']
	        if self.depth==0:
	            if (not fseq['j_call'] or not fseq['v_call']):
	                return
	            if fseq['sequence_vdj'].count('N')>self.nlim:
	                if key in self.lowqual:
	                    self.lowqual[key] = combine(self.lowqual[key],fseq)
	                else:
	                    self.lowqual[key] = fseq
	                return
	        if len(self.seqs)>SPLITSIZE:
	            self.split()
	        if key in self.seqs:
	            self.seqs[key] = combine(self.seqs[key],fseq)
	        elif (self.children is not None and
	              len(key)>self.depth and
	              key[self.depth] in self.children):
	            self.children[key[self.depth]].add(fseq,key)
	        else:
	            self.seqs[key] = fseq
	
	    def __iter__(self):
	        yield from self.seqs.items()
	        for d in self.children.values():
	            yield from d
	        yield from self.lowqual.items()
	
	    def neighbors(self,seq):
	        def nfil(x): return similar(seq,x)
	        yield from filter(nfil,self.seqs)
	        if len(seq)>self.depth:
	            for d in [self.children[c]
	                      for c in self.children
	                      if c=='N' or seq[self.depth]=='N' or c==seq[self.depth]]:
	                yield from d.neighbors(seq)
	
	    def fixedseqs(self):
	        return self
	        ncd = CollapseDict()
	        for seq,fseq in self:
	            newseq=seq
	            if 'N' in seq:
	                newseq=consensus(seq,self.neighbors(seq))
	                fseq['KEY']=newseq
	            ncd.add(fseq,newseq)
	        return ncd
	
	
	    def __len__(self):
	        return len(self.seqs)+sum(len(c) for c in self.children.values())+len(self.lowqual)
	
	def combine(f1,f2):
	    def val(f): return -f['KEY'].count('N'),(int(f['consensus_count']) if 'consensus_count' in f else 0)
	    targ = (f1 if val(f1) >= val(f2) else f2).copy()
	    targ['consensus_count'] =  int(f1['consensus_count'])+int(f2['consensus_count'])
	    targ['duplicate_count'] =  int(f1['duplicate_count'])+int(f2['duplicate_count'])
	    targ['ISOTYPECOUNTER'] = f1['ISOTYPECOUNTER']+f2['ISOTYPECOUNTER']
	    targ['VGENECOUNTER'] = f1['VGENECOUNTER']+f2['VGENECOUNTER']
	    targ['JGENECOUNTER'] = f1['JGENECOUNTER']+f2['JGENECOUNTER']
	    return targ
	
	def similar(s1,s2):
	    return len(s1)==len(s2) and all((n1==n2 or n1=='N' or n2=='N')
	                                  for n1,n2 in zip(s1,s2))
	
	def basecon(bases):
	    bases.discard('N')
	    if len(bases)==1: return bases.pop()
	    else: return 'N'
	
	def consensus(seq,A):
	    return ''.join((basecon(set(B)) if s=='N' else s) for (s,B) in zip(seq,zip(*A)))
	
	n_lim = int('${n_max}')
	conscount_filter = int('${conscount_min}')
	
	df = pd.read_csv('${airrFile}', sep = '\t') #, dtype = dtype_default)
	
	# make sure that all columns are int64 for createGermline
	
	cols =  [col for col in df.select_dtypes('float64').columns.values.tolist() if not re.search('support|score|identity', col)]
	df[cols] = df[cols].apply(lambda x: pd.to_numeric(x.replace("<NA>",np.NaN), errors = "coerce").astype("Int64"))
	
	conscount_flag = False
	if not 'consensus_count' in df:
	    df['consensus_count'] = 1
	    conscount_flag = True
	if not 'duplicate_count' in df:
	    df['duplicate_count'] = 1
	if not 'c_call' in df or not 'isotype' in df or not 'prcons' in df or not 'primer' in df or not 'reverse_primer' in df:
	    if 'c_call' in df:
	        df['c_call'] = df['c_call']
	    elif 'isotype' in df:
	        df['c_call'] = df['isotype']
	    elif 'primer' in df:
	        df['c_call'] = df['primer']
	    elif 'reverse_primer' in df:
	        df['c_call'] = df['reverse_primer']    
	    elif 'prcons' in df:
	        df['c_call'] = df['prcons']
	    elif 'barcode' in df:
	        df['c_call'] = df['barcode']
	    else:
	        df['c_call'] = 'Ig'
	
	# removing sequenes with duplicated sequence id    
	dup_n = df[df.columns[0]].count()
	df = df.drop_duplicates(subset='sequence_id', keep='first')
	dup_n = str(dup_n - df[df.columns[0]].count())
	
	df['c_call'].fillna('Ig', inplace=True)
	df['consensus_count'].fillna(2, inplace=True)
	nrow_i = df[df.columns[0]].count()
	df = df[df.apply(lambda x: x['sequence_alignment'][0:(x['v_germline_end']-1)].count('N')<=n_lim, axis = 1)]
	low_n = str(nrow_i-df[df.columns[0]].count())
	
	df['sequence_vdj'] = df.apply(lambda x: x['sequence_alignment'].replace('-','').replace('.',''), axis = 1)
	header=list(df.columns)
	fasta_ = df.to_dict(orient='records')
	c = CollapseDict(fasta_,nlim=10)
	d=c.fixedseqs()
	header.append('ISOTYPECOUNTER')
	header.append('VGENECOUNTER')
	header.append('JGENECOUNTER')
	
	rec_list = []
	for i, f in enumerate(d):
	    rec=f[1]
	    rec['sequence']=rec['KEY']
	    rec['consensus_count']=int(rec['consensus_count'])
	    rec['duplicate_count']=int(rec['duplicate_count'])
	    rec_list.append(rec)
	df2 = pd.DataFrame(rec_list, columns = header)        
	
	collapse_n = str(df[df.columns[0]].count()-df2[df2.columns[0]].count())
	
	# removing sequences without J assignment and non functional
	nrow_i = df2[df2.columns[0]].count()
	cond = (~df2['j_call'].str.contains('J')|df2['productive'].isin(['F','FALSE','False']))
	df_non = df2[cond]
	
	
	df2 = df2[df2['productive'].isin(['T','TRUE','True'])]
	cond = ~(df2['j_call'].str.contains('J'))
	df2 = df2.drop(df2[cond].index.values)
	
	non_n = nrow_i-df2[df2.columns[0]].count()
	if conscount_flag:
	    df2['consensus_count'] = df2['consensus_count'].replace(1,2)
	
	# removing sequences with low cons count
	df_cons_low = df2[df2['consensus_count']<conscount_filter]
	nrow_i = df2[df2.columns[0]].count()
	df2 = df2[df2['consensus_count']>=conscount_filter]
	
	
	cons_n = str(nrow_i-df2[df2.columns[0]].count())
	nrow_i = df2[df2.columns[0]].count()    
	
	df2.to_csv('${outfile}'+'passed.tsv', sep = '\t',index=False)
	
	df_cons_low.to_csv('${outfile}'+'failed_conscount.tsv', sep = '\t',index=False)
	df_non.to_csv('${outfile}'+'failed_functional.tsv', sep = '\t',index=False)
	
	print(str(low_n)+' Sequences had N count over 10')
	print(str(dup_n)+' Sequences had a duplicated sequnece id')
	print(str(collapse_n)+' Sequences were collapsed')
	print(str(df_non[df_non.columns[0]].count())+' Sequences were declared non functional or lacked a J assignment')
	print(str(df_cons_low[df_cons_low.columns[0]].count())+' Sequences had a conscount lower than threshold')
	print('Going forward with '+str(df2[df2.columns[0]].count())+' sequences')
	
	"""
}else{
	"""
	
	"""
}

}

g0_19_outputFileTSV00_g_15= g0_19_outputFileTSV00_g_15.ifEmpty([""]) 
g_2_1_g_15= g_2_1_g_15.ifEmpty([""]) 
g11_19_outputFileTSV02_g_15= g11_19_outputFileTSV02_g_15.ifEmpty([""]) 
g_8_germlineFastaFile13_g_15= g_8_germlineFastaFile13_g_15.ifEmpty([""]) 


process airr_seq_for_clone {

input:
 set val("airrFile"), file(airrSeq) from g0_19_outputFileTSV00_g_15
 set val("v_germ"), file(v_germline_file) from g_2_1_g_15
 set val("airrFileNovel"), file(airrSeqNovel) from g11_19_outputFileTSV02_g_15
 set val("v_novel"), file(v_novel_germline_file) from g_8_germlineFastaFile13_g_15

output:
 set val(airr_name), file(airrSeqClone)  into g_15_outputFileTSV00_g_32, g_15_outputFileTSV00_g14_0
 set val(germ_name), file(germlineClone)  into g_15_germlineFastaFile11_g_40, g_15_germlineFastaFile11_g14_0, g_15_germlineFastaFile11_g14_1

script: 

airrSeqClone = v_novel_germline_file.endsWith("fasta") ? airrSeqNovel : airrSeq
airr_name = v_novel_germline_file.endsWith("fasta") ? airrSeqNovel.name : airrSeq.name
germlineClone = v_novel_germline_file.endsWith("fasta") ? v_novel_germline_file : v_germline_file
germ_name = v_novel_germline_file.endsWith("fasta") ? v_novel_germline_file.name : v_germline_file.name


"""
"""


}

g_15_germlineFastaFile11_g14_0= g_15_germlineFastaFile11_g14_0.ifEmpty([""]) 
g_3_2_g14_0= g_3_2_g14_0.ifEmpty([""]) 
g_4_3_g14_0= g_4_3_g14_0.ifEmpty([""]) 


process Clone_AIRRseq_First_CreateGermlines {

input:
 set val(name),file(airrFile) from g_15_outputFileTSV00_g14_0
 set val(name1), file(v_germline_file) from g_15_germlineFastaFile11_g14_0
 set val(name2), file(d_germline_file) from g_3_2_g14_0
 set val(name3), file(j_germline_file) from g_4_3_g14_0

output:
 set val(name),file("*_germ-pass.tsv")  into g14_0_outputFileTSV00_g14_2

script:
failed = params.Clone_AIRRseq_First_CreateGermlines.failed
format = params.Clone_AIRRseq_First_CreateGermlines.format
g = params.Clone_AIRRseq_First_CreateGermlines.g
cloned = params.Clone_AIRRseq_First_CreateGermlines.cloned
seq_field = params.Clone_AIRRseq_First_CreateGermlines.seq_field
v_field = params.Clone_AIRRseq_First_CreateGermlines.v_field
d_field = params.Clone_AIRRseq_First_CreateGermlines.d_field
j_field = params.Clone_AIRRseq_First_CreateGermlines.j_field
clone_field = params.Clone_AIRRseq_First_CreateGermlines.clone_field


failed = (failed=="true") ? "--failed" : ""
format = (format=="airr") ? "": "--format changeo"
g = "-g ${g}"
cloned = (cloned=="false") ? "" : "--cloned"

v_field = (v_field=="") ? "" : "--vf ${v_field}"
d_field = (d_field=="") ? "" : "--df ${d_field}"
j_field = (j_field=="") ? "" : "--jf ${j_field}"
seq_field = (seq_field=="") ? "" : "--sf ${seq_field}"

"""
CreateGermlines.py \
	-d ${airrFile} \
	-r ${v_germline_file} ${d_germline_file} ${j_germline_file} \
	${failed} \
	${format} \
	${g} \
	${cloned} \
	${v_field} \
	${d_field} \
	${j_field} \
	${seq_field} \
	${clone_field} \
	--log CG_${name}.log 

"""



}


process Clone_AIRRseq_DefineClones {

input:
 set val(name),file(airrFile) from g14_0_outputFileTSV00_g14_2

output:
 set val(name),file("*_clone-pass.tsv")  into g14_2_outputFileTSV00_g14_1

script:
failed = params.Clone_AIRRseq_DefineClones.failed
format = params.Clone_AIRRseq_DefineClones.format
seq_field = params.Clone_AIRRseq_DefineClones.seq_field
v_field = params.Clone_AIRRseq_DefineClones.v_field
d_field = params.Clone_AIRRseq_DefineClones.d_field
j_field = params.Clone_AIRRseq_DefineClones.j_field
group_fields = params.Clone_AIRRseq_DefineClones.group_fields

mode = params.Clone_AIRRseq_DefineClones.mode
dist = params.Clone_AIRRseq_DefineClones.dist
norm = params.Clone_AIRRseq_DefineClones.norm
act = params.Clone_AIRRseq_DefineClones.act
model = params.Clone_AIRRseq_DefineClones.model
sym = params.Clone_AIRRseq_DefineClones.sym
link = params.Clone_AIRRseq_DefineClones.link
maxmiss = params.Clone_AIRRseq_DefineClones.maxmiss

failed = (failed=="true") ? "--failed" : ""
format = (format=="airr") ? "--format airr": "--format changeo"
group_fields = (group_fields=="") ? "" : "--gf ${group_fields}"
v_field = (v_field=="") ? "" : "--vf ${v_field}"
d_field = (d_field=="") ? "" : "--df ${d_field}"
j_field = (j_field=="") ? "" : "--jf ${j_field}"
seq_field = (seq_field=="") ? "" : "--sf ${seq_field}"


mode = (mode=="gene") ? "" : "--mode ${mode}"
norm = (norm=="len") ? "" : "--norn ${norm}"
act = (act=="set") ? "" : "--act ${act}"
model = (model=="ham") ? "" : "--model ${model}"
sym = (sym=="avg") ? "" : "--sym ${sym}"
link = (link=="single") ? "" : " --link ${link}"
    
	
"""
DefineClones.py -d ${airrFile} \
	${failed} \
	${format} \
	${v_field} \
	${d_field} \
	${j_field} \
	${seq_field} \
	${group_fields} \
	${mode} \
	${act} \
	${model} \
	--dist ${dist} \
	${norm} \
	${sym} \
	${link} \
	--maxmiss ${maxmiss} \
	--log DF_.log  
"""



}

g_15_germlineFastaFile11_g14_1= g_15_germlineFastaFile11_g14_1.ifEmpty([""]) 
g_3_2_g14_1= g_3_2_g14_1.ifEmpty([""]) 
g_4_3_g14_1= g_4_3_g14_1.ifEmpty([""]) 


process Clone_AIRRseq_Second_CreateGermlines {

input:
 set val(name),file(airrFile) from g14_2_outputFileTSV00_g14_1
 set val(name1), file(v_germline_file) from g_15_germlineFastaFile11_g14_1
 set val(name2), file(d_germline_file) from g_3_2_g14_1
 set val(name3), file(j_germline_file) from g_4_3_g14_1

output:
 set val(name),file("*_germ-pass.tsv")  into g14_1_outputFileTSV00_g14_9

script:
failed = params.Clone_AIRRseq_Second_CreateGermlines.failed
format = params.Clone_AIRRseq_Second_CreateGermlines.format
g = params.Clone_AIRRseq_Second_CreateGermlines.g
cloned = params.Clone_AIRRseq_Second_CreateGermlines.cloned
seq_field = params.Clone_AIRRseq_Second_CreateGermlines.seq_field
v_field = params.Clone_AIRRseq_Second_CreateGermlines.v_field
d_field = params.Clone_AIRRseq_Second_CreateGermlines.d_field
j_field = params.Clone_AIRRseq_Second_CreateGermlines.j_field
clone_field = params.Clone_AIRRseq_Second_CreateGermlines.clone_field


failed = (failed=="true") ? "--failed" : ""
format = (format=="airr") ? "": "--format changeo"
g = "-g ${g}"
cloned = (cloned=="false") ? "" : "--cloned"

v_field = (v_field=="") ? "" : "--vf ${v_field}"
d_field = (d_field=="") ? "" : "--df ${d_field}"
j_field = (j_field=="") ? "" : "--jf ${j_field}"
seq_field = (seq_field=="") ? "" : "--sf ${seq_field}"

"""
CreateGermlines.py \
	-d ${airrFile} \
	-r ${v_germline_file} ${d_germline_file} ${j_germline_file} \
	${failed} \
	${format} \
	${g} \
	${cloned} \
	${v_field} \
	${d_field} \
	${j_field} \
	${seq_field} \
	${clone_field} \
	--log CG_${name}.log 

"""



}


process Clone_AIRRseq_single_clone_representative {

input:
 set val(name),file(airrFile) from g14_1_outputFileTSV00_g14_9

output:
 set val(outname),file(outfile)  into g14_9_outputFileTSV00_g_31, g14_9_outputFileTSV00_g_30, g14_9_outputFileTSV00_g_40

script:
outname = airrFile.toString() - '.tsv' +"_clone_rep-passed"
outfile = outname + ".tsv"


"""
#!/usr/bin/env Rscript

## functions
# find the different position between sequences

src <- 
"#include <Rcpp.h>
using namespace Rcpp;
#include <iostream>
#include <vector>
#include <string>
#include <algorithm>
#include <unordered_set>

// [[Rcpp::export]]

int allele_diff(std::vector<std::string> germs) {
    std::vector<std::vector<char>> germs_m;
    for (const std::string& germ : germs) {
        germs_m.push_back(std::vector<char>(germ.begin(), germ.end()));
    }

    int max_length = 0;
    for (const auto& germ : germs_m) {
        max_length = std::max(max_length, static_cast<int>(germ.size()));
    }

    for (auto& germ : germs_m) {
        germ.resize(max_length, '.'); // Pad with '.' to make all germs equal length
    }

    auto setdiff_mat = [](const std::vector<char>& x) -> int {
        std::unordered_set<char> unique_chars(x.begin(), x.end());
        std::unordered_set<char> filter_chars = { '.', 'N', '-' };
        int diff_count = 0;
        for (const char& c : unique_chars) {
            if (filter_chars.find(c) == filter_chars.end()) {
                diff_count++;
            }
        }
        return diff_count;
    };

    std::vector<int> idx;
    for (int i = 0; i < max_length; i++) {
        std::vector<char> column_chars;
        for (const auto& germ : germs_m) {
            column_chars.push_back(germ[i]);
        }
        int diff_count = setdiff_mat(column_chars);
        if (diff_count > 1) {
            idx.push_back(i);
        }
    }

    return idx.size();
}"

## libraries
require(dplyr)
library(Rcpp)
sourceCpp(code = src)

data <- readr::read_tsv("${airrFile}")

# calculating mutation between IMGT sequence and the germline sequence, selecting a single sequence to each clone with the fewest mutations
data[["mut"]] <- sapply(1:nrow(data),function(j){
	x <- c(data[['sequence_alignment']][j], data[['germline_alignment_d_mask']][j])
	allele_diff(x)
})
# filter to the fewest mutations
data <- data %>% dplyr::group_by(clone_id) %>% 
			dplyr::mutate(clone_size = n()) %>%
			dplyr::group_by(clone_id) %>% dplyr::slice(which.min(mut))
cat(paste0('Note ', nrow(data),' sequences after selecting single representative'))
readr::write_tsv(data, file = "${outfile}")
"""
}


process PIgLET_IGHV_ASC_genotype_Inference {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /${call}_genotype_report.tsv$/) "v_genotype_report/$filename"}
input:
 set val(name),file(airrFile) from g14_9_outputFileTSV00_g_40
 set val(name1), file(germline_file) from g_15_germlineFastaFile11_g_40

output:
 set val("${call}_genotype"),file("${call}_genotype_report.tsv")  into g_40_outputFileTSV02_g_32
 set val("${call}_personal_reference"), file("${call}_personal_reference.fasta")  into g_40_germlineFastaFile11_g_34, g_40_germlineFastaFile12_g_37, g_40_germlineFastaFile12_g21_12, g_40_germlineFastaFile10_g21_22

script:

// general params
call = params.PIgLET_IGHV_ASC_genotype_Inference.call
seq = params.PIgLET_IGHV_ASC_genotype_Inference.seq
find_unmutated = params.PIgLET_IGHV_ASC_genotype_Inference.find_unmutated

// ASC specific params
alleleClusterTable = params.PIgLET_IGHV_ASC_genotype_Inference.alleleClusterTable
single_assignment = params.PIgLET_IGHV_ASC_genotype_Inference.single_assignment

germline_file = germline_file.name.startsWith('NO_FILE') ? "" : "${germline_file}"

"""
#!/usr/bin/env Rscript

library(piglet)
library(tigger)
library(data.table)
library(dplyr)

# If ASC table not supplied, taking the latest version from zenodo.
if("${alleleClusterTable}"==""){
	asc_archive <- recentAlleleClusters(doi="10.5281/zenodo.7401189", get_file = TRUE)
	allele_cluster_table <- extractASCTable(archive_file = asc_archive)
	allele_cluster_table <- allele_cluster_table %>% group_by(new_allele, func_group, thresh) %>%
                        dplyr::summarise(imgt_allele = paste0(sort(unique(imgt_allele)), collapse = "/"), .groups = "keep")
    
}else{
	allele_cluster_table <- fread("${alleleClusterTable}", data.table=FALSE)
}

# read the data
data <- fread("${airrFile}", data.table=FALSE)
# read the germline db
germline_db <- if("${germline_file}"!="") readIgFasta("${germline_file}") else NA
# check params
find_unmutated_ <- "${find_unmutated}"=="true"
single_assignment <- "${single_assignment}"=="true"

# infer the genotype
geno <- inferGenotypeAllele(data, 
									alleleClusterTable = allele_cluster_table, 
									germline_db = germline_db, 
									find_unmutated = find_unmutated_,
									v_call = "${call}",
        							seq = "${seq}",
									)

write.table(geno, file = paste0("${call}","_genotype_report.tsv"), row.names = F, sep = "\t")

# create the personal reference set
NOTGENO.IND <- !(sapply(strsplit(names(germline_db), '*', fixed = T), '[', 1) %in%  geno[["gene"]])
germline_db_new <- germline_db[NOTGENO.IND]

for (i in 1:nrow(geno)) {
  gene <- geno[["gene"]][i]
  alleles <- geno[["genotyped_alleles"]][i]
  if(alleles=="") alleles <- geno[["alleles"]][i]
  print(alleles)
  alleles <- unlist(strsplit(alleles, ','))
  IND <- names(germline_db) %in%  paste(gene, alleles, sep = '*')
  germline_db_new <- c(germline_db_new, germline_db[IND])
}

# writing imgt gapped fasta reference
writeFasta(germline_db_new, file = paste0("${call}","_personal_reference.fasta"))

"""

}


process Third_Alignment_V_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_40_germlineFastaFile10_g21_22

output:
 file "${db_name}"  into g21_22_germlineDb01_g21_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process Third_Alignment_IgBlastn {

input:
 set val(name),file(fastaFile) from g_1_0_g21_9
 file db_v from g21_22_germlineDb01_g21_9
 file db_d from g21_16_germlineDb02_g21_9
 file db_j from g21_17_germlineDb03_g21_9

output:
 set val(name), file("${outfile}") optional true  into g21_9_igblastOut01_g21_12

script:
num_threads = params.Third_Alignment_IgBlastn.num_threads
ig_seqtype = params.Third_Alignment_IgBlastn.ig_seqtype
outfmt = params.Third_Alignment_IgBlastn.outfmt
num_alignments_V = params.Third_Alignment_IgBlastn.num_alignments_V
domain_system = params.Third_Alignment_IgBlastn.domain_system
auxiliary_data = params.Third_Alignment_IgBlastn.auxiliary_data

randomString = org.apache.commons.lang.RandomStringUtils.random(9, true, true)
outname = name + "_" + randomString
outfile = (outfmt=="MakeDb") ? name+"_"+randomString+".out" : name+"_"+randomString+".tsv"
outfmt = (outfmt=="MakeDb") ? "'7 std qseq sseq btop'" : "19"

if(db_v.toString()!="" && db_d.toString()!="" && db_j.toString()!=""){
	"""
	igblastn -query ${fastaFile} \
		-germline_db_V ${db_v}/${db_v} \
		-germline_db_D ${db_d}/${db_d} \
		-germline_db_J ${db_j}/${db_j} \
		-num_alignments_V ${num_alignments_V} \
		-domain_system imgt \
		-auxiliary_data ${auxiliary_data} \
		-outfmt ${outfmt} \
		-num_threads ${num_threads} \
		-out ${outfile}
	"""
}else{
	"""
	"""
}

}


process Third_Alignment_MakeDb {

input:
 set val(name),file(fastaFile) from g_1_0_g21_12
 set val(name_igblast),file(igblastOut) from g21_9_igblastOut01_g21_12
 set val(name1), file(v_germline_file) from g_40_germlineFastaFile12_g21_12
 set val(name2), file(d_germline_file) from g_3_3_g21_12
 set val(name3), file(j_germline_file) from g_4_4_g21_12

output:
 set val(name_igblast),file("*_db-pass.tsv") optional true  into g21_12_outputFileTSV00_g21_19
 set val("reference_set"), file("${reference_set}") optional true  into g21_12_germlineFastaFile11

script:

failed = params.Third_Alignment_MakeDb.failed
format = params.Third_Alignment_MakeDb.format
regions = params.Third_Alignment_MakeDb.regions
extended = params.Third_Alignment_MakeDb.extended
asisid = params.Third_Alignment_MakeDb.asisid
asiscalls = params.Third_Alignment_MakeDb.asiscalls
inferjunction = params.Third_Alignment_MakeDb.inferjunction
partial = params.Third_Alignment_MakeDb.partial

failed = (failed=="true") ? "--failed" : ""
format = (format=="changeo") ? "--format changeo" : ""
extended = (extended=="true") ? "--extended" : ""
regions = (regions=="rhesus-igl") ? "--regions rhesus-igl" : ""
asisid = (asisid=="true") ? "--asis-id" : ""
asiscalls = (asiscalls=="true") ? "--asis-calls" : ""
inferjunction = (inferjunction=="true") ? "--infer-junction" : ""
partial = (partial=="true") ? "--partial" : ""

reference_set = "reference_set_makedb.fasta"

if(igblastOut.getName().endsWith(".out")){
	"""
	
	cat ${v_germline_file} ${d_germline_file} ${j_germline_file} > ${reference_set}
	
	MakeDb.py igblast \
		-s ${fastaFile} \
		-i ${igblastOut} \
		-r ${v_germline_file} ${d_germline_file} ${j_germline_file} \
		--log MD_${name}.log \
		${extended} \
		${failed} \
		${format} \
		${regions} \
		${asisid} \
		${asiscalls} \
		${inferjunction} \
		${partial}
	"""
}else{
	"""
	
	"""
}

}


process Third_Alignment_Collapse_AIRRseq {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /${outfile}+passed.tsv$/) "genotyped_annotated_sequences/$filename"}
input:
 set val(name),file(airrFile) from g21_12_outputFileTSV00_g21_19

output:
 set val("passed"), file("${outfile}"+"passed.tsv") optional true  into g21_19_outputFileTSV00_g_34, g21_19_outputFileTSV01_g_32, g21_19_outputFileTSV00_g_37
 set val("failed"), file("${outfile}"+"failed*") optional true  into g21_19_outputFileTSV11

script:
conscount_min = params.Third_Alignment_Collapse_AIRRseq.conscount_min
n_max = params.Third_Alignment_Collapse_AIRRseq.n_max

outfile = airrFile.toString() - '.tsv' +"_collapsed-"

if(airrFile.getName().endsWith(".tsv")){	
	"""
	#!/usr/bin/env python3
	
	from pprint import pprint
	from collections import OrderedDict,Counter
	import itertools as it
	import datetime
	import pandas as pd
	import glob, os
	import numpy as np
	import re
	
	# column types default
	
	# dtype_default={'junction_length': 'Int64', 'np1_length': 'Int64', 'np2_length': 'Int64', 'v_sequence_start': 'Int64', 'v_sequence_end': 'Int64', 'v_germline_start': 'Int64', 'v_germline_end': 'Int64', 'd_sequence_start': 'Int64', 'd_sequence_end': 'Int64', 'd_germline_start': 'Int64', 'd_germline_end': 'Int64', 'j_sequence_start': 'Int64', 'j_sequence_end': 'Int64', 'j_germline_start': 'Int64', 'j_germline_end': 'Int64', 'v_score': 'Int64', 'v_identity': 'Int64', 'v_support': 'Int64', 'd_score': 'Int64', 'd_identity': 'Int64', 'd_support': 'Int64', 'j_score': 'Int64', 'j_identity': 'Int64', 'j_support': 'Int64'}
	
	SPLITSIZE=2
	
	class CollapseDict:
	    def __init__(self,iterable=(),_depth=0,
	                 nlim=10):
	        self.lowqual={}
	        self.seqs = {}
	        self.children = {}
	        self.depth=_depth
	        self.nlim=nlim
	        for fseq in iterable:
	            self.add(fseq)
	
	    def split(self):
	        newseqs = {}
	        for seq in self.seqs:
	            if len(seq)==self.depth:
	                newseqs[seq]=self.seqs[seq]
	            else:
	                if seq[self.depth] not in self.children:
	                    self.children[seq[self.depth]] = CollapseDict(_depth=self.depth+1)
	                self.children[seq[self.depth]].add(self.seqs[seq],seq)
	        self.seqs=newseqs
	
	    def add(self,fseq,key=None):
	        if 'duplicate_count' not in fseq: fseq['duplicate_count']='1'
	        if 'KEY' not in fseq:
	            fseq['KEY']=fseq['sequence_vdj'].replace('-','').replace('.','')
	        if 'ISOTYPECOUNTER' not in fseq:
	            fseq['ISOTYPECOUNTER']=Counter([fseq['c_call']])
	        if 'VGENECOUNTER' not in fseq:
	            fseq['VGENECOUNTER']=Counter([fseq['v_call']])
	        if 'JGENECOUNTER' not in fseq:
	            fseq['JGENECOUNTER']=Counter([fseq['j_call']])
	        if key is None:
	            key=fseq['KEY']
	        if self.depth==0:
	            if (not fseq['j_call'] or not fseq['v_call']):
	                return
	            if fseq['sequence_vdj'].count('N')>self.nlim:
	                if key in self.lowqual:
	                    self.lowqual[key] = combine(self.lowqual[key],fseq)
	                else:
	                    self.lowqual[key] = fseq
	                return
	        if len(self.seqs)>SPLITSIZE:
	            self.split()
	        if key in self.seqs:
	            self.seqs[key] = combine(self.seqs[key],fseq)
	        elif (self.children is not None and
	              len(key)>self.depth and
	              key[self.depth] in self.children):
	            self.children[key[self.depth]].add(fseq,key)
	        else:
	            self.seqs[key] = fseq
	
	    def __iter__(self):
	        yield from self.seqs.items()
	        for d in self.children.values():
	            yield from d
	        yield from self.lowqual.items()
	
	    def neighbors(self,seq):
	        def nfil(x): return similar(seq,x)
	        yield from filter(nfil,self.seqs)
	        if len(seq)>self.depth:
	            for d in [self.children[c]
	                      for c in self.children
	                      if c=='N' or seq[self.depth]=='N' or c==seq[self.depth]]:
	                yield from d.neighbors(seq)
	
	    def fixedseqs(self):
	        return self
	        ncd = CollapseDict()
	        for seq,fseq in self:
	            newseq=seq
	            if 'N' in seq:
	                newseq=consensus(seq,self.neighbors(seq))
	                fseq['KEY']=newseq
	            ncd.add(fseq,newseq)
	        return ncd
	
	
	    def __len__(self):
	        return len(self.seqs)+sum(len(c) for c in self.children.values())+len(self.lowqual)
	
	def combine(f1,f2):
	    def val(f): return -f['KEY'].count('N'),(int(f['consensus_count']) if 'consensus_count' in f else 0)
	    targ = (f1 if val(f1) >= val(f2) else f2).copy()
	    targ['consensus_count'] =  int(f1['consensus_count'])+int(f2['consensus_count'])
	    targ['duplicate_count'] =  int(f1['duplicate_count'])+int(f2['duplicate_count'])
	    targ['ISOTYPECOUNTER'] = f1['ISOTYPECOUNTER']+f2['ISOTYPECOUNTER']
	    targ['VGENECOUNTER'] = f1['VGENECOUNTER']+f2['VGENECOUNTER']
	    targ['JGENECOUNTER'] = f1['JGENECOUNTER']+f2['JGENECOUNTER']
	    return targ
	
	def similar(s1,s2):
	    return len(s1)==len(s2) and all((n1==n2 or n1=='N' or n2=='N')
	                                  for n1,n2 in zip(s1,s2))
	
	def basecon(bases):
	    bases.discard('N')
	    if len(bases)==1: return bases.pop()
	    else: return 'N'
	
	def consensus(seq,A):
	    return ''.join((basecon(set(B)) if s=='N' else s) for (s,B) in zip(seq,zip(*A)))
	
	n_lim = int('${n_max}')
	conscount_filter = int('${conscount_min}')
	
	df = pd.read_csv('${airrFile}', sep = '\t') #, dtype = dtype_default)
	
	# make sure that all columns are int64 for createGermline
	
	cols =  [col for col in df.select_dtypes('float64').columns.values.tolist() if not re.search('support|score|identity', col)]
	df[cols] = df[cols].apply(lambda x: pd.to_numeric(x.replace("<NA>",np.NaN), errors = "coerce").astype("Int64"))
	
	conscount_flag = False
	if not 'consensus_count' in df:
	    df['consensus_count'] = 1
	    conscount_flag = True
	if not 'duplicate_count' in df:
	    df['duplicate_count'] = 1
	if not 'c_call' in df or not 'isotype' in df or not 'prcons' in df or not 'primer' in df or not 'reverse_primer' in df:
	    if 'c_call' in df:
	        df['c_call'] = df['c_call']
	    elif 'isotype' in df:
	        df['c_call'] = df['isotype']
	    elif 'primer' in df:
	        df['c_call'] = df['primer']
	    elif 'reverse_primer' in df:
	        df['c_call'] = df['reverse_primer']    
	    elif 'prcons' in df:
	        df['c_call'] = df['prcons']
	    elif 'barcode' in df:
	        df['c_call'] = df['barcode']
	    else:
	        df['c_call'] = 'Ig'
	
	# removing sequenes with duplicated sequence id    
	dup_n = df[df.columns[0]].count()
	df = df.drop_duplicates(subset='sequence_id', keep='first')
	dup_n = str(dup_n - df[df.columns[0]].count())
	
	df['c_call'].fillna('Ig', inplace=True)
	df['consensus_count'].fillna(2, inplace=True)
	nrow_i = df[df.columns[0]].count()
	df = df[df.apply(lambda x: x['sequence_alignment'][0:(x['v_germline_end']-1)].count('N')<=n_lim, axis = 1)]
	low_n = str(nrow_i-df[df.columns[0]].count())
	
	df['sequence_vdj'] = df.apply(lambda x: x['sequence_alignment'].replace('-','').replace('.',''), axis = 1)
	header=list(df.columns)
	fasta_ = df.to_dict(orient='records')
	c = CollapseDict(fasta_,nlim=10)
	d=c.fixedseqs()
	header.append('ISOTYPECOUNTER')
	header.append('VGENECOUNTER')
	header.append('JGENECOUNTER')
	
	rec_list = []
	for i, f in enumerate(d):
	    rec=f[1]
	    rec['sequence']=rec['KEY']
	    rec['consensus_count']=int(rec['consensus_count'])
	    rec['duplicate_count']=int(rec['duplicate_count'])
	    rec_list.append(rec)
	df2 = pd.DataFrame(rec_list, columns = header)        
	
	collapse_n = str(df[df.columns[0]].count()-df2[df2.columns[0]].count())
	
	# removing sequences without J assignment and non functional
	nrow_i = df2[df2.columns[0]].count()
	cond = (~df2['j_call'].str.contains('J')|df2['productive'].isin(['F','FALSE','False']))
	df_non = df2[cond]
	
	
	df2 = df2[df2['productive'].isin(['T','TRUE','True'])]
	cond = ~(df2['j_call'].str.contains('J'))
	df2 = df2.drop(df2[cond].index.values)
	
	non_n = nrow_i-df2[df2.columns[0]].count()
	if conscount_flag:
	    df2['consensus_count'] = df2['consensus_count'].replace(1,2)
	
	# removing sequences with low cons count
	df_cons_low = df2[df2['consensus_count']<conscount_filter]
	nrow_i = df2[df2.columns[0]].count()
	df2 = df2[df2['consensus_count']>=conscount_filter]
	
	
	cons_n = str(nrow_i-df2[df2.columns[0]].count())
	nrow_i = df2[df2.columns[0]].count()    
	
	df2.to_csv('${outfile}'+'passed.tsv', sep = '\t',index=False)
	
	df_cons_low.to_csv('${outfile}'+'failed_conscount.tsv', sep = '\t',index=False)
	df_non.to_csv('${outfile}'+'failed_functional.tsv', sep = '\t',index=False)
	
	print(str(low_n)+' Sequences had N count over 10')
	print(str(dup_n)+' Sequences had a duplicated sequnece id')
	print(str(collapse_n)+' Sequences were collapsed')
	print(str(df_non[df_non.columns[0]].count())+' Sequences were declared non functional or lacked a J assignment')
	print(str(df_cons_low[df_cons_low.columns[0]].count())+' Sequences had a conscount lower than threshold')
	print('Going forward with '+str(df2[df2.columns[0]].count())+' sequences')
	
	"""
}else{
	"""
	
	"""
}

}


process ogrdbstats_report {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /.*pdf$/) "ogrdb_plots/$filename"}
publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /.*csv$/) "ogrdb_report/$filename"}
input:
 set val(name),file(airrFile) from g21_19_outputFileTSV00_g_37
 set val(name1), file(germline_file) from g0_12_germlineFastaFile11_g_37
 set val(name2), file(v_germline_file) from g_40_germlineFastaFile12_g_37

output:
 file "*pdf"  into g_37_outputFilePdf00
 file "*csv"  into g_37_outputFileCSV11

script:

// general params
chain = params.ogrdbstats_report.chain
haplotype_gene = params.ogrdbstats_report.haplotype_gene
specie = params.ogrdbstats_report.specie

outname = airrFile.name.toString().substring(0, airrFile.name.toString().indexOf("_db-pass"))

"""

novel=""

if grep -q "_[A-Z][0-9]" ${v_germline_file}; then
	grep -A 6 "_[A-Z][0-9]" ${v_germline_file} > novel_sequences.fasta
	novel=\$(realpath novel_sequences.fasta)
	novel="--inf_file \$novel"
fi

IFS='\t' read -a var < ${airrFile}

airrfile=${airrFile}

if [[ ! "\${var[*]}" =~ "v_call_genotyped" ]]; then
    awk -F'\t' '{col=\$5;gsub("call", "call_genotyped", col); print \$0 "\t" col}' ${airrFile} > ${outname}_genotyped.tsv
    airrfile=${outname}_genotyped.tsv
fi

germline_file_path=\$(realpath ${germline_file})

airrFile_path=\$(realpath \$airrfile)

run_ogrdbstats \
	\$germline_file_path \
	${specie} \
	\$airrFile_path \
	${chain} \
	--hap_gene ${haplotype_gene} \
	\$novel 

"""

}

g_40_germlineFastaFile11_g_34= g_40_germlineFastaFile11_g_34.ifEmpty([""]) 
g_3_2_g_34= g_3_2_g_34.ifEmpty([""]) 


process Haplotype_inference_report {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /.*_haplotype.tsv$/) "haplotype_report/$filename"}
publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /.*_binomDel.tsv$/) "deletion_report/$filename"}
input:
 set val(name), file(airrFile) from g21_19_outputFileTSV00_g_34
 set val(name1),file(v_germline) from g_40_germlineFastaFile11_g_34
 set val(name2),file(d_germline) from g_3_2_g_34

output:
 set val(outname), file("*_haplotype.tsv") optional true  into g_34_outputFileTSV00
 set val(outname), file("*_binomDel.tsv") optional true  into g_34_outputFileTSV15_g_32

script:

v_germline = v_germline.name.startsWith('NO_FILE') ? "" : "${v_germline}"

d_germline = d_germline.name.startsWith('NO_FILE') ? "" : "${d_germline}"

outname = airrFile.name.toString().substring(0, airrFile.name.toString().indexOf("_db-pass"))
	
	
"""
#!/usr/bin/env Rscript

library(tigger)
library(data.table)
library(rabhit)
library(alakazam)

# read the data

data <- fread("${airrFile}", data.table=FALSE)

# read the germline
v_germline_db <- if("${v_germline}"!="") readIgFasta("${v_germline}") else NA
d_germline_db <- if("${d_germline}"!="") readIgFasta("${d_germline}") else NA


binom_del <-
       rabhit::deletionsByBinom(data, chain = "IGH")
       
# write deletion report

outfile_del = "${outname}_binomDel.tsv"

write.table(binom_del, file = outfile_del, sep = '\t', row.names = F, quote = T)

# haplotype inference

outfile_haplotype = "${outname}_gene-"

genes_haplotype <- c('IGHJ6', 'IGHD2-21', 'IGHD2-8')

for (gene in genes_haplotype) {
    CALL = paste0(tolower(substr(gene, 4, 4)), "_call")

    
    
    if (gene == 'IGHJ6') {
      CALL = 'j_call'
      toHap_GERM = c(v_germline_db, d_germline_db)
      toHap_col = c('v_call', 'd_call')
    }else{
    	toHap_GERM = c(v_germline_db)
    	toHap_col = c('v_call')
    }

    allele_fractions <-
      grep(gene, grep(',', data[[CALL]], invert = T, value = T), value = T)

	bool <- sum(table(allele_fractions) / length(allele_fractions) >= 0.3) == 2 && length(names(table(allele_fractions))) >= 2

    if (bool) {
      names_ <- names(table(allele_fractions)[table(allele_fractions) / length(allele_fractions) >= 0.3])
      
      alleles <- paste0(sapply(names_, function(x) strsplit(x, '[*]')[[1]][2]), collapse = '_')
      
      haplo <- rabhit::createFullHaplotype(
        data,
        toHap_col = toHap_col,
        hapBy_col = CALL,
        hapBy = gene,
        toHap_GERM = toHap_GERM,
        deleted_genes = binom_del,
        chain = "IGH"
      )
      
      # paste0(gene, '-', alleles)
      
      write.table(
        haplo,
        file = paste0(outfile_haplotype, gene, '-', alleles, "_haplotype.tsv"),
        sep = '\t',
        row.names = F,
        quote = T
      )

    }
}



"""
}


process TIgGER_bayesian_genotype_Inference_d_call {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /${call}_genotype_report.tsv$/) "d_genotpe_report/$filename"}
input:
 set val(name),file(airrFile) from g14_9_outputFileTSV00_g_30
 set val(name1), file(germline_file) from g_3_1_g_30

output:
 set val("${call}_genotype"),file("${call}_genotype_report.tsv")  into g_30_outputFileTSV03_g_32
 set val("${call}_personal_reference"), file("${call}_personal_reference.fasta")  into g_30_germlineFastaFile11

script:

// general params
call = params.TIgGER_bayesian_genotype_Inference_d_call.call
seq = params.TIgGER_bayesian_genotype_Inference_d_call.seq
find_unmutated = params.TIgGER_bayesian_genotype_Inference_d_call.find_unmutated
single_assignments = params.TIgGER_bayesian_genotype_Inference_d_call.single_assignments

germline_file = germline_file.name.startsWith('NO_FILE') ? "" : "${germline_file}"


"""
#!/usr/bin/env Rscript

library(tigger)
library(data.table)

## get genotyped alleles
GENOTYPED_ALLELES <- function(y) {
  m <- which.max(as.numeric(y[2:5]))
  paste0(unlist(strsplit((y[1]), ','))[1:m], collapse = ",")
}

# read data
data <- fread("${airrFile}", data.table=FALSE)
find_unmutated_ <- "${find_unmutated}"=="true"
germline_db <- if("${germline_file}"!="") readIgFasta("${germline_file}") else NA

# get the params based on the call column

params <- list("v_call" = c(0.6, 0.4, 0.4, 0.35, 0.25, 0.25, 0.25, 0.25, 0.25),
			   "d_call" = c(0.5, 0.5, 0, 0, 0, 0, 0, 0, 0),
			   "j_call" = c(0.5, 0.5, 0, 0, 0, 0, 0, 0, 0))

if("${single_assignments}"=="true"){
	data <- data[!grepl(pattern = ',', data[["${call}"]]),]
}

# remove rows where there are missing values in the call column

data <- data[!is.na(data[["${call}"]]),]

# infer the genotype using tigger
geno <-
      tigger::inferGenotypeBayesian(
        data,
        find_unmutated = find_unmutated_,
        germline_db = germline_db,
        v_call = "${call}",
        seq = "${seq}",
        priors = params[["${call}"]]
      )

print(geno)

geno[["genotyped_alleles"]] <-
  apply(geno[, c(2, 6:9)], 1, function(y) {
    GENOTYPED_ALLELES(y)
  })

# write the report
write.table(geno, file = paste0("${call}","_genotype_report.tsv"), row.names = F, sep = "\t")

# create the personal reference set
NOTGENO.IND <- !(sapply(strsplit(names(germline_db), '*', fixed = T), '[', 1) %in%  geno[["gene"]])
germline_db_new <- germline_db[NOTGENO.IND]

for (i in 1:nrow(geno)) {
  gene <- geno[i, "gene"]
  alleles <- geno[i, "genotyped_alleles"]
  if(alleles=="") alleles <- geno[i, "alleles"]
  alleles <- unlist(strsplit(alleles, ','))
  IND <- names(germline_db) %in%  paste(gene, alleles, sep = '*')
  germline_db_new <- c(germline_db_new, germline_db[IND])
}

# writing imgt gapped fasta reference
writeFasta(germline_db_new, file = paste0("${call}","_personal_reference.fasta"))

"""

}


process TIgGER_bayesian_genotype_Inference_j_call {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /${call}_genotype_report.tsv$/) "j_genotype_report/$filename"}
input:
 set val(name),file(airrFile) from g14_9_outputFileTSV00_g_31
 set val(name1), file(germline_file) from g_4_1_g_31

output:
 set val("${call}_genotype"),file("${call}_genotype_report.tsv")  into g_31_outputFileTSV04_g_32
 set val("${call}_personal_reference"), file("${call}_personal_reference.fasta")  into g_31_germlineFastaFile11

script:

// general params
call = params.TIgGER_bayesian_genotype_Inference_j_call.call
seq = params.TIgGER_bayesian_genotype_Inference_j_call.seq
find_unmutated = params.TIgGER_bayesian_genotype_Inference_j_call.find_unmutated
single_assignments = params.TIgGER_bayesian_genotype_Inference_j_call.single_assignments

germline_file = germline_file.name.startsWith('NO_FILE') ? "" : "${germline_file}"


"""
#!/usr/bin/env Rscript

library(tigger)
library(data.table)

## get genotyped alleles
GENOTYPED_ALLELES <- function(y) {
  m <- which.max(as.numeric(y[2:5]))
  paste0(unlist(strsplit((y[1]), ','))[1:m], collapse = ",")
}

# read data
data <- fread("${airrFile}", data.table=FALSE)
find_unmutated_ <- "${find_unmutated}"=="true"
germline_db <- if("${germline_file}"!="") readIgFasta("${germline_file}") else NA

# get the params based on the call column

params <- list("v_call" = c(0.6, 0.4, 0.4, 0.35, 0.25, 0.25, 0.25, 0.25, 0.25),
			   "d_call" = c(0.5, 0.5, 0, 0, 0, 0, 0, 0, 0),
			   "j_call" = c(0.5, 0.5, 0, 0, 0, 0, 0, 0, 0))

if("${single_assignments}"=="true"){
	data <- data[!grepl(pattern = ',', data[["${call}"]]),]
}

# remove rows where there are missing values in the call column

data <- data[!is.na(data[["${call}"]]),]

# infer the genotype using tigger
geno <-
      tigger::inferGenotypeBayesian(
        data,
        find_unmutated = find_unmutated_,
        germline_db = germline_db,
        v_call = "${call}",
        seq = "${seq}",
        priors = params[["${call}"]]
      )

print(geno)

geno[["genotyped_alleles"]] <-
  apply(geno[, c(2, 6:9)], 1, function(y) {
    GENOTYPED_ALLELES(y)
  })

# write the report
write.table(geno, file = paste0("${call}","_genotype_report.tsv"), row.names = F, sep = "\t")

# create the personal reference set
NOTGENO.IND <- !(sapply(strsplit(names(germline_db), '*', fixed = T), '[', 1) %in%  geno[["gene"]])
germline_db_new <- germline_db[NOTGENO.IND]

for (i in 1:nrow(geno)) {
  gene <- geno[i, "gene"]
  alleles <- geno[i, "genotyped_alleles"]
  if(alleles=="") alleles <- geno[i, "alleles"]
  alleles <- unlist(strsplit(alleles, ','))
  IND <- names(germline_db) %in%  paste(gene, alleles, sep = '*')
  germline_db_new <- c(germline_db_new, germline_db[IND])
}

# writing imgt gapped fasta reference
writeFasta(germline_db_new, file = paste0("${call}","_personal_reference.fasta"))

"""

}

g_30_outputFileTSV03_g_32= g_30_outputFileTSV03_g_32.ifEmpty([""]) 
g_34_outputFileTSV15_g_32= g_34_outputFileTSV15_g_32.ifEmpty([""]) 


process vdjbase_genotype_report {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /${outname}_genotype.tsv$/) "vdjbase_genotype_report/$filename"}
input:
 set val(name1),file(initial_run) from g_15_outputFileTSV00_g_32
 set val(name2),file(personal_run) from g21_19_outputFileTSV01_g_32
 set val(name3),file(v_genotype) from g_40_outputFileTSV02_g_32
 set val(name4),file(d_genotype) from g_30_outputFileTSV03_g_32
 set val(name5),file(j_genotype) from g_31_outputFileTSV04_g_32
 set val(name6),file(deletion_run) from g_34_outputFileTSV15_g_32

output:
 set val(outname),file("${outname}_genotype.tsv")  into g_32_outputFileTSV00

script:

d_genotype = d_genotype.name.startsWith('NO_FILE') ? "" : "${d_genotype}"
deletion_run = deletion_run.name.startsWith('NO_FILE') ? "" : "${deletion_run}"
outname = initial_run.name.substring(0, initial_run.name.indexOf("_db-pass"))

"""
#!/usr/bin/env Rscript

library(dplyr)
library(data.table)
library(alakazam)

# the function get the alleles calls frequencies
getFreq <- function(data, call = "v_call"){
	# get the single assignment frequency of the alleles
	table(grep(",", data[[call]][data[[call]]!=""], invert = T, value = T))
}

addFreqInfo <- function(tab, gene, alleles){
	paste0(tab[paste0(gene, "*", unlist(strsplit(alleles, ',')))], collapse = ";")
}

## read selected data columns

data_initial_run <- fread("${initial_run}", data.table = FALSE, select = c("sequence_id", "v_call", "d_call", "j_call"))
data_genotyped <- fread("${personal_run}", data.table = FALSE, select = c("sequence_id", "v_call", "d_call", "j_call"))

## make sure that both datasets have the same sequences. 
data_initial_run <- data_initial_run[data_initial_run[["sequence_id"]] %in% data_genotyped[["sequence_id"]],]
data_genotyped <- data_genotyped[data_genotyped[["sequence_id"]] %in% data_initial_run[["sequence_id"]],]
data_initial_run <- data_initial_run[order(data_initial_run[["sequence_id"]]), ]
data_genotyped <- data_genotyped[order(data_genotyped[["sequence_id"]]), ]

non_match_v <- which(data_initial_run[["v_call"]]!=data_genotyped[["v_call"]])

data_initial_run[["v_call"]][non_match_v] <- data_genotyped[["v_call"]][non_match_v]
    

# for the v_calls
print("v_call_fractions")
tab_freq_v <- getFreq(data_genotyped, call = "v_call")
tab_clone_v <- getFreq(data_initial_run, call = "v_call")
# keep just alleles that passed the genotype
tab_clone_v <- tab_clone_v[names(tab_freq_v)]
# read the genotype table
genoV <- fread("${v_genotype}", data.table = FALSE)
# add information to the genotype table
genoV <-
  genoV %>% dplyr::group_by(gene) %>% dplyr::mutate(
    freq_by_clone = addFreqInfo(tab_clone_v, gene, genotyped_alleles),
    freq_by_seq = addFreqInfo(tab_freq_v, gene, genotyped_alleles)
  )


# for the j_calls
print("j_call_fractions")
tab_freq_j <- getFreq(data_genotyped, call = "j_call")
tab_clone_j <- getFreq(data_initial_run, call = "j_call")
# keep just alleles that passed the genotype
tab_clone_j <- tab_clone_j[names(tab_freq_j)]
# read the genotype table
genoJ <- fread("${j_genotype}", data.table = FALSE, colClasses = "character")
# add information to the genotype table
genoJ <-
  genoJ %>% dplyr::group_by(gene) %>% dplyr::mutate(
    freq_by_clone = addFreqInfo(tab_clone_j, gene, genotyped_alleles),
    freq_by_seq = addFreqInfo(tab_freq_j, gene, genotyped_alleles)
  )
  
# for the d_calls; first check if the genotype file for d exists
if("${d_genotype}"!=""){
	# for the d_calls
	print("d_call_fractions")
	tab_freq_d <- getFreq(data_genotyped, call = "d_call")
	tab_clone_d <- getFreq(data_initial_run, call = "d_call")
	# keep just alleles that passed the genotype
	tab_clone_d <- tab_clone_d[names(tab_freq_d)]
	# read the genotype table
	genoD <- fread("${d_genotype}", data.table = FALSE, colClasses = "character")
	# add information to the genotype table
	print(tab_clone_d)
	print(tab_freq_d)
	print(genoD)
	genoD <-
	  genoD %>% dplyr::group_by(gene) %>% dplyr::mutate(
	    freq_by_clone = addFreqInfo(tab_clone_d, gene, genotyped_alleles),
	    freq_by_seq = addFreqInfo(tab_freq_d, gene, genotyped_alleles)
	  )
	  
	genos <- plyr::rbind.fill(genoV, genoD, genoJ)
}else{
	genos <- plyr::rbind.fill(genoV, genoJ)
}

genos[["freq_by_clone"]] <- gsub("NA", "0", genos[["freq_by_clone"]])
genos[["freq_by_seq"]] <- gsub("NA", "0", genos[["freq_by_seq"]])

## add deletion information.

if("${deletion_run}"!=""){
	print("deletion_information")
	binom_del <- fread("${deletion_run}", data.table = FALSE)
	genos_names <- names(genos)
	
	deleted_genes <- binom_del[["gene"]][grep("^Deletion", binom_del[["deletion"]])]
	
	for (g in deleted_genes) {
		if (g %in% genos[["gene"]]) {
			# if gene is in the genotype then change to deleted
			if("k_diff" %in% genos_names) genos[genos[["gene"]] == g, "k_diff"] <- "1000"
			genos[genos[["gene"]] == g, "genotyped_alleles"] <- "Deletion"
		} else{
			# if gene is not in the genotype then add the gene as deleted
			tmp <- as.data.frame(t(setNames(rep(NA,length(genos_names)), genos_names)), stringsAsFactors = FALSE)
			tmp[["gene"]] <- g
			tmp[["genotyped_alleles"]] <- "Deletion"
			if("k_diff" %in% genos_names){
				tmp[["k_diff"]] <- "1000"
			}
		  genos <- plyr::rbind.fill(genos, tmp)
		}
	}
}

# write the report
write.table(genos, file = paste0("${outname}","_genotype.tsv"), row.names = F, sep = "\t")
"""
}


workflow.onComplete {
println "##Pipeline execution summary##"
println "---------------------------"
println "##Completed at: $workflow.complete"
println "##Duration: ${workflow.duration}"
println "##Success: ${workflow.success ? 'OK' : 'failed' }"
println "##Exit status: ${workflow.exitStatus}"
}
