//
//  BeaconTableViewController.h
//  BeaconReceiver
//
//  Created by OIrving on 7/8/14.
//  Copyright (c) 2014 ThoughtWorks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface BeaconTableViewController : UITableViewController<CLLocationManagerDelegate>

@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) CLBeaconRegion *myBeaconRegion;
@property NSMutableDictionary *rangedRegions;
@property NSMutableArray *beacons;
@property NSUInteger beaconIndex;
@property NSNumber* currentBeaconMinor;
@property BOOL isDisplayingData;

@end
