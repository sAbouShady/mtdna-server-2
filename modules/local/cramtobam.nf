process CRAMTOBAM {
	input:
	path cram_file

	output:
	path "${cram_file.baseName}.bam", emit: bam_ch

	"""
    samtools index ${cram_file}
    samtools view -b ${cram_file} > ${cram_file.baseName}.bam
	"""
}