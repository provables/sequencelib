c.InteractiveShellApp.extra_extensions = ["autoreload"]
c.InteractiveShellApp.exec_lines = [
    "%autoreload 2",
    "import synthesize",
    "print('\\n`synthesize` imported. Proceed with `c = synthesize.Context()` after starting `genseq`')",
]
