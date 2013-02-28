//
//  ContactView.m
//  ContactFinder
//
//  Created by USERCCI on 27/02/13.
//  Copyright (c) 2013 yroul. All rights reserved.
//

#import "ContactView.h"
#import "Contact.h"
#import <MapKit/MapKit.h>
#import "MapView.h"
@implementation ContactView
@synthesize contactImage,contactMail,contactName,contactPhone,loc_lat,loc_long;
-(void)viewDidLoad{
    
    contactImage.image = [currentContact image];
    contactName.text = [currentContact name];
    contactPhone.text = [NSString stringWithFormat:@"%d",[currentContact phone]];
        
    contactMail.text = [currentContact mail];
    
    
    loc_long.text = [NSString stringWithFormat:@"%f",[currentContact longi]];
    loc_lat.text = [NSString stringWithFormat:@"%f",[currentContact lat]];
    NSLog(@"location(%f,%f)",[currentContact longi],[currentContact lat]);
    
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"segueToMap"]){
        MapView *destination = (MapView *) segue.destinationViewController;
        destination->contactLat = [currentContact lat];
        destination->contactLong = [currentContact longi];
        destination->contactName = [currentContact name];
        
        
    }
}
@end
