# Textree
Generate a content tree given a tex file

## Example
```
├── Acetic ethics in the Phaedo
│   ├── Assessing the Phaedo
│   │   ├── Overview
│   │   ├── Aim
│   │   └── Arguments
│   ├── Possible readings
│   │   ├── The ascetic reading
│   │   ├── The evaluative reading
│   │   └── The hedonistic reading
│   ├── Reasons for preferring the ascetic reading
│   └── Concluding Remarks
└── The first generation Neoplatonists
    ├── Porphyry's ethics
    │   ├── The Good Life
    │   └── Attaining the good life
    ├── Plotinus' Ethics
    │   └── The Good Life
    │       └── Virtue
    └── Continuation of the Phaedo
```

## Versions

There are two versions of this program, one written in python and one using posix sed and grep in a shell script.
The shell version is much less astetic in my oppion.
To illustrate this, below is the output of textree.sh on the same file as above:
```
├── Acetic ethics in the Phaedo
│   ├── Assessing the Phaedo
│   │   ├── Overview
│   │   ├── Aim
│   │   ├── Arguments
│   ├── Possible readings
│   │   ├── The ascetic reading
│   │   ├── The evaluative reading
│   │   ├── The hedonistic reading
│   ├── Reasons for preferring the ascetic reading
│   ├── Concluding Remarks
├── The first generation Neoplatonists
│   ├── Porphyry's ethics
│   │   ├── The Good Life
│   │   ├── Attaining the good life
│   ├── Plotinus' Ethics
│   │   ├── The Good Life
│   │   │   ├── Virtue
│   ├── Continuation of the Phaedo
```

The shell version is however more simple to a significant degree. Use this version if you are big on simple software.
