@interface SpringBoard
	-(NSArray *)_rootViewControllers;
@end

%hook SpringBoard

- (void)applicationDidFinishLaunching:(UIApplication *)application {
	%orig;
	UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Did it work" message:@"Indeed it did. Thank you everybody who helped me for hours" preferredStyle:UIAlertControllerStyleAlert];
	UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {}];
	[alert addAction:defaultAction];
	[[self _rootViewControllers][1] presentViewController:alert animated:YES completion:nil];
}
%end
