//
//  ReverseList.m
//  ZKReverseList
//
//  Created by 张日奎 on 2020/5/27.
//  Copyright © 2020 bestdew. All rights reserved.
//

#import "ReverseList.h"

@implementation ReverseList

struct Node* constructList(void) {
    // 定义头部节点
    struct Node *head = NULL;
    // 记录当前结点
    struct Node *cur = NULL;
    
    for (int i = 1; i < 5; i++) {
        struct Node *node = malloc(sizeof(struct Node));
        node->data = i;
        node->next = NULL;
        
        if (head == NULL) {
            // 头结点为空，当前节点为头结点
            head = node;
        } else {
            // 当前节点的 next 为新节点
            cur->next = node;
        }
        // 设置当前节点
        cur = node;
    }
    return head;
}

struct Node* reverseList(struct Node *head) {
    // 定义一个遍历指针，并初始化为头结点
    struct Node *p = head;
    // 反转后的头结点
    struct Node *newH = NULL;
    // 遍历链表
    while (p != NULL) {
        // 记录下一个节点
        struct Node *temp = p->next;
        // 当前节点的 next 指向新链表头部
        p->next = newH;
        // 更改新链表头部为当前节点
        newH = p;
        // 移动 P 指针
        p = temp;
    }
    return newH;
}

void printList(struct Node *node) {
    struct Node *temp = node;
    while (temp != NULL) {
        printf("node is %d \n", temp->data);
        temp = temp->next;
    }
}

@end
