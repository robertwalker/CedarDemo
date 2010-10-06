//
//  GReader.m
//  CedarDemo
//
//  Created by Robert Walker on 10/6/10.
//  Copyright 2010 Robert Walker. All rights reserved.
//

#import "GReader.h"


@implementation GReader

- (void)authenticateWithUsername:(NSString *)username password:(NSString *)password
{
    [self post:[NSString stringWithFormat:@"Email=%@&Password=@", username, password]];
}

- (NSString *)post:(NSString *)request
{
    return @"I'm the real deal response!";
}

@end
