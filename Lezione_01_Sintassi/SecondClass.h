//
//  SecondClass.h
//  Lezione_01_Sintassi
//
//  Created by Alberto Pasca on 24/10/11.
//  Copyright (c) 2011 Cutaway SRL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Html.h"

@interface SecondClass : NSObject {
  
  NSString *m_CatString;
  
}

@property (nonatomic, retain) NSString *CatString;

- (void) CheckString;
- (void) CheckString:(NSString *)thisString;

@end
