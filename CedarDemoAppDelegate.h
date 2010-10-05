//
//  CedarDemoAppDelegate.h
//  CedarDemo
//
//  Created by Robert Walker on 10/5/10.
//  Copyright 2010 Robert Walker. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CedarDemoAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
