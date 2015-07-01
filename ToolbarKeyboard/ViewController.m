//
//  ViewController.m
//  ToolbarKeyboard
//
//  Created by Shagun Madhikarmi on 01/07/2015.
//  Copyright (c) 2015 ustwo. All rights reserved.
//

#import "ViewController.h"
#import "UIToolbar+KeyboardAdditions.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    self.textField.inputAccessoryView = [UIToolbar previousNextDoneToolbarWithTarget:self
                                                                      previousAction:@selector(didPressKeyboardPreviousButton:)
                                                                        previousText:@"Previous"
                                                                          nextAction:@selector(didPressKeyboardNextButton:)
                                                                            nextText:@"Next"
                                                                          doneAction:@selector(didPressKeyboardDoneButton:)];
    
//    self.textField.inputAccessoryView = [UIToolbar doneToolbarWithTarget:self action:@selector(didPressKeyboardDoneButton:)];
    
}


- (void)didPressKeyboardDoneButton:(id)sender
{
    [self.view endEditing:YES];
}

- (void)didPressKeyboardPreviousButton:(id)sender
{
    // TODO:
}

- (void)didPressKeyboardNextButton:(id)sender
{

    // TODO:
}

@end
