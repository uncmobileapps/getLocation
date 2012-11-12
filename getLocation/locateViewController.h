//
//  locateViewController.h
//  getLocation
//
//  Created by Matt Hayes on 11/5/12.
//  Copyright (c) 2012 Matt Hayes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface locateViewController : UIViewController <CLLocationManagerDelegate> {
    CLLocationManager *locationManager;
}
- (IBAction)findMePressed:(id)sender;
@property (strong, nonatomic) IBOutlet CLLocationManager *locationManager;
@property (weak, nonatomic) IBOutlet UILabel *latLabel;
@property (weak, nonatomic) IBOutlet UILabel *longLabel;

@end
