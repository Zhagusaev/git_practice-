//
//  ViewController.m
//  MyApp
//
//  Created by Kanybek Zhagusaev on 1/7/16.
//  Copyright © 2016 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.button.backgroundColor = [UIColor yellowColor];
}

- (IBAction)onButtonTapped:(id)sender {
    self.view.backgroundColor = [UIColor greenColor];
}

@end
