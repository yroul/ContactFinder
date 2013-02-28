//
//  AddressAnnotation.m
//  ContactFinder
//
//  Created by USERCCI on 27/02/13.
//  Copyright (c) 2013 yroul. All rights reserved.
//

#import "AddressAnnotation.h"

@implementation AddressAnnotation
@synthesize coordinate,title,subtitle;

- (NSString *)subtitle{
	return subtitle;
}

- (NSString *)title{
	return title;
}

-(id)initWithCoordinate:(CLLocationCoordinate2D) c AndTitle:(NSString*)_title AndSubtitle:(NSString*)_subtitle{
	coordinate=c;
    subtitle=_subtitle;
    title = _title;
	return self;
}

@end