# WiFi_Profile_Extractor
A script-based solution for extracting Wi-Fi profile details on both Windows and Linux systems. This repository contains two versions of the script

Windows Batch File: Extracts Wi-Fi profile details, including connection mode, network broadcast settings, authentication type, and more, and writes it to a text file.

Linux Shell Script: A similar script for Linux systems to extract Wi-Fi profile details in a human-readable format.

Files in the repository:
wifi_profile_extractor.bat: Windows batch script to extract and filter Wi-Fi profile details.

wifi_profile_extractor.sh: Linux shell script to extract and filter Wi-Fi profile details.

# WiFi Profile Extractor

This repository contains scripts to extract Wi-Fi profile details on both **Windows** and **Linux** systems.

## Scripts

### Windows: `wifi_profile_extractor.bat`

This batch script fetches all the Wi-Fi profiles saved on your Windows machine, filters specific details such as:
- Name
- Connection Mode
- Network Broadcast
- AutoSwitch
- MAC Randomization
- Authentication
- Cipher
- Key Content

It saves the output into a file called `ABC.txt`.

### Linux: `wifi_profile_extractor.sh`

This shell script performs a similar function on Linux systems using `nmcli` to extract the same Wi-Fi profile information and displays it.

## Usage

1. **For Windows:**
    - Run `wifi_profile_extractor.bat` as a `.bat` file.
    - It will generate the `ABC.txt` file containing Wi-Fi profile details.

2. **For Linux:**
    - Make the script executable:
      ```bash
      chmod +x wifi_profile_extractor.sh
      ```
    - Run the script:
      ```bash
      ./wifi_profile_extractor.sh
      ```

## License

MIT License
