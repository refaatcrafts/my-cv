$out_dir = 'build';
$aux_dir = 'build';

# Ensure synctex files go to build directory
$ENV{'TEXINPUTS'} = './/:' . ($ENV{'TEXINPUTS'} // '');

# After successful compilation, copy PDF to pdf/ folder
$success_cmd = 'mkdir -p pdf && cp %D pdf/';

# Clean up any stray files in root after compilation
$compiling_cmd = 'rm -f %R.synctex.gz %R.pdf 2>/dev/null; true';
