#! /bin/bash
exec java -jar /home/coder/.local/share/code-server/extensions/usethesource.rascalmpl-0.11.2-universal/assets/jars/rascal.jar $* << EOF
import util::Reflective;
newRascalProject(|home:///workingdir|)
EOF