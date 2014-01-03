//
//  ViewController.m
//  IndicatorTest01
//
//  Created by SDT-1 on 2014. 1. 3..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *indi;
@property (strong, nonatomic) UIActivityIndicatorView *indi2;

@end

@implementation ViewController
- (IBAction)stopIndicator:(id)sender {
	[_indi stopAnimating];
	
	[_indi2 performSelector:@selector(stopAnimating) withObject:nil afterDelay:0.7];
}

- (IBAction)startIndicator:(id)sender {
	
	[_indi startAnimating];
	
	[_indi2 performSelector:@selector(startAnimating) withObject:nil afterDelay:0.3];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	
	
	// Do any additional setup after loading the view, typically from a nib.
	_indi2 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
	_indi2.hidesWhenStopped = YES;
	_indi2.center = CGPointMake(160, 250);
	
	[self.view addSubview:_indi2];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
