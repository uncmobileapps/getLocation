//
//  locateViewController.m
//  getLocation
//
//  Created by Matt Hayes on 11/5/12.
//  Copyright (c) 2012 Matt Hayes. All rights reserved.
//

#import "locateViewController.h"

@interface locateViewController ()

@end

@implementation locateViewController

@synthesize locationManager;
@synthesize latLabel;
@synthesize longLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)findMePressed:(id)sender {
    [self startStandardUpdates];
}

- (void)startStandardUpdates{
    // Create the location manager if object does not already have one.
    if (nil == locationManager){
        locationManager = [[CLLocationManager alloc] init];
    }
    
    locationManager.delegate = self;
    locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation;
    
    // Set a movement threshold for new events.
    locationManager.distanceFilter = .05; //not sure if this is working
    
    [locationManager startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager
     didUpdateLocations:(NSArray *)locations {
    // If it's a relatively recent event, turn off updates to save power
    CLLocation* location = [locations lastObject];
    NSDate* eventDate = location.timestamp;
    NSTimeInterval howRecent = [eventDate timeIntervalSinceNow];
    if (abs(howRecent) < 5.0) {
        // If the event is recent, do something with it
        latLabel.text = [NSString stringWithFormat:@"%g", location.coordinate.latitude];
        longLabel.text = [NSString stringWithFormat:@"%g", location.coordinate.longitude];

    }
}

@end
