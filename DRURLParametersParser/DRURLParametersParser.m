//
//  DRURLParametersParser.m
//  DRURLParametersParser
//
//  Created by Dariusz Rybicki on 02.12.2013.
//  Copyright (c) 2013 Darrarski. All rights reserved.
//

#import "DRURLParametersParser.h"

@interface DRURLParametersParser ()

@property (nonatomic, strong) NSString *urlString;

@end

@implementation DRURLParametersParser

- (id)initWithURL:(NSURL *)url
{
	if (self = [super init])
	{
		_urlString = [url absoluteString];
	}
	return self;
}

- (id)initWithURLString:(NSString *)urlString
{
	if (self = [super init])
	{
		_urlString = urlString;
	}
	return self;
}

- (id)initWithParametersString:(NSString *)parametersString
{
	if (self = [super init])
	{
		_urlString = [@" ?" stringByAppendingString:parametersString];
	}
	return self;
}

- (NSString *)valueForParameter:(NSString *)parameterName
{
	for (NSString *parameter in self.parameters)
	{
        if ([parameter length] > [parameterName length]+1
			&& [[parameter substringWithRange:NSMakeRange(0, [parameterName length]+1)] isEqualToString:[parameterName stringByAppendingString:@"="]])
		{
			return [parameter substringFromIndex:[parameterName length]+1];
        }
    }
    return nil;
}

- (NSArray *)parameters
{
	if (!_parameters)
	{
		NSScanner *scanner = [NSScanner scannerWithString:self.urlString];
		[scanner setCharactersToBeSkipped:[NSCharacterSet characterSetWithCharactersInString:@"&?"]];
		NSMutableArray *parameters = [[NSMutableArray alloc] init];
		[scanner scanUpToString:@"?" intoString:nil];
		NSString *parameter;
		while ([scanner scanUpToString:@"&" intoString:&parameter])
		{
			[parameters addObject:[parameter copy]];
		}
		_parameters = parameters;
	}
	return _parameters;
}

@end
