//
//  PaymentGateway.m
//  Lab10
//
//  Created by 桑染 on 2020-04-07.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void)processPaymentAmount:(NSInteger) amount {
    [self.delegate processPaymentAmount:amount];
}

- (BOOL)canProcessPayment {
    return [self.delegate canProcessPayment];
}

@end
