//
//  ViewController.m
//  HelloWorld
//
//  Created by Kanybek Zhagusaev on 1/7/16.
//  Copyright © 2016 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property NSString *favoriteBand;
@property int numberOfMembers;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.favoriteBand = @"The Beatles";
    self.label.text = self.favoriteBand;
    self.numberOfMembers = 4;
    self.label.text = [NSString stringWithFormat:@"%@ had %i members", self.favoriteBand, self.numberOfMembers];
    self.label.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
