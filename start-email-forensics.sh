#!/bin/bash

# Log file
log_file="email_forensics.log"

# Function to log user selections
log_selection() {
    echo "$(date): $1" >> "$log_file"
}

# Menu options
options=(
    "Trace email origin"
    "Identify email exchanges"
    "Recover deleted emails"
    "Exit"
)

# Menu loop
while true; do
    # Display menu
    echo "Email Forensics Menu:"
    echo "---------------------"
    select option in "${options[@]}"; do
        case $REPLY in
            1) 
                echo "Performing trace email origin..."
                # Add your trace email origin logic here
                log_selection "Trace email origin"
                break
                ;;
            2) 
                echo "Performing identify email exchanges..."
                # Add your identify email exchanges logic here
                log_selection "Identify email exchanges"
                break
                ;;
            3) 
                echo "Performing recover deleted emails..."
                # Add your recover deleted emails logic here
                log_selection "Recover deleted emails"
                break
                ;;
            4) 
                echo "Exiting..."
                log_selection "Exit"
                exit 0
                ;;
            *)
                echo "Invalid option. Please select a valid option."
                ;;
        esac
    done
done
