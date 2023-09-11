output_dir="./echo_out/"
if [ ! -d "$output_dir" ]; then
    mkdir $output_dir
fi
robin generate ./echo_out/expe.yaml \
      --output-dir=$output_dir \
      --batcmd="batsim -p /tmp/batsim-src-stable/platforms/cluster512.xml -w /tmp/batsim-src-stable/workloads/test_batsim_paper_workload_seed1.json -e /tmp/expe-out/out" \
      --schedcmd='batsched -v easy_bf'
