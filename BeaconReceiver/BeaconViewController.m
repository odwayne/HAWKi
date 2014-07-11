//
//  ViewController.m
//  BeaconReceiver
//
//  Created by Christopher Ching on 2013-11-28.
//  Copyright (c) 2013 AppCoda. All rights reserved.
//

#import "BeaconViewController.h"

@interface BeaconViewController ()

@end

@implementation BeaconViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.uuidLabel.text = [NSString stringWithFormat:@"UUID: %@", self.beacon.proximityUUID.UUIDString];
    self.majorLabel.text = [NSString stringWithFormat:@"Major: %@", self.beacon.major.stringValue];
    self.minorLabel.text = [NSString stringWithFormat:@"Minor: %@", self.beacon.minor.stringValue];
    self.proximityLabel.text = [NSString stringWithFormat:@"Proximity: %.2fm", self.beacon.accuracy];
    
    switch (self.beacon.minor.integerValue) {
        case 4:
            self.uuidLabel.text = @"You are in the Kitchen... Happy Eating :)";
            break;
        case 6:
            self.uuidLabel.text = @"Welcome to OpenSpace... The area where you activity is limited by your imagination";
            break;
        default:
            break;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
}



@end
