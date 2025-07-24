
void main(){

    //  1. Write a function that takes a string and returns it reversed.

        String stringReverse(String text){
            //return text.split('').reversed.join('');

            String reversedString ='';
            for(int i = text.length -1 ; i>= 0; i--){
            reversedString += text[i];
            }
            return reversedString;
        }
        print(stringReverse('jkl'));

    //  2. Write a function to check if a string is a palindrome.

        bool checkPalindrome(String text){
            return text.split('').reversed.join('') == text;
        }
        print(checkPalindrome('ABCBA'));

    //  3. Write a recursive and iterative function to calculate factorial of a number.

        int factorialByIterative(int num){
            int factorialValue = 1;
            
            for(int i = num; i > 0; i--){
            factorialValue *= i;
            }
            return factorialValue;
        }
        
        print(factorialByIterative(3));

    //  4. Generate the first N numbers of the Fibonacci sequence.

        List<int> getFibonacciSequence(int num){
            List<int> fibonaccisequnce =[];
            if(num<=0) return fibonaccisequnce;
            if(num >= 1) fibonaccisequnce.add(0);
            if(num >= 2) fibonaccisequnce.add(1);
            
            for(int i = 2; i < num; i++){
            fibonaccisequnce.add(fibonaccisequnce[i-1] + fibonaccisequnce[i-2]);
            }

            return fibonaccisequnce;
        }
    
        print(getFibonacciSequence(4));

    //  5. Write a function that sums all elements of a list of integers.
        int getSumOfElements(List<int> numbers){
            int sumOfElements = 0;
            
            for(int i = 0; i < numbers.length; i++){
            sumOfElements += numbers[i];
            }

            return sumOfElements;
        }
        
        print(getSumOfElements([1,2,3]));

}