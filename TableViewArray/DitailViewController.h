//
//  DitailViewController.h
//  TableViewArray
//
//  Created by Georgi Malkhasyan on 7/24/19.
//  Copyright © 2019 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DitailViewController : UIViewController

@property(strong, nonatomic) NSArray *detailModal;

@property (weak, nonatomic) IBOutlet UILabel *ditailTitle;
@property (weak, nonatomic) IBOutlet UILabel *ditailAddress;
@property (weak, nonatomic) IBOutlet UIImageView *ditailImage;
@property (weak, nonatomic) IBOutlet UITextView *ditailDescription;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UIButton *direction;
- (IBAction)directionAction:(id)sender;

@end

NS_ASSUME_NONNULL_END
