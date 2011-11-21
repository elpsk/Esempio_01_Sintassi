//
//  aClass.h
//  Lezione_01_Sintassi
//
//  Created by Alberto Pasca on 24/10/11.
//  Copyright (c) 2011 Cutaway SRL. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol aClassDelegate
@optional
- (void) HoIniziato;
- (void) HoFinito;
@end


@class SecondClass;

@interface aClass : NSObject {
  
  id Delegate;
  SecondClass *seconda;

  @public
  int ValorePubblico;
}

@property (nonatomic, assign) id Delegate;

- (void) EseguiUnCalcolone;
- (void) ChiamaClasseDue;

@end
