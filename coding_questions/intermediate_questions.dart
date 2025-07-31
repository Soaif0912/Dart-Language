
void main(){

    // Write a function that returns both the max and min from a list.

        Map<String,int> getHighestAndLowestValueElement(List<int> numbers){
    
            int highestValue = numbers[0];
            int lowestValue = numbers[0];
            
            for(int i = 0; i < numbers.length; i++){
            if(numbers[i] > highestValue) highestValue = numbers[i];
            if(numbers[i] < highestValue) lowestValue = numbers[i];
            }
            
            return 
            {
                'Highest value: ': highestValue,
                'Lowest value: ': lowestValue
            }
            ;
        }
    
        print(getHighestAndLowestValueElement([1,2,3]));

    // Write a function that removes duplicate elements from a list of integers.

        List<int> removeDuplicate(List<int> numbers){

            // return numbers.toSet().toList();

            List<int> uniqueList = [];
            
            for(int num in numbers){
                if(!uniqueList.contains(num)){
                    uniqueList.add(num);
                }
            }
            
            return uniqueList;
            
        }
        
        print(removeDuplicate([1,2,3,1,7,3,5]));

}