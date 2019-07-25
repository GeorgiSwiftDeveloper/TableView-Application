//
//  DitailViewController.m
//  TableViewArray
//
//  Created by Georgi Malkhasyan on 7/24/19.
//  Copyright © 2019 Aaron Caines. All rights reserved.
//

#import "DitailViewController.h"
#import "MapPin.h"
@interface DitailViewController ()

@end

@implementation DitailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.mapView.layer.cornerRadius = 5;
    self.direction.layer.cornerRadius = 5;
    self.navigationItem.title = self.detailModal[0];
    self.ditailTitle.text = self.detailModal[0];
    self.ditailAddress.text = self.detailModal[1];
    self.ditailImage.image = [UIImage imageNamed:self.detailModal[2]];
    
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D locaation;
    locaation.latitude = [self.detailModal[3] doubleValue];
    locaation.longitude = [self.detailModal[4] doubleValue];
    region.span = span;
    region.center = locaation;
    
    [self.mapView setRegion:region animated:YES];
    
    MapPin *ann = [[MapPin alloc ] init];
    ann.coordinate = locaation;
    [self.mapView addAnnotation:ann];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)directionAction:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://map.apple.com/?daddr=%@,%@", self.detailModal[3], self.detailModal[4]]] options:@{} completionHandler:nil];
}
@end
