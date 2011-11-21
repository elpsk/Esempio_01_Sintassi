//
//  aClass.m
//  Lezione_01_Sintassi
//
//  Created by Alberto Pasca on 24/10/11.
//  Copyright (c) 2011 Cutaway SRL. All rights reserved.
//

#import "aClass.h"
#import "SecondClass.h"

@interface aClass (Private)

- (void) ControllaSwitch:(int)val;

@end


@implementation aClass

@synthesize Delegate;

- (void) ChiamaClasseDue {
  
  seconda = [[SecondClass alloc] init];
  
  [seconda CheckString:@"http://www.cutaway.it"];
  [seconda CheckString:@"cutaway"];
  
  seconda.CatString = @"http://www.google.it";
  [seconda CheckString];
  
  [seconda release];  
  
}

- (void) EseguiUnCalcolone {
  
  SEL startMethod = @selector(HoIniziato);
  SEL stopMethod  = @selector(HoFinito);

  if ( Delegate && [Delegate respondsToSelector:startMethod] ) [Delegate HoIniziato];
  
  for (int i=0; i<5; i++) {
    NSLog(@"...");
  }

  if ( Delegate && [Delegate respondsToSelector:stopMethod] ) [Delegate HoFinito];

  [self ControllaSwitch:5];
}

- (void) ControllaSwitch:(int)val {
  
  switch (val) {
    case 0:  NSLog(@"E' 0!");  break;
    case 5:  NSLog(@"E' 5!");  break;
    case 10: NSLog(@"E' 10!"); break;
      
    default: break;
  }
  
}

@end
