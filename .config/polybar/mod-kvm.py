import subprocess


virsh_cmd = [
    "virsh",
    "-c", "qemu:///system",
    "list", "--name"
    ]
result = subprocess.check_output(virsh_cmd)

if result.isspace:
    result = b"None"

print(" "+ (result.decode("utf-8")))