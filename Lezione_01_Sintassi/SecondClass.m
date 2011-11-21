//
//  SecondClass.m
//  Lezione_01_Sintassi
//
//  Created by Alberto Pasca on 24/10/11.
//  Copyright (c) 2011 Cutaway SRL. All rights reserved.
//

#import "SecondClass.h"

@implementation SecondClass

@synthesize CatString = m_CatString;


- (void) CheckString {

  if ( [m_CatString isUrl] ) {
    NSLog(@"%@: E' UN URL!!!", m_CatString);
  } else {
    NSLog(@"%@: NON E' UN URL!!!", m_CatString);
  }
  
}

- (void) CheckString:(NSString *)thisString {

  if ( [thisString isUrl] ) {
    NSLog(@"%@: E' UN URL!!!", thisString);
  } else {
    NSLog(@"%@: NON E' UN URL!!!", thisString);
  }

}

@end
