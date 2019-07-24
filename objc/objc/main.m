#import <Foundation/Foundation.h>

void calculator() {
    int first = 0;
    int second = 0;
    char operator;
    int result = 0;
    
    printf("First operand: ");
    scanf("%d", &first);
    printf("Operator: ");
    scanf("%s", &operator);
    printf("Second operand: ");
    scanf("%d", &second);
    
    switch (operator) {
        case '+':
            result = first + second;
            break;
        case '-':
            result = first - second;
            break;
        case '*':
            result = first * second;
            break;
        case '/':
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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int choose;
        printf("Choose application: 1 - calculator, 2 - average of three, 3 - is english letter: ");
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
            default:
                NSLog(@"No such application");
                break;
        }
    }
    return 0;
}
