//
//  ViewController.m
//  BubbleSorted
//
//  Created by fwj on 2018/9/27.
//  Copyright © 2018年 sjdd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *a = @[@2,@9,@3,@8,@4,@7,@5,@6];
    
    NSArray *b = [self bubbleSorted:a];
    
    NSLog(@"sorted Array=%@",b);
}

/**bubble Sorted*/
- (NSArray *)bubbleSorted:(NSArray *)originArray{
    NSInteger count = originArray.count;
    NSMutableArray *sortedArray = [NSMutableArray arrayWithArray:originArray];
    
    for (int i = 0; i < count-1; i++) {
        for (int j = 0; j<count-1-i; j++) {
            if([sortedArray[j+1] integerValue]<[sortedArray[j] integerValue]){
                [sortedArray exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }

    }
    return [sortedArray copy];
}

@end
