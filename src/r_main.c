#include <stdio.h>
#include <stdlib.h>
#include "r_bsp.h"

/**
 * @brief Saving an object treat it as a bit
 * 
 * This function take a pointer to BSP Node object
 * 
 * @param node The pointer/address to the BSPNde object.
 * @return void.
 */
void OpenFile(BSPNode* node){
    // Saving an object
    FILE *my_file = fopen("C:\\Homework\\Belajar\\LearnC\\project\\doom_engine\\resource\\item", "wb");
    if (my_file==NULL){
        printf("Error to open file\n");
        return;
    }
    int num = 123456;
    fwrite(&num, sizeof(int), 1, my_file);
    fclose(my_file);
    printf("Success to save\n");
    // fwrite(&p1, sizeof(Product), 1, file_ptr);
}

enum Objects{
    A,
    B,
    C,
    D
};

BSPNode* CreateBSPTree(Segmen* linedefs, size_t count){
    BSPNode* root = (BSPNode*) calloc(1, sizeof(BSPNode));
    root->splitter = linedefs[0];
    BSPNode* frontNode = (BSPNode*) calloc(1, sizeof(BSPNode));
    frontNode->splitter=linedefs[1];
    frontNode->front = (BSPNode*) calloc(1, sizeof(BSPNode));
    frontNode->front->name = 'C';
    frontNode->back = (BSPNode*) calloc(1, sizeof(BSPNode));
    frontNode->back->name = 'D';
    BSPNode* backNode = (BSPNode*) calloc(1, sizeof(BSPNode));
    backNode->splitter=linedefs[2];
    backNode->front = (BSPNode*) calloc(1, sizeof(BSPNode));
    backNode->front->name = 'A';
    backNode->back = (BSPNode*) calloc(1, sizeof(BSPNode));
    backNode->back->name = 'B';
    root->front = frontNode;
    root->back = backNode;
    return root;
}

void findOrder(BSPNode* node, Vertex player_pos, char* orders, int* count){
    if(node==NULL){
        return;
    }
    // s -> linedef; p -> position;
    // (s.destination.x - s.start.x) * (p.y - s.start.y) - (s.destination.y - s.start.y) * (p.x - s.start.x);
    int cross_product = (node->splitter.destination.x - node->splitter.start.x) * (player_pos.y - node->splitter.start.y) -
                        (node->splitter.destination.y - node->splitter.start.y) * (player_pos.x - node->splitter.start.x);
    // Jika cross product < 0 kanan 
    // jika cross product > 0 kiri
    // jika cross produt = 0 berarti sejajar
    BSPNode* first;
    BSPNode* second;
    if (cross_product<0){
        first = node->front;
        second = node->back;
    }else{
        first = node->back;
        second = node->front;
    }
    printf("Node Has Been Calculated");
    if (first==NULL&&second==NULL){
        if (*count!=4){
            orders[(*count)++] = node->name;
        }
    }else{
        if (first!=NULL){
            printf("First not null\n");
            findOrder(first, player_pos, orders, count);
        }//else{ // if (node->splitter!=NULL)
        //     if (*count!=4){
        //         orders[(*count)++] = node->name;
        //     }
        // }
        if (second!=NULL){
            printf("Second not null\n");
            findOrder(second, player_pos, orders, count);
        }
    }//else{ // if (node->name!='\0')
    //     if (*count!=4){
    //         orders[(*count)++] = node->name;
    //     }
    // }
    // if (cross_product>0){
    //     if (node->front != NULL){
    //         findOrder(node->front, player_pos, orders, count);
    //     }else if(node->name!='\0'){
    //         orders[*count] = node->name;
    //         (*count)++;
    //     }
    //     if (node->back!=NULL){
    //         findOrder(node->back, player_pos, orders, count);
    //     }else if(node->name!='\0'){
    //         orders[*count] = node->name;
    //         (*count)++;
    //     }
    // }else{
    //     if (node->back != NULL){
    //         findOrder(node->back, player_pos, orders, count);
    //     }else if(node->name!='\0'){
    //         orders[*count] = node->name;
    //         (*count)++;
    //     }
    //     if (node->front!=NULL){
    //         findOrder(node->front, player_pos, orders, count);
    //     }else if(node->name!='\0'){
    //         orders[*count] = node->name;
    //         (*count)++;
    //     }
    // }
    // if (*count>4){
    //     return orders;
    // }
}

int main(){
    Segmen segmens[] = {//list
        {.start={.x=0,.y=10}, .destination={.x=30,.y=10}},//struct Segmen
        {.start={.x=15,.y=10}, .destination={.x=15,.y=0}},
        {.start={.x=15,.y=10}, .destination={.x=15,.y=20}}
    };
    Vertex pos = {.x=25, .y=15}; // Player Position
    BSPNode* root = CreateBSPTree(segmens, 3);
    char order[4] = {'\0', '\0', '\0', '\0'};
    int count = 0;
    OpenFile(root);
    findOrder(root, pos, &(order[0]), &count);
    for (int i=0; i<4;i++){
        printf("\n%c",order[i]);
    }
    return 0;
}
