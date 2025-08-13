#ifndef BSP_h
#define BSP_h

typedef struct
{
    int x, y;
} Vertex;

typedef struct
{
    Vertex start, destination;
} Segmen;


typedef struct BSPNode
{
    char name;
    Segmen splitter;
    struct BSPNode* front; 
    struct BSPNode* back;
} BSPNode;



#endif