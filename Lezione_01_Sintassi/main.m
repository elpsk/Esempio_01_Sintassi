//
//  main.m
//  Lezione_01_Sintassi
//
//  Created by Alberto Pasca on 24/10/11.
//  Copyright (c) 2011 Cutaway SRL. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char *argv[])
{

// NON Automatic Reference Counting (ARC)
  
//  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
//  return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
//  [pool release];

//  Automatic Reference Counting (ARC),
  @autoreleasepool {
      return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
  }
  
}
