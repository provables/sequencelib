c.InteractiveShellApp.extra_extensions = ["autoreload"]
c.InteractiveShellApp.exec_lines = [
    "%autoreload 2",
    "import synthesize, os",
    "GENSEQ_PORT=os.environ['GENSEQ_PORT']",
    "GENSEQ_CTRL=os.environ['GENSEQ_CTRL']",
    "print()",
    "print('* `synthesize` imported. Proceed with `c = synthesize.Context()`')",
    "print(f'* `genseq` listening on port {GENSEQ_PORT}')",
    "print(f'* control `genseq` with {GENSEQ_CTRL}')"
]
