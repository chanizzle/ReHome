//
//  MapViewController.m
//  ReHome
//
//  Created by JasmineChan on 2015-10-03.
//  Copyright (c) 2015 chanizzle. All rights reserved.
//

#import "MapViewController.h"
#import "MapPin.h"

#define METERS_PER_MILE 1609.344
@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MKCoordinateRegion region = {{0.0, 0.0},{0.0, 0.0}};
    region.center.latitude = 40.740156;
    region.center.longitude = -73.993366;
    region.span.longitudeDelta = 0.01f;
    region.span.latitudeDelta = 0.01f;
    [mapView setRegion:region animated:YES];
    MapPin *mj = [[MapPin alloc] init];
    mj.title = @"Flatiron";
    mj.subtitle = @"New York";
    //ann.image = [UIImage imageNamed:@"mj"];
    mj.coordinate = region.center;
    [mapView addAnnotation:mj];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
   /* // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 40.7397240;
    zoomLocation.longitude= -73.9940800;
    
    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5*METERS_PER_MILE, 0.5*METERS_PER_MILE);
    
    // 3
    [mapView setRegion:viewRegion animated:YES];*/
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
