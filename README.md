# VLC Media Player Open Source Audit

Bansal Kriti Ganesh is the student. His registration number is 24BAS10078. His course is Open Source Software.# Synopsis & Requirements
Five shell scripts that audit VLC Media Player and show off Linux command-line skills.
**Needed:** standard utilities (`dpkg`, `grep`, `du`), and `bash`, `vlc` (install via `sudo apt install vlc`).# Run Instructions & Scripts
First, navigate to the scripts folder: `cd scripts`

* Script 1: System Identity Report (displays information about the OS, kernel, and license)
  Execute: `./script1.sh`
* **Script 2: FOSS Package Inspector** (Verifies VLC philosophy and installation)
  Execute: `./script2.sh`
* **Script 3: Disk & Permission Auditor** (audits VLC configuration and system directories)
  Execute: `./script3.sh`
* **Script 4: Log File Analyzer** (looks for a keyword, like "install")
  Execute: `./script4.sh /var/log/dpkg.log install`
* **Script 5: Manifesto Generator** (creates an open-source manifesto interactively)
  Execute: `./script5.sh`
