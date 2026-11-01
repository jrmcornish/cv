# Out-of-source build: auxiliary files go to .build/, the PDF stays here.
$pdf_mode = 1;
$aux_dir  = '.build';
$out_dir  = '.';
$emulate_aux = 1;
$pdflatex = 'pdflatex -file-line-error -synctex=1 %O %S';
# Only clean up what latexmk produced; leave fig/ and resources/ PDFs alone.
$clean_ext = 'synctex.gz run.xml bbl blg pre';
