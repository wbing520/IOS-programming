//
//  StreamCom.h
//  StreamCom object header file
//
//  Created by scott cannon on 6/3/13.
//  Copyright (c) 2013 scott cannon. All rights reserved.
//

#import <Foundation/Foundation.h>

#define MSGSIZE  512

@interface StreamCom : UIViewController <NSStreamDelegate>
{
    NSInputStream *inputStream;
    NSOutputStream *outputStream;
    uint8_t inBuf[MSGSIZE], outBuf[MSGSIZE];
}

@property (nonatomic, strong) id delegate;

-(void) initNetworkCommunications:(NSString *)ipAddr port:(int)port;
-(void) closeNetworkCommunications;
-(void) sendMessage: (NSString *)textMessage;

@end

@protocol StreamComDelegate

-(void)stream:(StreamCom *)stream messageArrived:(NSString *)note;

@end