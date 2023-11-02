#!/bin/sh

file=${1}

cat ${file} | grep -e "part{" -e "chapter{" -e "section{" |\
    sed -e 's/\\part{/ /g'\
        -e 's/\\chapter{/├── /g'\
        -e 's/\\section{/│   ├── /g'\
        -e 's/\\subsection{/│   │   ├── /g'\
        -e 's/\\subsubsection{/│   │   │   ├── /g'\
        -e 's/}//g'



	
