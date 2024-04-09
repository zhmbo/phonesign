//
//  ViewController.m
//  phonesign
//
//  Created by jumbo on 2021/5/24.
//

#import "ViewController.h"
#include "phonesign.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    const char *p12 = [[NSBundle.mainBundle pathForResource:@"证书" ofType:@"p12"] UTF8String];
    const char *ipa = [[NSBundle.mainBundle pathForResource:@"KuWoYinYuePure" ofType:@"ipa"] UTF8String];
    const char *prov = [[NSBundle.mainBundle pathForResource:@"dev" ofType:@"mobileprovision"] UTF8String];
    const char *outfile = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true).firstObject stringByAppendingPathComponent:@"PhoneSign"] UTF8String];
    
    phonesign(ipa, p12, "123", prov, outfile);
    
}
@end
