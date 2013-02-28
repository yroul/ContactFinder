//
//  MapView.h
//  ContactFinder
//
//  Created by USERCCI on 27/02/13.
//  Copyright (c) 2013 yroul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface MapView : UIViewController{
@public
    double contactLong;
    double contactLat;
    NSString *contactName;
}
@property (weak, nonatomic) IBOutlet MKMapView *map;

@end
