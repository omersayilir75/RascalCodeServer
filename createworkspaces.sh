#! /bin/bash
for i in $(seq 1 30);
do
$(eval "exec java -jar /home/coder/.local/share/code-server/extensions/usethesource.rascalmpl-0.11.2-universal/assets/jars/rascal.jar << EOF
import util::Reflective;
newRascalProject(|home:///workingdir/user_$i|)
EOF")
done
