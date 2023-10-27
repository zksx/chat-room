# variables
CFLAGS = -Wall -std=gnu99 -pedantic -c -g
LDFLAGS = -lpthread

# remove all
RM_ALL := rm -rf ./.DS_Store *.dSYM ./*.o ./server/*.o ./client/*.o ./auxiliary/*.o chat_server chat_client

all: server client

server: ./server/client_handler.o ./server/main.c ./chat_node.o ./misc.o ./message.o ./server/main.h
	$(CC) ./server/client_handler.o ./chat_node.o ./misc.o ./message.o ./server/main.c -o chat_server $(LDFLAGS)

client_handler.o: ./server/client_handler.c ./server/client_handler.h
	$(CC) $(CFLAGS) ./server/client_handler.c

client: ./client/receiver_handler.o ./client/sender_handler.o ./client/main.c ./misc.o ./chat_node.o ./message.o ./auxiliary/properties.o ./client/main.h
	$(CC) ./client/receiver_handler.o ./client/sender_handler.o message.o ./misc.o ./auxiliary/properties.o ./client/main.c -o chat_client $(LDFLAGS)

receiver_handler.o: ./client/receiver_handler.c ./client/receiver_handler.h
	$(CC) $(CFLAGS) ./client/receiver_handler.c

sender_handler.o: ./client/sender_handler.c ./client/sender_handler.h
	$(CC) $(CFLAGS) ./client/sender_handler.c

# shared targets
misc.o: ./misc.c ./misc.h
	$(CC) $(CFLAGS) ./misc.c

message.o: ./message.c ./message.h
	$(CC) $(CFLAGS) ./message.c

chat_node.o: ./chat_node.c ./chat_node.h
	$(CC) $(CFLAGS) ./chat_node.c

properties.o: ./auxiliary/properties.c ./auxiliary/properties.h
	$(CC) $(CFLAGS) ./auxiliary/properties.c

clean:
	$(RM_ALL)
