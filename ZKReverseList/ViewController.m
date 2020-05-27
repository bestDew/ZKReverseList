//
//  ViewController.m
//  ZKReverseList
//
//  Created by 张日奎 on 2020/5/27.
//  Copyright © 2020 bestdew. All rights reserved.
//

#import "ViewController.h"
#import "ReverseList.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    struct Node *head = constructList();
    printList(head);
    struct Node *node = reverseList(head);
    printList(node);
}


@end
