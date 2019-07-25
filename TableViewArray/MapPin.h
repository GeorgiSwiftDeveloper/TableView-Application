//
//  MapPin.h
//  TableViewArray
//
//  Created by Georgi Malkhasyan on 7/25/19.
//  Copyright © 2019 Aaron Caines. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface MapPin : NSObject <MKAnnotation> {
    CLLocationCoordinate2D coordinate;
    
}
@property(nonatomic, assign) CLLocationCoordinate2D coordinate;

@end

NS_ASSUME_NONNULL_END
