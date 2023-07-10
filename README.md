# AWS Resource Tracker

This repository contains a script, `aws_resource_status.sh`, which tracks the usage of various AWS resources and stores the output in the file `aws_resource_tracker`.

## Script Description

The `aws_resource_status.sh` script is designed to track the usage of the following AWS resources:

- S3 Buckets
- EC2 Instances
- Lambda Functions
- IAM Users

The script utilizes the AWS CLI to retrieve information about these resources. It saves the output for each resource into the `aws_resource_tracker` file.

## Usage

To track your AWS resource usage, follow these steps:

1. Ensure that you have the AWS CLI installed and configured with appropriate credentials.

2. Execute the `aws_resource_status.sh` script

This will generate a report of the current status of the specified AWS resources and save it to the `aws_resource_tracker` file.

3. Open the `aws_resource_tracker` file to view the tracked resource information.

## Cron Job

To automate the tracking of AWS resource usage, a cron job has been set up to run the `aws_resource_status.sh` script.

The cron job is scheduled to run every Monday at 6 PM. It executes the `aws_resource_status.sh` script, which updates the `aws_resource_tracker` file with the latest resource status.

- Open the crontab file using `crontab -e`.
- Add the following line to run the script every Monday at 6 PM: `0 18 * * 1 /path/to/aws_resource_status.sh`

(Replace `/path/to/aws_resource_status.sh` with the actual file path)

The line  `0 18 * * 1 /path/to/aws_resource_tracker.sh` is an example of a cron job entry in the crontab file. Let's break down what each field represents:

0: The minute field. In this case, it is set to 0, indicating the cron job will run at the start of the hour.<br>
18: The hour field. It is set to 18, representing 6 PM in a 24-hour format.<br>
*: The day-of-the-month field. It is set to *, meaning any day of the month.<br>
*: The month field. It is also set to *, indicating any month.<br>
1: The day-of-the-week field. Here, it is set to 1, representing Monday.

Now, the `aws_resource_status.sh` script will be executed automatically at the specified time, updating the `aws_resource_tracker` file with the latest resource status.

## File Structure

- `aws_resource_status.sh`: The main script that tracks the AWS resource usage and updates the `aws_resource_tracker` file.
- `aws_resource_tracker`: The file where the resource status information is stored.

Feel free to modify the script or the cron job schedule to suit your specific requirements.

For any questions or assistance, please contact the author, Dhanush K S
