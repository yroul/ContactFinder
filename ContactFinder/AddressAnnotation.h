//
//  AddressAnnotation.h
//  ContactFinder
//
//  Created by USERCCI on 27/02/13.
//  Copyright (c) 2013 yroul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>


@interface AddressAnnotation : NSObject<MKAnnotation> {
	CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
}
-(id)initWithCoordinate:(CLLocationCoordinate2D) c AndTitle:(NSString*)_title AndSubtitle:(NSString*)_subtitle;
@end