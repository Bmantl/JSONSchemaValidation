//
//  VVJSONSchema+StandardValidators.m
//  VVJSONSchemaValidation
//
//  Created by Vlas Voloshin on 30/12/2014.
//  Copyright (c) 2014 Vlas Voloshin. All rights reserved.
//

#import "VVJSONSchema+StandardValidators.h"
#import "VVJSONSchemaDefinitions.h"

@implementation VVJSONSchema (StandardValidators)

+ (void)load
{
    // register all standard validators for default metaschema
    BOOL success = YES;
    success &= [self registerValidatorClass:[VVJSONSchemaDefinitions class] forMetaschemaURI:nil withError:NULL];
    
    if (success == NO) {
        [NSException raise:NSInternalInconsistencyException format:@"Failed to register standard JSON Schema validators."];
    }
}

@end