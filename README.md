# Student Submission Reminder Application

### Overview

The Student Submission Reminder Application is a shell-based system that helps track and notify students about their assignment submission status. The application reads from a configured list of submissions and generates reminders for students who haven't submitted their assignments.


### Features

- Automated directory structure setup
- Configurable assignment tracking
- Student submission status monitoring
- Customizable reminder messages
- Easy to extend and modify

### Installation

- Clone the repository

``` git clone < repository-url > ```
```cd < repository-name > ```

- Make the setup script executable

``` chmod +x create_environment.sh ```

- Run the setup script

./create_environment.sh

- Follow the prompts to enter your name when asked

### Directory Structure
After running the setup script, the following directory structure will be created:
submission_reminder_[your-name]/
├── config/
│   └── config.env         # Configuration settings
├── assets/
│   └── submissions.txt    # Student submission records
├── modules/
│   └── functions.sh       # Helper functions
├── app/
│   └── reminder.sh        # Main reminder script
└── startup.sh            # Application startup script
