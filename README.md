# oss-audit--24BAI10320-
# Open Source Audit Project

**Student Name:** Akhil Sharma
**Roll Number:** 24BAI10320
**Chosen Software:** Python Programming Language

## Description of Scripts
* **Script 1 (System Identity):** Displays the Linux distribution, kernel version, current user, uptime, date, and OS license.
* **Script 2 (Package Inspector):** Checks if `python3` is installed using `dpkg` and outputs a philosophical note about the software.
* **Script 3 (Disk Auditor):** Loops through essential system directories reporting sizes and permissions, and specifically checks the Python library directory.
* **Script 4 (Log Analyzer):** Reads a system log file, counts the occurrences of a specific keyword (default: "error"), and prints the last 5 matches.
* **Script 5 (Manifesto Generator):** Interactively asks the user three questions to generate a personalized open-source philosophy manifesto in a text file.

## Step-by-Step Instructions to Run Scripts
To run these scripts on an Ubuntu/Debian Linux system, open your terminal and follow these steps:

1. Clone this repository: `git clone https://github.com/akhil952/oss-audit-24BAI10320.git`
2. Navigate into the directory: `cd oss-audit-24BAI10320`
3. Make all scripts executable: `chmod +x *.sh`
4. Run any script using the `./` command. For example: `./script1.sh`
*Note: Script 4 requires a log file argument, e.g., `./script4.sh /var/log/syslog "error"`*

## Dependencies Required
* A Linux environment (Ubuntu/Debian recommended).
* Basic shell utilities (`bash`, `awk`, `grep`, `dpkg`, `du`).
