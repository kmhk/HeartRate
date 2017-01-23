//
//  ViewController.h
//  ATHeartRate
//
//

#import <UIKit/UIKit.h>
#import "HeartRateDetectionModel.h"

@interface ViewController : UIViewController
<
HeartRateDetectionModelDelegate
>
{
	HeartRateDetectionModel *heartRateDetectionModel;
}

@end

