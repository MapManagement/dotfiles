import subprocess


virsh_cmd = [
    "virsh",
    "-c", "qemu:///system",
    "list", "--name"
    ]
result = subprocess.check_output(virsh_cmd)
decoded_result = result.decode("utf-8").strip("\n").replace("\n", ", ")

if decoded_result is None:
    decoded_result = "None"

print(" " + decoded_result)