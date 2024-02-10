import subprocess

ansible_parameters = {
    "is_desktop": False,
    "external_storage": False,
    "multi_monitor": False
}

def read_user_inputs():
    is_desktop_text = "Is this a machine for virtualization purposes(y/n)?"
    is_desktop_answer = input(is_desktop_text)
    ansible_parameters["is_desktop"] = convert_user_input(is_desktop_answer)

    external_storage_text = "Are directories for external storage needed(y/n)?"
    external_storage_answer = input(external_storage_text)
    ansible_parameters["external_storage"] = convert_user_input(external_storage_answer)

    multi_monitor_text = "Are you going to use multiple monitors on this device(y/n)?"
    multi_monitor_answer = input(multi_monitor_text)
    ansible_parameters["multi_monitor"] = convert_user_input(multi_monitor_answer)

def convert_user_input(answer: str) -> bool:
    return answer == "y"

def install_asible():
    installation_command = ["python", "-m", "pip", "install", "ansible", "ansible-core"]

    subprocess.run(installation_command)
    print("Installed ansible")

def execute_ansible_playbook():
    ansible_command = ["ansible-playbook", "-K", "playbook.yml"]

    for key in ansible_parameters.keys():
        if ansible_parameters[key]:
            parameter = f'{key}=true'
            ansible_command.append("-e")
            ansible_command.append(parameter)

    subprocess.run(ansible_command)

if __name__ == "__main__":
    install_asible()
    read_user_inputs()
    execute_ansible_playbook()
