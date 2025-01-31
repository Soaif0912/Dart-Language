// In Dart, a private constructor is a constructor that is only accessible within the same library. You can create a private constructor by prefixing its name with an underscore (_).

// Why Use a Private Constructor?
// To implement singleton patterns.
// To restrict instantiation from outside the library.
// To enforce controlled instance creation.

class PrivateConstarctor{
    PrivateConstarctor._();

    func(){
      print('Good morning');
    }
    
}

void main(){
  // final obj1 = PrivateConstarctor();  +> It will thorw an error.
}