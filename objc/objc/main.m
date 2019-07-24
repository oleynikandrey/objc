#import <Foundation/Foundation.h>

void calculator() {
    int first = 0;
    int second = 0;
    char operator;
    int result = 0;
    
    enum {
        Add = '+',
        Subtract = '-',
        Multiply = '*',
        Divide = '/'
    };
    typedef int Operator;
    
    printf("First operand: ");
    scanf("%d", &first);
    printf("Operator: ");
    scanf("%s", &operator);
    printf("Second operand: ");
    scanf("%d", &second);
    
    switch (operator) {
        case Add:
            result = first + second;
            break;
        case Subtract:
            result = first - second;
            break;
        case Multiply:
            result = first * second;
            break;
        case Divide:
            result = first / second;
            break;
        default:
            NSLog(@"Unsupported operator");
    }
    
    NSLog(@"%d %c %d = %d", first, operator, second, result);
    
}

void average() {
    int first = 0;
    int second = 0;
    int third = 0;
    int result = 0;
    
    printf("Enter 3 numbers\n");
    printf("First: ");
    scanf("%d", &first);
    printf("Second: ");
    scanf("%d", &second);
    printf("Third: ");
    scanf("%d", &third);
    
    result = (first + second + third) / 3;
    
    NSLog(@"(%d + %d + %d) / 3 = %d", first, second, third, result);
}

void is_english_letter() {
    char symbol;
    
    printf("Enter symbol: ");
    scanf(" %c", &symbol);
    
    if ((65 <= symbol && symbol <= 90) || (97 <= symbol && symbol <= 122)) {
        NSLog(@"English alphabet contain '%c'\n", symbol);
    } else {
        NSLog(@"English alphabet does not contain '%c'\n", symbol);
    }
}

int calculateAddition(int a, int b) {
    return a + b;
}

int calculateSubtruction(int a, int b) {
    return a - b;
}

int calculateMultiplication(int a, int b) {
    return a * b;
}

int calculateDivision(int a, int b) {
    return a / b;
}

int calculate(NSString *method, int a, int b) {
    
    if ([method isEqualToString:@"+"]) {
        return calculateAddition(a, b);
    }
    else if ([method isEqualToString:@"-"]) {
        return calculateSubtruction(a, b);
    }
    else if ([method isEqualToString:@"*"]) {
        return calculateMultiplication(a, b);
    }
    else if ([method isEqualToString:@"/"]) {
        return calculateDivision(a, b);
    }
    else if ([method isEqualToString:@"%"]) {
        return a % b;
    }
    else {
        NSLog(@"Функция не знает переданный метод");
        return 0;
    }
    
    return a + b;
}

void arrayPrinter() {
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    char item[20];
    
    printf("Enter array items separated by space and finished by 'nil' keyword: \n");
    while (true) {
        getchar();
        scanf("%s", item);

        NSString *strItem = [NSString stringWithUTF8String:item];
        
        if ([strItem  isEqual: @"nil"]) {
            break;
        }
        
        [arr addObject:strItem];
    }
    
    NSLog(@"Got items from user: \n");
    for (int i = 0; i < [arr count]; i++) {
        NSLog(@"%@\n", arr[i]);
    }
}

void userStruct() {
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    char name[20];
    
    struct User {
        NSString *name;
    };
    typedef struct User User;
    
    printf("Enter user names separated by space and finished by 'nil' keyword: \n");
    while (true) {
        getchar();
        scanf("%s", name);
        
        NSString *strName = [NSString stringWithUTF8String:name];
        
        if ([strName  isEqual: @"nil"]) {
            break;
        }
        
        User user;
        user.name = strName;
        
        NSValue *value = [NSValue valueWithBytes:&user objCType:@encode(User)];
        [arr addObject:value];
    }
    
    NSLog(@"Got user names: \n");
    for (int i = 0; i < [arr count]; i++) {
        NSValue *value = [arr objectAtIndex:i];
        User *user = [value pointerValue];
        NSLog(@"%@\n", user->name);
    }

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int choose;
        printf("Choose application: 1 - calculator, 2 - average of three, 3 - is english letter, 4 - array printer, 5 - user struct: ");
        scanf("%d", &choose);
        
        switch (choose) {
            case 1:
                calculator();
                break;
            case 2:
                average();
                break;
            case 3:
                is_english_letter();
                break;
            case 4:
                arrayPrinter();
                break;
            case 5:
                userStruct();
                break;
            default:
                NSLog(@"No such application");
                break;
        }
    }
    return 0;
}
