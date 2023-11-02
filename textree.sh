#!/bin/sh

file=${1}

grep -e "part{" -e "chapter{" -e "section{" ${file }|\
    sed -e 's/\\part{/ /g'\
        -e 's/\\chapter{/├── /g'\
        -e 's/\\section{/│   ├── /g'\
        -e 's/\\subsection{/│   │   ├── /g'\
        -e 's/\\subsubsection{/│   │   │   ├── /g'\
        -e 's/}//g'



	
