//
//  ReverseList.h
//  ZKReverseList
//
//  Created by 张日奎 on 2020/5/27.
//  Copyright © 2020 bestdew. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 定义一个单向链表
struct Node{
    int data;
    struct Node *next;
};

@interface ReverseList : NSObject

// 构造一个链表
struct Node* constructList(void);

// 反转链表（头插法）
struct Node* reverseList(struct Node *head);

// 打印链表数据
void printList(struct Node *node);

@end

NS_ASSUME_NONNULL_END
