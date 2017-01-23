//
//  HeartRateDetection.h
//  ATHeartRate
//
//

#import <UIKit/UIKit.h>

@protocol HeartRateDetectionModelDelegate

- (void)heartRateStart;
- (void)heartRateUpdate:(int)bpm atTime:(int)seconds;
- (void)heartRateEnd;

@end

@interface HeartRateDetectionModel : NSObject

@property (nonatomic, weak) id<HeartRateDetectionModelDelegate> delegate;

- (void)startDetection;
- (void)stopDetection;

@end
