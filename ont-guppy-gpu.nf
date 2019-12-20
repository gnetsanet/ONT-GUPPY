process guppy_basecalling{
	
	tag { "guppy_basecalling" }


	accelerator 1, type: 'gpu'
	containerOptions '--gpu all'


	script:
	"""
	mkdir -p /data/ont-input-data/

	mkdir -p /data/ont-output-data/

	/usr/local/bin/aws s3 cp s3://ont-guppy/FAK82916_60b7cb854510751196688d416fdfa02e538a68a9_99.fast5 /data/ont-input-data/

	/ont-guppy/bin/guppy_basecaller -x "cuda:all" --flowcell FLO-MIN106 --kit SQK-LSK109 --qscore_filtering --min_qscore 7 -i /data/ont-input-data/ -s /data/ont-output-data/

	/usr/local/bin/aws s3 cp /data/ont-output-data/ s3://ont-guppy/LT-SSD-data --recursive

	"""
}
