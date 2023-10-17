import ipyrad as ip
import ipyrad.analysis as ipa


# demux outer i7s to plate1-16
outer1 = ip.Assembly("demultiplexed_haustorius_reads")
outer1.params.project_dir = "/scratch/bradburd_root/bradburd1/hancockz/haustorius_seqs"
outer1.params.raw_fastq_path = "/scratch/bradburd_root/bradburd1/hancockz/haustorius_seqs/fastqs_9284-ZH/9284-ZH_*fastq.gz"
outer1.params.barcodes_path = "/home/hancockz/shovel-bugs/Enzyme_barcodes.txt"
outer1.params.datatype = 'pairddrad'

# important: set hackers params to demux on i7
outer1.hackersonly.demultiplex_on_i7_tags = True
outer1.hackersonly.merge_technical_replicates = True

# run step 1 to demux
outer1.run("1", auto=True, force=True)
