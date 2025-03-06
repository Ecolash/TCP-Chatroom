gcc -o client client.c
gcc -o server server.c
./server &
sleep 1
xterm -T "CLIENT1" -fa "Monospace" -fs 12 -bg black -fg cyan -geometry 90x25+0+0 -b 2 -e        ./client &
xterm -T "CLIENT2" -fa "Monospace" -fs 12 -bg black -fg cyan -geometry 90x25+1000+0 -b 2 -e     ./client &
xterm -T "CLIENT3" -fa "Monospace" -fs 12 -bg black -fg cyan -geometry 90x25+0+600 -b 2 -e      ./client &
xterm -T "CLIENT4" -fa "Monospace" -fs 12 -bg black -fg cyan -geometry 90x25+1000+600 -b 2 -e   ./client 