//
//  MapPin.h
//  ReHome
//
//  Created by JasmineChan on 2015-10-04.
//  Copyright (c) 2015 chanizzle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MapPin : NSObject<MKAnnotation> {
    NSString *title;
    NSString *subtitle;
    CLLocationCoordinate2D coordinate;
}

@property(nonatomic, copy)NSString *title;
@property(nonatomic, copy)NSString *subtitle;
@property(nonatomic, copy)UIImage *profileImg;
@property(nonatomic, assign)CLLocationCoordinate2D coordinate;
@end
