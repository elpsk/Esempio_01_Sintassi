//
//  NSString+Html.m
//  Lezione_01_Sintassi
//
//  Created by Alberto Pasca on 24/10/11.
//  Copyright (c) 2011 Cutaway SRL. All rights reserved.
//

#import "NSString+Html.h"

@implementation NSString (Html)

- (BOOL) isUrl {
  return [self hasPrefix:@"http://"] ? YES : NO;
}

@end
