//
//  ViewController.m
//  SelectionSort
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
    
    NSArray *b = [self selectionSorted:a];
    
    NSLog(@"sortedArray=%@",b);
    
}

/**选择排序*/
- (NSArray *)selectionSorted:(NSArray<NSNumber *> *)originArray{
    
    NSInteger count = originArray.count;
    
    NSMutableArray *sortedArray = [NSMutableArray arrayWithArray:originArray];
        for (int i = 0; i<count-1; i++) {
            int k = i;
            for(int j = k+1;j<count;j++){
                if ([sortedArray[j] integerValue]<[sortedArray[k] integerValue]) {
                    k = j;
                }
            }
            if(i!=k){
                [sortedArray exchangeObjectAtIndex:i withObjectAtIndex:k];
            }
        }
    return [sortedArray copy];
}

- (void)exchangePosition:(id)one Two:(id)two{
    id temp;
    temp = one;
    one = two;
    two = temp;
}


@end
