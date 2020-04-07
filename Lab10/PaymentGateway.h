//
//  PaymentGateway.h
//  Lab10
//
//  Created by 桑染 on 2020-04-07.
//  Copyright © 2020 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

- (void)processPaymentAmount:(NSInteger) amount;
- (BOOL)canProcessPayment;

@end


@interface PaymentGateway : NSObject

@property(nonatomic, weak) id<PaymentDelegate> delegate;

- (void)processPaymentAmount:(NSInteger) amount;
- (BOOL)canProcessPayment;

@end

