//
//  ViewController.m
//  ReHome
//
//  Created by JasmineChan on 2015-10-03.
//  Copyright (c) 2015 chanizzle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UIButton *loginButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginButtonClicked:(id)sender {
    NSInteger success = 0;
    @try {
        if ([[self.userName text] isEqualToString:@""] || [[self.password text] isEqualToString:@""]) {
            [self alertStatus:@"Please enter Email and Password" :@"Sign in Failed!" :0];
        }
        else if ([[self.userName text] isEqualToString:@"rehome@rehome.com"] || [[self.password text] isEqualToString:@"rehome"]) {
            success = 1;
        }
        else {
            [self alertStatus:@"Please enter correct Email and Password" :@"Sign in Failed!" :0];
        }
    }
    @catch (NSException * e) {
        NSLog(@"Exception: %@", e);
        [self alertStatus:@"Sign in Failed." :@"Error!" :0];
    }
    if (success) {
        [self performSegueWithIdentifier:@"login_success" sender:self];
    }
}

- (void) alertStatus:(NSString *)msg :(NSString *)title :(int) tag
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
                                                        message:msg
                                                       delegate:self
                                              cancelButtonTitle:@"Ok"
                                              otherButtonTitles:nil, nil];
    alertView.tag = tag;
    [alertView show];
}
@end
