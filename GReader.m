//
//  GReader.m
//  CedarDemo
//
//  Created by Robert Walker on 10/6/10.
//  Copyright 2010 Robert Walker. All rights reserved.
//

#import "GReader.h"


@implementation GReader

- (NSString *)authenticateWithUsername:(NSString *)username password:(NSString *)password
{
    NSString *response;
    response = [self post:[NSString stringWithFormat:@"Email=%@&Password=@", username, password]];
    return response;
}

- (NSString *)post:(NSString *)request
{
    return @"I'm the real deal response from web service!";
}

@end
