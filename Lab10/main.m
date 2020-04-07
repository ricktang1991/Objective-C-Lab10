//
//  main.m
//  Lab10
//
//  Created by 桑染 on 2020-04-07.
//  Copyright © 2020 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *inputHandler = [InputHandler new];
        NSInteger cost = arc4random_uniform(901) + 100;
        NSString *strInput = [inputHandler getUserInputWithMaxLength:255 withPrompt:[NSString stringWithFormat:@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: ApplePay", cost]];
        PaymentGateway *paymentGateway = [PaymentGateway new];
        NSInteger integerInput = [strInput integerValue];
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        ApplePaymentService *applePay = [ApplePaymentService new];
        switch (integerInput) {
            case 1:
                paymentGateway.delegate = paypal;
                [paymentGateway processPaymentAmount:cost];
                break;
            case 2:
                paymentGateway.delegate = stripe;
                [paymentGateway processPaymentAmount:cost];
                break;
            case 3:
                paymentGateway.delegate = amazon;
                [paymentGateway processPaymentAmount:cost];
                break;
            case 4:
                paymentGateway.delegate = applePay;
                [paymentGateway processPaymentAmount:cost];
            default:
                break;
        }
    }
    return 0;
}
