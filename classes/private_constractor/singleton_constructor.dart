
class SingletonPattern{

  String name = 'Soaif';

  // Private static instance
  // Creates a single object of Singleton and stores it in _instance.
  static final SingletonPattern _instance = SingletonPattern._internal();


  // Private constructor
  //   It prevents new Singleton() from being used outside the class.
  // The only way to get an instance is through the factory constructor.
  SingletonPattern._internal();

  // Factory constructor returning the single instance
  factory SingletonPattern(){
    return _instance;
  }

}

void main(){
  final obj11 = SingletonPattern();
  final obj22 = SingletonPattern();

  //   If someone writes Singleton obj1 = Singleton();, it does not create a new object.
  // Instead, it returns the existing _instance.

  if(obj11 == obj22){
    print('True');
  }else{
    print('False');
  }
}


// static → This means _instance belongs to the class itself, not to an object.

// final → The _instance variable cannot be changed after it's set.

// Singleton._internal(); → Calls a private constructor (_internal()) to create an instance.

// factory → A special type of constructor that returns an existing instance instead of creating a new one.

// Singleton() → This is the constructor that gets called when someone tries to create an object of Singleton.

// return _instance; → Always returns the same instance created earlier.