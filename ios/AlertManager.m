//
//  AlertManager.m
//  MyApp
//
//  Created by Huynh on 20/03/2024.
//

#import <Foundation/Foundation.h>
// ios/AlertManager.m

// ios/AlertManager.m

#import "AlertManager.h"
#import <UIKit/UIKit.h> // Thêm vào để sử dụng UIViewController và UIApplication

@implementation AlertManager

RCT_EXPORT_MODULE(AlertManager); // Sửa tên module thành "AlertManager"

RCT_EXPORT_METHOD(showAlert:(NSString *)title message:(NSString *)message) {
  UIAlertController *alertController = [UIAlertController
      alertControllerWithTitle:title
                       message:message
                preferredStyle:UIAlertControllerStyleAlert];

  UIAlertAction *okAction = [UIAlertAction
      actionWithTitle:@"OK"
                style:UIAlertActionStyleDefault
              handler:nil];

  [alertController addAction:okAction];

  UIViewController *rootViewController = [[[UIApplication sharedApplication] keyWindow] rootViewController];
  [rootViewController presentViewController:alertController animated:YES completion:nil];
}

@end
