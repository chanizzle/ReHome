//
//  ViewController.h
//  ReHome
//
//  Created by JasmineChan on 2015-10-03.
//  Copyright (c) 2015 chanizzle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *password;

- (IBAction)loginButtonClicked:(id)sender;

@end

