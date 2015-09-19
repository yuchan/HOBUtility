//
//  HOBTextViewController.m
//  HNBrowser
//
//  Created by Ohashi Yusuke on 3/1/15.
//  Copyright (c) 2015 Ohashi Yusuke. All rights reserved.
//

#import "HOBTextViewController.h"

#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_9_0
@import SafariServices;
#endif

@interface HOBTextViewController ()

@end

@implementation HOBTextViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (BOOL)handleTextURL:(NSURL*)URL
{
    NSError* error;
    NSRegularExpression* regex = [[NSRegularExpression alloc] initWithPattern:@"http[s]?://(www\\.)?twitter.com" options:0 error:&error];
    if (error) {
        return YES;
    }
    NSTextCheckingResult* match = [regex firstMatchInString:URL.absoluteString options:0 range:NSMakeRange(0, URL.absoluteString.length)];

    if (match) {
        NSRange matchRange = [match range];
        if (matchRange.location != NSNotFound) {
            NSArray* urlcomponents = nil;
            NSMutableArray* array = [NSMutableArray arrayWithArray:URL.pathComponents];
            [array removeObject:@"/"];
            urlcomponents = array;

            if ([urlcomponents count] > 0) {
                NSString* userName = [urlcomponents objectAtIndex:0];
                NSInteger statusindex = [urlcomponents indexOfObject:@"status"];
                NSString* statusID = @"";
                NSString* twitterURL = @"";
                if (statusindex != NSNotFound && statusindex > 0) {
                    statusID = [urlcomponents objectAtIndex:statusindex + 1];
                    twitterURL = [NSString stringWithFormat:@"twitter://status?id=%@", statusID];
                }
                else {
                    twitterURL = [NSString stringWithFormat:@"twitter://user?screen_name=%@", userName];
                }
                if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:twitterURL]]) {
                    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:twitterURL]];
                    return NO;
                }
            }
        }
    }

#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_9_0
    if (([[[UIDevice currentDevice] systemVersion] compare:@"9.0" options:NSNumericSearch] != NSOrderedAscending)) {
        SFSafariViewController* safariViewController = [[SFSafariViewController alloc] initWithURL:URL];
        [self presentViewController:safariViewController animated:YES completion:nil];
        return NO;
    }
#endif

    return YES;
}

- (BOOL)textView:(UITextView*)textView shouldInteractWithURL:(NSURL*)URL inRange:(NSRange)characterRange
{
    return [self handleTextURL:URL];
}

@end
