//
//  ViewController.m
//  Weibing_A007_NoteTaker
//
//  Created by wbing_Luzin on 6/3/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    textView.delegate = self;
    fileNameField.delegate = self;
}

-(BOOL)textFieldShouldReturn:(UITextField *)tf
{
    [tf resignFirstResponder];
    NSLog(@"fileName: %@", [self fileNameMethod]);
    return true;
}

-(NSString *) fileNameMethod
{
    NSString *fn;
    if(fileNameField.text != nil)
         fn = fileNameField.text;
    else 
        fn = @"myFile";
    return ([fn stringByAppendingString:@".txt"]);
}

-(NSString *)buildPath: (NSString *)filename
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *fPath = [documentsDirectory stringByAppendingPathComponent:filename];
    
    return fPath;
}

-(IBAction)create
{
    fileName = [self fileNameMethod];
    NSLog(@"Create the file: %@", fileName);
    
    filePath = [self buildPath:fileName];
    
    textView.text = nil;
    
}

-(IBAction) save
{
    fileName = [self fileNameMethod];
    NSLog(@"Save the file: %@", fileName);
    
    filePath = [self buildPath:fileName];
    NSString *str = textView.text;
    
    [str writeToFile:filePath atomically:NO encoding:NSUTF8StringEncoding error:Nil];
    NSLog(@"filePath: %@", filePath.description);
}

- (IBAction) open
{
    fileName = [self fileNameMethod];
    NSLog(@"Open the file: %@", fileName);
    
    filePath = [self buildPath:fileName];
    
    //NSString *str = textView.text;
    
    NSString *str = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    
    textView.text = str;
    
    NSLog(@"FilePath: %@; FileText: %@", filePath.description, str);
}

-(IBAction) del
{
    fileName = [self fileNameMethod];
    NSLog(@"Delete the file: %@", fileName);
    
    filePath = [self buildPath:fileName];
    
    [[NSFileManager defaultManager] removeItemAtPath: filePath error:nil];
    fileNameField.text = nil;
    textView.text = nil;
}

-(BOOL)shouldAutorotate
{
    return YES;
}

-(BOOL)textViewShouldBeginEditing:(UITextView *)tv
{
    return YES;
}

-(void) textViewDidBeginEditing:(UITextView *)tv
{
    tv.backgroundColor = [UIColor greenColor];
}

-(BOOL) textViewShouldEndEditing:(UITextView *)tv
{
    textView.backgroundColor = [UIColor whiteColor];
    return YES;
}

-(void) textViewDidEndEditing:(UITextView *)textView
{
    NSLog(@"textViewDidEndEditing");
}

-(BOOL) textView:(UITextView *)tv shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"])
    {
        [tv resignFirstResponder];
        return NO;
    }
    return YES;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//removing the Keyboard
-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    for(textView in self.view.subviews){
        if([textView isFirstResponder])
            [textView resignFirstResponder];
            }
    [super touchesBegan:touches withEvent:event];
    
}
@end
