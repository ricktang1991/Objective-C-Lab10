//
//  AmazonPaymentService.m
//  Lab10
//
//  Created by 桑染 on 2020-04-07.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(NSInteger)amount {
    if ([self canProcessPayment] == YES) {
        NSLog(@"Amazon processed amount $%ld", amount);
    } else {
        NSLog(@"Amazon process is denied");
    }
}

- (BOOL)canProcessPayment { 
    NSInteger num = arc4random_uniform(2);
    if (num == 1) {
        return YES;
    } else {
        return NO;
    }
}


@end
