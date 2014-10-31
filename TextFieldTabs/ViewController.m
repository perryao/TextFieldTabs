//
//  ViewController.m
//  TextFieldTabs
//
//  Created by Mike Perry on 10/31/14.
//  Copyright (c) 2014 UC App Lab. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController
{
	BOOL tabPressed;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (BOOL)canBecomeFirstResponder
{
	return YES;
}

- (NSArray *)keyCommands
{
	NSArray *commands = @[
						  [UIKeyCommand keyCommandWithInput:@"\t" modifierFlags:0 action:@selector(tabPressed:)]
						  ];
	return commands;
}

- (void)tabPressed:(id)sender
{
	NSLog(@"Tab was pressed!");
	if (self.textField.isFirstResponder) {
		self.textField.text = [self.textField.text stringByAppendingString:@"    "];
	}
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
	return YES;
}

@end
