import subprocess
import platform
import re

def ping_host(host):
    os_type = platform.system().lower()

    if os_type == "windows":
        command = ["ping", "-n", "4", host]
    else:
        command = ["ping", "-c", "4", host]

    try:
        result = subprocess.run(command, stdout=subprocess.PIPE, text=True, timeout=10)

        if result.returncode == 0:
            print(f"\nHost: {host}")
            print("Status: Reachable")

            avg = re.search(r'Average = (\d+)ms', result.stdout)
            if avg:
                print("Average Time:", avg.group(1) + " ms")
        else:
            print(f"\nHost: {host}")
            print("Status: Unreachable")

    except:
        print("Error occurred")


if __name__ == "__main__":
    choice = input("Multiple hosts? (y/n): ")

    if choice == 'y':
        hosts = input("Enter IPs separated by comma: ").split(',')
        for host in hosts:
            ping_host(host.strip())
    else:
        host = input("Enter IP or website: ")
        ping_host(host)