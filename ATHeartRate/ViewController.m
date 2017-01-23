//
//  ViewController.m
//  ATHeartRate
//
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lblBPM;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
	
	heartRateDetectionModel = [[HeartRateDetectionModel alloc] init];
	heartRateDetectionModel.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onStart:(id)sender {
	[heartRateDetectionModel startDetection];
}

- (void)heartRateStart {
	NSLog(@"heart rate started");
}

- (void)heartRateUpdate:(int)bpm atTime:(int)seconds {
	_lblBPM.text = [NSString stringWithFormat:@"%d bpm", bpm];
}

- (void)heartRateEnd {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:@"finished!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
	[alert show];
}

@end
