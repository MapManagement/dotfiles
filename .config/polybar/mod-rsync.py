import subprocess


sh_cmd = [
    "pidof", "rsync"
]
try:
    subprocess.check_output(sh_cmd)
    print("Syncing")
except subprocess.CalledProcessError:
    print("Off")