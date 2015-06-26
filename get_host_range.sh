#!/bin/bash

export PATH=/panhome/navratil/bin/:/usr/remote/bin:$PATH

echo "start script:"
date

for path in /panbanques/acnucdb/genbank/flat_files/*.seq
do
    qsub get_host_range.pbs -v path=${path}
done
# cut -f 1,2,5,7,8 *.gb2hr| sort -u &> gb2hr.tab   



echo "end script:"
date