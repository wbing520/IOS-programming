//
//  ViewController.h
//  Weibing_A007_NoteTaker
//
//  Created by wbing_Luzin on 6/3/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextViewDelegate, UITextFieldDelegate>
{
    IBOutlet UITextField *fileNameField;
    IBOutlet UITextView *textView;
    IBOutlet UIButton *openBt;
    IBOutlet UIButton *createBt;
    IBOutlet UIButton *delBt;
    IBOutlet UIButton *saveBt;
    
    NSString *filePath;
    NSString *fileName;
}

-(IBAction) open;
-(IBAction) create;
-(IBAction) del;
-(IBAction) save;

@end
