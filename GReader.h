//
//  GReader.h
//  CedarDemo
//
//  Created by Robert Walker on 10/6/10.
//  Copyright 2010 Robert Walker. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface GReader : NSObject {

}

- (NSString *)authenticateWithUsername:(NSString *)username password:(NSString *)password;
- (NSString *)post:(NSString *)request;

@end
