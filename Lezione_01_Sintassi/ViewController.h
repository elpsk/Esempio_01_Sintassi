//
//  ViewController.h
//  Lezione_01_Sintassi
//
//  Created by Alberto Pasca on 24/10/11.
//  Copyright (c) 2011 Cutaway SRL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "aClass.h"

#define Moltiplica(x,y) ( x * y )

typedef enum {    
  kDataTypeFave = 28,     
  kDataTypeRecent
} DataType;

typedef struct {  
  NSString *Direzione;  
  float     Velocita; 
} Vento;

@interface ViewController : UIViewController <aClassDelegate> {
  
  id delegate;

  int     NumeroIntero;
  double  NumeroDouble;
  float   NumeroFloat;
  BOOL    ValoreBooleano;
  
  NSString *Stringa;
  NSMutableArray *Array;
 
  aClass *miaClasse;
  
  IBOutlet UIButton *Button1;
  IBOutlet UIButton *Button2;
  
}

@property (nonatomic, retain) UIButton *Button1;
@property (nonatomic, retain) UIButton *Button2;

@property (nonatomic, retain) NSString *Stringa;
@property (nonatomic, retain) NSMutableArray *Array;
@property (nonatomic, assign) aClass *miaClasse;

- (void) CiclaConQuesto:(int)valore;
- (int) DammiUnNumero;
- (void) CiclaArray:(id)arr;
- (void) sendMessage;

- (IBAction)ButtonTouched:(id)sender;

@end
