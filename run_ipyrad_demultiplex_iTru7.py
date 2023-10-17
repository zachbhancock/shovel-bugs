import ipyrad as ip
import ipyrad.analysis as ipa


# demux outer i7s to plate1-16
outer1 = ip.Assembly("Plates_1-16_demultiplex_itru7_combined_reads")
outer1.params.project_dir = "/scratch/knowlesl_root/knowlesl1/plwood/Melanoplines_plates1-16"
outer1.params.raw_fastq_path = "/scratch/knowlesl_root/knowlesl1/plwood/Melanoplines_plates1-16/Melanoplies_plates1-16_rawdata_combined_reads/All_libraries*R*.gz"
outer1.params.barcodes_path = "/scratch/knowlesl_root/knowlesl1/plwood/Melanoplines_plates1-16/melanoplines_plate1–16_itru7_barcodes.tsv"
outer1.params.datatype = 'pairddrad'

# important: set hackers params to demux on i7
outer1.hackersonly.demultiplex_on_i7_tags = True
outer1.hackersonly.merge_technical_replicates = True

# run step 1 to demux
outer1.run("1", auto=True, force=True)
