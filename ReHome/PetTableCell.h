//
//  PetTableCell.h
//  ReHome
//
//  Created by JasmineChan on 2015-10-04.
//  Copyright (c) 2015 chanizzle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PetTableCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *breed;
@property (weak, nonatomic) IBOutlet UILabel *gender;
@property (weak, nonatomic) IBOutlet UILabel *location;

@end
