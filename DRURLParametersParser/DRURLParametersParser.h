//
//  DRURLParametersParser.h
//  DRURLParametersParser
//
//  Created by Dariusz Rybicki on 02.12.2013.
//  Copyright (c) 2013 Darrarski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DRURLParametersParser : NSObject

/// Contains parameters from url (ex. "a=1", "b=2", "c=3")
@property (nonatomic, strong) NSArray *parameters;

/**
 Init parser with NSURL
 
 @return parser
 */
- (id)initWithURL:(NSURL *)URL;

/**
 Init parser with url string, ex. "http://www.domain.com/path?a=1&b=2&c=3"
 
 @return parser
 */
- (id)initWithURLString:(NSString *)urlString;

/**
 Init parser with parameters string, ex. "a=1&b=2&c=3"
 
 @return parser
 */
- (id)initWithParametersString:(NSString *)parametersString;

/**
 Returns value of parameter with given name
 
 @return parameter's value or nil if parameter not found
 */
- (NSString *)valueForParameter:(NSString *)parameterName;

@end
