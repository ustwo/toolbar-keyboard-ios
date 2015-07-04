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

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Create the toolbar
    
    UIToolbar *toolbar = [UIToolbar doneToolbarWithTarget:self action:@selector(didPressKeyboardDoneButton:)];
    
//    UIToolbar *toolbar = [UIToolbar previousNextDoneToolbarWithTarget:self
//                                                       previousAction:@selector(didPressKeyboardPreviousButton:)
//                                                         previousText:NSLocalizedString(@"Previous", nil)
//                                                           nextAction:@selector(didPressKeyboardNextButton:)
//                                                             nextText:NSLocalizedString(@"Next", nil)
//                                                           doneAction:@selector(didPressKeyboardDoneButton:)];
    
    // Attach it to the top of a text field's keyboard
    
    self.textField.inputAccessoryView = toolbar;
    
}


#pragma mark - UI Actions

- (void)didPressKeyboardDoneButton:(id)sender
{
    // Hide keyboard
    
    [self.view endEditing:YES];
}

- (void)didPressKeyboardPreviousButton:(id)sender
{
    // ...
}

- (void)didPressKeyboardNextButton:(id)sender
{

    // ...
}

@end
