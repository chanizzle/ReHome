//
//  PetObject.h
//  ReHome
//
//  Created by JasmineChan on 2015-10-04.
//  Copyright (c) 2015 chanizzle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PetObject : NSObject

@property (nonatomic)NSString *petBreed;
@property (nonatomic)NSString *petGender;
@property (nonatomic)NSString *location;
@property (nonatomic)NSString *petName;
@property (nonatomic)float latitude;
@property (nonatomic)float longitude;

@end
