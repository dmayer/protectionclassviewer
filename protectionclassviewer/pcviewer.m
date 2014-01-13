//
//  main.cpp
//  protectionclassviewer
//
//  Created by Daniel Mayer on 1/12/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    NSString *file = [NSString stringWithUTF8String:argv[1]];

    NSString *fileProtectionValue = [[[NSFileManager defaultManager]
                                      attributesOfItemAtPath:file error:NULL] valueForKey:
                                     NSFileProtectionKey];
    printf("%s\nx", [fileProtectionValue UTF8String]);

    return 0;
}

