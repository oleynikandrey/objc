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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int choose;
        printf("Choose application: 1 - calculator, 2 - average of three: ");
        scanf("%d", &choose);
        
        switch (choose) {
            case 1:
                calculator();
                break;
            case 2:
                average();
                break;
            default:
                NSLog(@"No such application");
                break;
        }
    }
    return 0;
}
