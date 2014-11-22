//
//  ViewController.m
//  TestAutoresizing123
//
//  Created by Alexander on 20.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "ViewController.h"

#define NUMBERS_OF_CATS 24

static NSString * const kSomeConst = @"fsdfsdfs";

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UIView *someView;
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UIView *onlineView;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *widthOnlineConstaint;
@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.nameLabel.text = @"Adsf sf dsf AD";
    [self.nameLabel sizeToFit];
    
    self.onlineView.layer.cornerRadius = 5;
    
    CGRect frame = self.onlineView.frame;
    frame.origin.x = 10;
    self.onlineView.frame = frame;
    self.widthOnlineConstaint.constant = 30;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
