//
//  DatePickerViewController.m
//  SimpleStories
//
//  Created by Ishan  on 11/4/15.
//  Copyright © 2015 Ishan . All rights reserved.
//

#import "DatePickerViewController.h"

@interface DatePickerViewController ()

@property (strong, nonatomic) IBOutlet UIView *datePickerView;
@property (strong, nonatomic) IBOutlet UIView *borderView;


@end

@implementation DatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _borderView.layer.cornerRadius = 5;
    _borderView.layer.masksToBounds = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)pressedShowPicker:(id)sender {
    
    CGRect frame = _datePickerView.frame;
    frame.size.width = self.view.frame.size.width;
    frame.size.height = self.view.frame.size.height;
    frame.origin.y = self.view.frame.size.height + 10;
    
    
    [_datePickerView setFrame:frame];
    
    [self.view addSubview:_datePickerView];
    
    
    [UIView animateWithDuration:0.5
                          delay:0.0
         usingSpringWithDamping:0.7
          initialSpringVelocity:0.5
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^
     {
         CGRect frame1 = _datePickerView.frame;
         frame1.origin.y = 0;
         [_datePickerView setFrame:frame1];
     }
                     completion:nil];
    
}

- (IBAction)pressedPickerDone:(id)sender {
    
    
    [UIView animateWithDuration:0.8
                          delay:0.0
         usingSpringWithDamping:0.7
          initialSpringVelocity:0.5
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^
     {
         CGRect frame1 = _datePickerView.frame;
         frame1.origin.y = self.view.frame.size.height + 10;
         [_datePickerView setFrame:frame1];
         
     }
                     completion:^(BOOL finished) {
                         [_datePickerView removeFromSuperview];
                     }];
}

@end
