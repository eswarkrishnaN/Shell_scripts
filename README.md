# using fiel comparsions

- -r readble
- -w wirtable
- -x exceutable
- -d if file exists directory
- -e check if file exists
- -f check if file exists in file
- -s not empty




# Shell Script Example

This shell script is designed to perform the following tasks:

- Check free disk space on the system
- Display the results in human-readable format
- Send an email notification if the free space falls below a certain threshold

## Requirements

This script requires the following to be installed on the system:

- bash
- df
- awk
- mailx

## Usage

To run the script, navigate to the directory containing the script and execute the following command:

```bash
./check_free_space.sh
```

## Configuration

The following configuration variables are available at the top of the script:

- `THRESHOLD`: The free space threshold (in GB) below which an email notification will be sent.
- `EMAIL`: The email address to send notifications to.
- `DISK`: The disk to check free space on (default is "/").

These variables can be modified to suit your needs.

## Notes

- This script is designed to run on Linux systems.
- This script must be run with root privileges in order to check the free space on all disks.
- The email notification feature requires that the `mailx` command be properly configured on the system.
- This script is provided as-is and without warranty. Use at your own risk.
