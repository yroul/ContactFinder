//
//  Contact.m
//  ImagePicker
//
//  Created by USERCCI on 26/02/13.
//  Copyright (c) 2013 yroul. All rights reserved.
//

#import "Contact.h"

@implementation Contact
@synthesize name,phone,mail,longi,lat;
-(id) init:(NSString*)_name WithPhone:(int)_phone Mail:(NSString*)_mail AndLongi:(double)longi AndLat:(double)lat;{
    self = [super init];
    [self setName:_name];
    [self setPhone:_phone];
    [self setMail:_mail];
    [self setLongi:longi];
    [self setLat:lat];
    return self;
    
}


@end
