# TCP Chatroom Client-Server

This project implements a simple TCP-based chatroom using a client-server architecture. Multiple clients can connect to a central server and exchange messages in real time.

## Getting Started

### Prerequisites
Ensure you have the following installed on your system:
- GCC compiler
- `make` utility (for using the Makefile)
- `xterm` (if you want to use the shell script for automated execution)

## Running the Chatroom

### Using `run.sh` (Automated Execution)
If you have `xterm` installed, you can use the shell script to automatically launch the server and multiple clients in separate terminals.

#### Steps:
1. Grant execution permission to the script:
   ```sh
   chmod +x run.sh
   ```
2. Run the script to start the server and four client instances in different `xterm` windows:
   ```sh
   ./run.sh
   ```

### Using the Makefile (Manual Execution)
If you prefer manual control, you can use the Makefile to compile and run the chat application.

#### Steps:
1. Compile all necessary files:
   ```sh
   make all
   ```
2. Start the server:
   ```sh
   make server
   ```
3. Open new terminal windows and run the following command for each client:
   ```sh
   make client
   ```
   Repeat this step to add multiple users to the chatroom.

## Features
- Multiple clients can connect to the server simultaneously.
- Real-time message broadcasting to all connected users.
- Simple command-line interface for communication.

## Notes
- Ensure that the server is running before starting any clients.
- If you encounter port binding issues, make sure no other process is using the specified port.

## License
This project is licensed under the MIT License.



