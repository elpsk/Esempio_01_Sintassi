//
//  ViewController.m
//  Lezione_01_Sintassi
//
//  Created by Alberto Pasca on 24/10/11.
//  Copyright (c) 2011 Cutaway SRL. All rights reserved.
//

#import "ViewController.h"
#import <stdio.h>

@interface ViewController (Private)
- (void) SetTypedef;
@end

@implementation ViewController

@synthesize Stringa, Array;
@synthesize miaClasse;
@synthesize Button1, Button2;

- (void) didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

#pragma mark -
#pragma mark - View lifecycle
#pragma mark -

- (void) viewDidLoad {
  [super viewDidLoad];
  
  delegate = self;
//  [self sendMessage];
   
  //
  // init variabili
  //
  NumeroIntero    = kDataTypeRecent;
  NumeroDouble    = 0.28;
  NumeroFloat     = 28.0;
  ValoreBooleano  = NO;
  
  //
  // debug log & format type
  //  
  NSLog(@"INTERO: %d - FLOAT: %f - DOUBLE: %.2f", NumeroIntero, NumeroFloat,  NumeroDouble);

  //
  // if condition
  //
  if ( ! ValoreBooleano ) {
    [self CiclaConQuesto:NumeroIntero];    
  }
  
  //
  // metodo semplice e assegnamento variabile
  //
  int numero = [self DammiUnNumero];
  NSLog(@"NUMERO: %d", numero);

  //
  // init array
  //
  Array = [NSMutableArray arrayWithObjects:@"a", @"b", @"c", @"d", nil];
  //
  // passaggio oggetto NSMutableArray come ID
  //
  [self CiclaArray:Array];
  
  //
  // creazione classe
  //
  miaClasse = [[aClass alloc] init];
  
  miaClasse.Delegate = self;
  [miaClasse EseguiUnCalcolone];
  [miaClasse ChiamaClasseDue];
  
  miaClasse->ValorePubblico = 1;
  NSLog(@"%d", miaClasse->ValorePubblico);
  
  //
  // rilascio classe
  //
  [miaClasse release];
  
  //
  // utilizzo DEFINE come funzione
  //
  int res = Moltiplica(3, 2);
  NSLog(@"RISULTATO: %d", res);
  
}
- (void) viewDidUnload {
  [super viewDidUnload];
}

#pragma mark - Custom_METHODS

- (IBAction)ButtonTouched:(id)sender {
  NSLog(@"%s", __FUNCTION__);
}

- (void) CiclaConQuesto:(int)valore {
  for (int i=0; i<valore; i++) 
  {
    NSLog(@"I: %d", i);
  }
}

- (int) DammiUnNumero {
  // rand() è una funzione C
  return rand()*28;
}

- (void) CiclaArray:(id)arr {
  
  //
  // METODO 1
  //
  NSMutableArray *castArray_1 = (NSMutableArray*)arr;
  int count = [castArray_1 count];
  for (int i=0; i<count; i++) 
  {
    NSString *line = [castArray_1 objectAtIndex:i];
    NSLog(@"A :: LINE: %@", line);
  }

  //
  // METODO 2
  //
  NSMutableArray *castArray_2 = (NSMutableArray*)arr;
  for (NSString *line in castArray_2) 
  {
    NSLog(@"B :: LINE: %@", line);
  }

  //
  // METODO 3
  //
  if ( [arr isKindOfClass:[NSMutableArray class]] ) 
  {
    for (NSString *line in arr) 
    {
      NSLog(@"C :: LINE: %@", line);
    }
  }

  //
  // METODO 4
  //
  for (NSString *line in arr) 
  {
    NSLog(@"D :: LINE: %@", line);
  }

  //
  // METODO 5
  //
  NSMutableArray *castArray_3 = (NSMutableArray*)arr;
  NSEnumerator * myEnumerator = castArray_3.objectEnumerator;
  id object;
  while(object = [myEnumerator nextObject]) {
    NSLog(@"E :: LINE: %@", object);
  }
  
}

- (void) SetTypedef {
  Vento *v;
  v->Direzione = @"NW";
  v->Velocita  = 2.13;
  
  NSLog(@"DIREZIONE: %@",  v->Direzione);
  NSLog(@"VELOCITA: %.2f", v->Velocita);
  
}

#pragma mark - aClass_DELEGATE

- (void) HoIniziato {
  NSLog(@"%s", __FUNCTION__);
}
- (void) HoFinito {
  NSLog(@"%s", __FUNCTION__);  
}

- (void) sendMessage {
  if ( [delegate isKindOfClass:[ViewController class]] )
    if ( [delegate respondsToSelector:@selector(testDelegate)] )
      [self testDelegate];
}
- (void) testDelegate {
  NSLog(@"%s", __FUNCTION__);
}

#pragma mark - View delgate

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
}
- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
}
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}

#pragma mark - Device

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void) dealloc {
  if (Stringa) [Stringa release];

  [super dealloc];
}

@end



