# make all - compiles the client and server
# make client - compiles the client
# make server - compiles the server
# make run - runs the server and 4 clients (in separate xterm windows)
# make clean - removes the executables


CC = gcc
CFLAGS = -Wall -g
CLIENT = client
SERVER = server
CLIENT_SRC = client.c
SERVER_SRC = server.c

all: $(CLIENT) $(SERVER) run

$(CLIENT): $(CLIENT_SRC)
	$(CC) $(CFLAGS) -o $(CLIENT) $(CLIENT_SRC)

$(SERVER): $(SERVER_SRC)
	$(CC) $(CFLAGS) -o $(SERVER) $(SERVER_SRC)

server: $(SERVER)
	./$(SERVER)

client: $(CLIENT)
	./$(CLIENT)

run: $(SERVER) $(CLIENT)
	./$(SERVER) &
	sleep 1
	xterm -T "CLIENT1" -fa "Monospace" -fs 12 -bg black -fg cyan -geometry 90x25+0+0 -b 2 -e ./$(CLIENT) &
	xterm -T "CLIENT2" -fa "Monospace" -fs 12 -bg black -fg cyan -geometry 90x25+1000+0 -b 2 -e ./$(CLIENT) &
	xterm -T "CLIENT3" -fa "Monospace" -fs 12 -bg black -fg cyan -geometry 90x25+0+600 -b 2 -e ./$(CLIENT) &
	xterm -T "CLIENT4" -fa "Monospace" -fs 12 -bg black -fg cyan -geometry 90x25+1000+600 -b 2 -e ./$(CLIENT) &

clean:
	rm -f $(CLIENT) $(SERVER)