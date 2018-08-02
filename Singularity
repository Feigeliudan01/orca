Bootstrap: docker
From: linuxbrew/linuxbrew

%labels
    MAINTAINER Tatyana Mozgacheva

%environment
    PERL5LIB=/home/linuxbrew/perl5/lib/perl5
    export PERL5LIB

    PATH=/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH
    export PATH

%post
    PERL5LIB=/home/linuxbrew/perl5/lib/perl5
    export PERL5LIB

    PATH=/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH
    export PATH

    echo 'PERL5LIB='$PERL5LIB > /etc/environment
    echo 'PATH='$PATH >> /etc/environment

    su -c 'brew install perl -v' linuxbrew
    su -c 'brew install cpanm gcc gcc@4.9 zlib expat berkeley-db -v' linuxbrew
    su -c 'brew install mysql' linuxbrew
    su -c 'brew install ruby' linuxbrew
    su -c 'gem install gnuplot RubyInline terminal-table narray' linuxbrew

    su -c 'cpanm -i List::MoreUtils::XS DBD::mysql DB_File forks Perl::Unsafe::Signals Bio::Root::Version IO::All forks::shared Want Bit::Vector DBD::SQLite DBI File::Which IO::Prompt Inline::C PerlIO::gzip XML::Simple' linuxbrew

    su -c 'cpanm -i Module::Build Class::Inspector SOAP::Lite SVG Term::ReadKey Time::HiRes XML::Parser Carp::Clan HTML::Parser LWP URI Inline Parse::RecDescent version' linuxbrew

    #PerlIO::gzip fails

    # for bowtie
    su -c 'cpanm -i Unix::Processors' linuxbrew
    su -c 'cpanm Bio::Perl' linuxbrew

    # for pip and setuptools
    su -c 'brew install python' linuxbrew

    ln -s python2 /home/linuxbrew/.linuxbrew/bin/python

    su -c 'brew install homebrew/core/bedops' linuxbrew
    su -c 'brew install python3' linuxbrew

    #for cerulean
    su -c 'brew install numpy' linuxbrew
    su -c 'pip2 install biopython' linuxbrew
    su -c 'brew install libxml2' linuxbrew
    su -c 'pip2 install python-igraph' linuxbrew
    su -c 'pip2 install pysam' linuxbrew
    su -c 'pip2 install htseq pandas pyvcf virtualenv' linuxbrew
    su -c 'pip2 install cwlref-runner' linuxbrew

    su -c 'brew install tcsh' linuxbrew

    su -c 'brew install matplotlib' linuxbrew

    su -c 'brew install scipy' linuxbrew

    su -c 'brew install R' linuxbrew
    sudo apt-get install zip -y

    su -c 'brew install unzip' linuxbrew

    su -c 'brew tap brewsci/science' linuxbrew
    su -c 'brew tap brewsci/bio' linuxbrew

    su -c 'cpanm -i HTML::Entities LWP::Simple LWP::Protocol::https  Statistics::Descriptive Moo' linuxbrew

    #for bowtie
    su -c 'cpanm -i Clone Apache::DBI' linuxbrew

    #for icu4c,
    sudo apt-get install wamerican

    #for gcc-4.9 for testing script
    su -c 'brew install miller' linuxbrew

    su -c 'brew install a5 abacas abyss-explorer abyss ace-corrector adapterremoval afra amos andi anvio arcs art artemis astral atram autoconf automake' linuxbrew
    # bam2wig curl: (7) Failed to connect to www.epigenomes.ca port 80: Connection timed out
    #bedtools /bin/bash: python: command not found
    su -c 'brew install bam-readcount bamhash bamm bamtools bamutil barrnap bbtools bcalm bcftools beagle beast beast2 bedops beetl bfc bioawk biobloomtools biomake bison blat bless bowtie bowtie2 breseq busco bwa' linuxbrew
    su -c 'brew install canu \
    cap3 \
    cd-hit \
    cegma \
    celera-assembler \
    centrifuge \
    cerulean \
    circlator \
    clark \
    clonalframeml \
    clonehd \
    clustal-omega \
    clustal-w \
    cmake \
    cutadapt \
    curl \
    cytoscape' linuxbrew
    su -c 'brew install daligner \
    dazz_db \
    delly \
    dextractor \
    diamond \
    discovar \
    dsk \
    dwgsim' linuxbrew
    su -c 'brew install e-mem \
    edirect \
    emacs \
    exonerate' linuxbrew

    su -c 'brew install fasta \
    fastml \
    fastq-tools \
    fastqc \
    fasttree \
    fastuniq \
    fastx_toolkit \
    fermi-lite \
    fermi \
    fermi2 \
    fermikit \
    flash \
    flex \
    fqzcomp \
    freebayes \
    freec \
    fsa \
    fwdpp' linuxbrew
    su -c 'brew install gatb' linuxbrew
    su -c 'brew install geneid' linuxbrew
    su -c 'brew install genewise' linuxbrew
    su -c 'brew install genometools' linuxbrew

    su -c 'brew install gingr' linuxbrew
    su -c 'brew install glimmerhmm' linuxbrew
    su -c 'brew install gmap-gsnap' linuxbrew
    su -c 'brew install gnuplot' linuxbrew

    su -c 'brew install grabix' linuxbrew
    su -c 'brew install graphviz' linuxbrew
    su -c 'brew install gsl' linuxbrew
    su -c 'brew install harfbuzz' linuxbrew
    su -c 'brew install hisat' linuxbrew
    su -c 'brew install hisat2' linuxbrew
    su -c 'brew install hlaminer' linuxbrew
    su -c 'brew install hmmer' linuxbrew
    su -c 'brew install hmmer2' linuxbrew
    su -c 'brew install htsbox' linuxbrew
    su -c 'brew install htslib' linuxbrew
    su -c 'brew install humann2' linuxbrew
    su -c 'brew install icu4c \
    idba' linuxbrew
    su -c 'brew install homebrew/core/igv' linuxbrew
    su -c 'brew install igvtools \
    impute2 \
    infernal \
    iqtree \
    iva' linuxbrew
    su -c 'brew install jellyfish-1.1 \
    jellyfish \
    jpeg' linuxbrew

    su -c 'brew install kaiju kat kmacs kmc kmergenie kmerstream kollector kraken' linuxbrew

    su -c 'brew install last \
    libbigwig \
    libpll \
    libsequence \
    libtool \
    lighter \
    links-scaffolder \
    lrsim \
    lsd \
    lua \
    lumpy-sv' linuxbrew
    su -c 'brew install m4 \
    macse \
    mafft \
    makedepend' linuxbrew

    su -c 'brew install maker man-db mapsembler2 maq mash mcl megahit meme methpipe' linuxbrew

    su -c 'brew install mhap minced minia miniasm minimap mir-prefer mitofy mlst mothur mrbayes multi-worm-tracker mummer muscle' linuxbrew
    su -c 'brew install nano nanopolish ncl newick-utils newicktools nonpareil novoalign ntcard nxtrim' linuxbrew
    su -c 'brew install oases' linuxbrew

    su -c 'brew install oma' linuxbrew

    su -c 'brew install orthofinder' linuxbrew

    su -c 'brew install paml pandaseq parallel parsnp pathd8 pathvisio pcre pear phipack' linuxbrew
    su -c 'brew install phlawd phylip phyml phyutility picard-tools piler pilercr pilon pixman plink pkg-config poa prodigal ' linuxbrew
    su -c 'brew install prokka proteinortho psmc quast quest quorum racon' linuxbrew
    su -c 'brew install rampart raxml ray rcorrector readline' linuxbrew
    # su -c 'brew install readseq' linuxbrew
    su -c 'brew install readsim recon repeatmasker repeatmodeler repeatscout rmblast rna-star rnammer ropebwt2' linuxbrew

    su -c 'cpanm -i URI::Escape' linuxbrew
    su -c 'brew install sambamba samblaster samtools@0.1 samtools scarpa brewsci/bio/sdsl-lite seqan seqtk sequel sga shrimp sickle brewsci/bio/simulate-pcr skewer smalt snap' linuxbrew
    su -c 'brew install snoscan snp-sites snpeff soapdenovo sortmerna spaced spades spici sqlite squeezambler sratoolkit ssake stringtie szip swarm' linuxbrew
    su -c 'brew install tagdust tasr tbb tbl2asn tophat trans-abyss' linuxbrew
    su -c 'brew install transrate-tools trf trimadap trimal trimmomatic trinity trnascan unicycler uproc' linuxbrew
    su -c 'brew install vague varscan vcake vcflib vcftools velvet velvetoptimiser viennarna vim vsearch vt' linuxbrew
    su -c 'brew install weblogo wiggletools yaha' linuxbrew

    chmod -R 777 /home/linuxbrew/.linuxbrew