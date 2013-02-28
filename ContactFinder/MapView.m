//
//  MapView.m
//  ContactFinder
//
//  Created by USERCCI on 27/02/13.
//  Copyright (c) 2013 yroul. All rights reserved.
//

#import "MapView.h"
#import "AddressAnnotation.h"
#define METERS_PER_MILE 10000
@implementation MapView
@synthesize map;

- (void)viewDidAppear:(BOOL)animated {
    // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = contactLat;
    zoomLocation.longitude= contactLong;
    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 100*METERS_PER_MILE, 100*METERS_PER_MILE);
    // 3
    MKCoordinateRegion adjustedRegion = [map regionThatFits:viewRegion];
    // 4
    [map setRegion:adjustedRegion animated:YES];
    AddressAnnotation *addAnnotation = [[AddressAnnotation alloc] initWithCoordinate:zoomLocation AndTitle:contactName AndSubtitle:@"I'm here !"];
    [map addAnnotation:addAnnotation];
}
@end
