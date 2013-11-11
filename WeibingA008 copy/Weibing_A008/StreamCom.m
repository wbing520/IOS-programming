//
//  StreamCom.m
//  StreamCom implementation file
//
//  Created by scott cannon on 6/3/13.
//  Copyright (c) 2013 scott cannon. All rights reserved.
//

#import "StreamCom.h"

@implementation StreamCom
@synthesize delegate;

-(void) initNetworkCommunications:(NSString *)ipAddr port:(int)port
{
    CFReadStreamRef readStream;
    CFWriteStreamRef writeStream;
    CFStreamCreatePairWithSocketToHost(NULL, (__bridge CFStringRef)ipAddr, port, &readStream, &writeStream);
    inputStream = (__bridge NSInputStream *) readStream;
    outputStream = (__bridge NSOutputStream *) writeStream;
    [inputStream setDelegate:self];
    [outputStream setDelegate:self];
    [inputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    [outputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    [inputStream open];
    [outputStream open];
}

-(void)messageArrived:(NSString *)note
{
    [delegate stream:self messageArrived:note];
}

-(void) closeNetworkCommunications
{
    [inputStream close];
    [outputStream close];
    [inputStream removeFromRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    [outputStream removeFromRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
}

-(void) sendMessage: (NSString *)textMessage
{
    [textMessage getCString:(char *)outBuf maxLength:MSGSIZE encoding:NSUTF8StringEncoding];
    [outputStream write:outBuf  maxLength:strlen((const char *)outBuf)];
}

-(NSString *)toNSString:(uint8_t *)buf size:(int)len
{
    NSLog(@"message: %s", buf);
    NSString *note = [[NSString alloc] initWithBytes:buf length:len encoding:NSUTF8StringEncoding];
    return note;
}

-(void) stream: (NSStream *) theStream handleEvent: (NSStreamEvent) streamEvent
{
    NSLog(@"stream event: %d", streamEvent);
    switch (streamEvent)
    {
        case NSStreamEventOpenCompleted:
            NSLog (@"stream opened");
            break;
            
        case NSStreamEventHasBytesAvailable:
            NSLog (@"bytes avail");
            if (theStream == inputStream)
            {
                uint8_t *bufptr;
                bufptr = inBuf;
                int len, total=0;
                
                while ([inputStream hasBytesAvailable])                           // polling loop
                {   len = [inputStream read:bufptr maxLength:MSGSIZE];
                    if (len > 0)
                    {   bufptr += len;
                        total += len;
                    }
                }
                [self messageArrived:[self toNSString:inBuf size:total]];
            }
            break;
            
        case NSStreamEventErrorOccurred:
            NSLog(@"cannot connect to host");
            break;
            
        case NSStreamEventEndEncountered:
            NSLog (@"stream closed");
            [self closeNetworkCommunications];
            break;
            
        case NSStreamEventHasSpaceAvailable:
            NSLog(@"space available");
            break;
            
        default:
            NSLog(@"unknown comm error");
            break;
    }
}

@end
