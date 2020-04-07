//
//  ApplePaymentService.m
//  Lab10
//
//  Created by 桑染 on 2020-04-07.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (BOOL)canProcessPayment {
    NSInteger num = arc4random_uniform(2);
    if (num == 1) {
        return YES;
    } else {
        return NO;
    }
}

- (void)processPaymentAmount:(NSInteger)amount {
    if ([self canProcessPayment] == YES) {
        NSLog(@"ApplePay processed amount $%ld", amount);
    } else {
        NSLog(@"ApplePay process is denied");
    }
}

@end
