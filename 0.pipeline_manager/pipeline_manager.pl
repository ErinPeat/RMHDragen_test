# These are the basic set of options but we will probably need to make evrything in a resources file settable via additional options
my $resourcefile = "/data/resources_GRCh37.vm.txt";
my $samples = undef;
my $analyses = undef;
my $analyses_cmd='';
my $args = scalar @ARGV;
my $help;
my %resources=();
my @analyses = ();
my %sample_info = ();
my %projs = (); ## project ID will equals to pool ID unless they are control samples or validation samples???
my %gatk_grps = ();
my $pool_id='Pool_Nextseq';
my $run_id='';
my $umi_setting='none';
my $noreservation=1; # default no reservation --noreservation flag is redundant
my $norun=0;
my %jobs_to_submit = (); # add the script for each job to this array, when done, send it to bsub_jobs...
                          # This needs to be outside of the sample processing loop so that multiple
                          # samples can be added to a gatk group before the analysis is started
my $job_grps = undef;
my %bjob_scripts = ();