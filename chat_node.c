#include "chat_node.h"


/* global variables */


/* function implementation */
void add_chat_node(struct chat_node_list* _list, struct chat_node* _node)
{
	// check list has data
	{
		// initialize working node with head

		// loop until last node is found
		{
			// check working node is equivalent to incoming node
			{
				// break because client is already in the room
			}
			
			// advance working node
		}

		// point last node's next pointer to incoming node
	}
	// otherwise, assume list is empty
	{
		// point head to node
		
		// increment size
	}
}

struct chat_node* chat_node_init(uint8_t* _ip_addr, int _port)
{
	// allocate memory for a new node

	// set ip address to ip_addr
	
	// set port number to port
	
	// return pointer to new node
	return NULL;
}

struct chat_node_list* chat_node_list_init(void)
{
	// allocate memory for a new list

	// set size to zero
	
	// set head to NULL
	
	// return pointer to new list
	return NULL;
}

void remove_chat_node(struct chat_node_list* _list, size_t _ip_addr)
{
	// initialize working node with head node
	
	// loop until working node points to null
	{
		// check next node's ip address equal to expected ip address
		{
			// break
		}

		// advance working node
	}

	// check working node is not NULL
	{
		// point next node pointer to next node's next pointer
	}
}

void destroy_chat_node_list(struct chat_node_list* _list)
{
	// initialize working node with head node
	// initialize previous node with working node

	// loop until previous node is NULL
	{
		// advance working node

		// free previous node

		// point previuos node to working node
	}

	// free list
}

