# Microverse Project Title - Letsget building [Collaborative Project]
Ruby on Rails

## Introduction.

1. Do [Chapter 3](https://www.learnenough.com/ruby-on-rails-4th-edition-tutorial/static_pages) of the Ruby on Rails Tutorial to get started building the application.

2. Do [Chapter 4](https://www.learnenough.com/ruby-on-rails-4th-edition-tutorial/static_pages) of the tutorial to see how Ruby will be used in Rails.

Things you may want to cover:

###  Ruby version

rbenv 2.6.5


###  System dependencies

Rails 6.0.0

Yarn 1.19.1

Ubuntu 18.04 & below

###  Database creation

###  Database initialization

###  How to run the test suite

###  Services (job queues, cache servers, search engines, etc.)

###  Deployment instructions

1. Open the terminal.

2. Enter git clone https://github.com/jcromerohdz/toy_app

3. Navigate to the cloned repository.

4. Enter command "rails server" to start the app


### ...

## Chapter 4 Exercises

4.1 Assign variables city and state to your current city and state of residence. (If residing outside the U.S., substitute the analogous quantities.)

```sh
>> city = 'Houston'
=> "Houston"
>> state = 'Texas'
=> "Texas"
```

4.2 Using interpolation, print (using puts) a string consisting of the city and state separated by a comma and a space, as in “Los Angeles, CA”.

```sh
>> puts city + ', ' + state
Houston, Texas
```

4.3 Repeat the previous exercise but with the city and state separated by a tab character.

```sh
>> puts city + ', ' + '&emsp;' + state
Houston, &emsp;Texas
=> nil
```

4.4 What is the result if you replace double quotes with single quotes in the previous exercise?

```sh
>> city = "BSB"
=> "BSB"
>> state = "Muara"
=> "Muara"
>> puts city + ", " + state
BSB, Muara
=> nil
```

4.5 What is the length of the string “racecar”?

```sh
>> 'racecar'.length
=> 7
```

4.6 Confirm using the reverse method that the string in the previous exercise is the same when its letters are reversed.

```sh
>> puts s.reverse
racecar
```

4.7 Assign the string “racecar” to the variable s. Confirm using the comparison operator == that s and s.reverse are equal.

```sh
>> s = 'racecar'
=> "racecar"
>> puts "Its a palindrome!" if s == s.reverse
Its a palindrome!
```

4.8 What is the result of running the code shown in Listing 4.9? How does it change if you reassign the variable s to the string “onomatopoeia”? Hint: Use up-arrow to retrieve and edit previous commands

```sh
>> s = "onomatopoeia"
=> "onomatopoeia"
>> puts s.reverse
aieopotamono
=> nil
>> puts "Its a palindrome!" if s == s.reverse
```=> nil

4.9 By replacing FILL_IN with the appropriate comparison test shown in Listing 4.10, define a method for testing palindromes. Hint: Use the comparison shown in Listing 4.9.

```sh
def palindrome_tester(s)
  if s = s.reverse
    puts "It's a palindrome!"
  else
    puts "It's not a palindrome."
  end
end
```

4.10 By running your palindrome tester on “racecar” and “onomatopoeia”, confirm that the first is a palindrome and the second isn’t.

```sh
>> palindrome_tester('racecar')
It's a palindrome!
=> nil
>> palindrome_tester('onomatopoeia')
It's a palindrome!
=> nil
```

4.11 By calling the nil? method on palindrome_tester("racecar"), confirm that its return value is nil (i.e., calling nil? on the result of the method should return true). This is because the code in Listing 4.10 prints its responses instead of returning them.

```sh
>> palindrome_tester("racecar").nil?
It's a palindrome!
=> true
```

4.12 Assign a to be to the result of splitting the string “A man, a plan, a canal, Panama” on comma-space.

```sh
>> a = 'A man, a plan, a canal, Panama'.split(',')
=> ["A man", " a plan", " a canal", " Panama"]
```

4.13 Assign s to the string resulting from joining a on nothing.

```sh
>> s = a.join("")
=> "A man a plan a canal Panama""
```

4.14 Split s on whitespace and rejoin on nothing. Use the palindrome test from Listing 4.10 to confirm that the resulting string s is not a palindrome by the current definition. Using the downcase method, show that s.downcase is a palindrome.

```sh
>> s = a.join("")
=> "A man a plan a canal Panama"
>> s = s.downcase.split(" ").join("")
=> "amanaplanacanalpanama"
>> puts "Its a palindrome" if s == s.reverse
Its a palindrome
```

4.15 What is the result of selecting element 7 from the range of letters a through z? What about the same range reversed? Hint: In both cases you will have to convert the range to an array.

```sh
>> alpha = ('a'..'z').to_a
=> ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
>> alpha[7]
=> "h"
>> alpha.reverse
=> ["z", "y", "x", "w", "v", "u", "t", "s", "r", "q", "p", "o", "n", "m", "l", "k", "j", "i", "h", "g", "f", "e", "d", "c", "b", "a"]

4.16 Using the range 0..16, print out the first 17 powers of 2.

>> (0..16).map { |i| i ** 2 }
=> [0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256]
```

4.17 Define a method called yeller that takes in an array of characters and returns a string with an ALLCAPS version of the input. Verify that yeller(['o', 'l', 'd']) returns "OLD". Hint: Combine map, upcase, and join.

```sh
>> def yeller(s)
>>   s.join().upcase
>> end
=> :yeller
>> yeller(['o', 'l', 'd'])
=> "OLD"
```

4.17 Define a method called random_subdomain that returns a randomly generated string of eight letters.

```sh
>> def random_subdomain
>>   ('a'..'z').to_a.shuffle[(0..7)].join()
>> end
=> :random_subdomain
>> puts random_subdomain
bnkyrxpd
```

4.18 By replacing the question marks in Listing 4.12 with the appropriate methods, combine split, shuffle, and join to write a function that shuffles the letters in a given string.

```sh
>> def random_subdomain(s)
>>   s.to_a.shuffle[(0..s.length-1)].join()
>> end
=> :random_subdomain
>> puts random_subdomain(['s', 'u', 'b', 'l', 'i', 'm', 'e'])
elsbmui
```

4.19 Define a hash with the keys 'one', 'two', and 'three', and the values 'uno', 'dos', and 'tres'. Iterate over the hash, and for each key/value pair print out "'#{key}' in Spanish is '#{value}'".

```sh
>> num = { one: 'uno', two: 'dos', three: 'tres' }
=> {:one=>"uno", :two=>"dos", :three=>"tres"}
>> num.each do |key, value|
?>   puts "'#{key}' in Spanish is '#{value}'"
>> end
'one' in Spanish is 'uno'
'two' in Spanish is 'dos'
'three' in Spanish is 'tres'
=> {:one=>"uno", :two=>"dos", :three=>"tres"}
```

4.20 Create three hashes called person1, person2, and person3, with first and last names under the keys :first and :last. Then create a params hash so that params[:father] is person1, params[:mother] is person2, and params[:child] is person3. Verify that, for example, params[:father][:first] has the right value.

```sh
>> person1 = { :first => 'Darth', :last => 'Vader' }
=> {:first=>"Darth", :last=>"Vader"}
>> person2 = { :first => 'Padme', :last => 'Amidala' }
=> {:first=>"Padme", :last=>"Amidala"}
>> person3 = { :first => 'Luke', :last => 'Skywalker' }
=> {:first=>"Luke", :last=>"Skywalker"}
>> params = {
?>  :father => person1,
?>  :mother => person2,
?>  :child  => person3
>> }
=> {:father=>{:first=>"Darth", :last=>"Vader"}, :mother=>{:first=>"Padme", :last=>"Amidala"}, :child=>{:first=>"Luke", :last=>"Skywalker"}}
>> params[:father][:first]
=> "Darth"
```

4.21 Define a hash with symbol keys corresponding to name, email, and a “password digest”, and values equal to your name, your email address, and a random string of 16 lower-case letters.

```sh
>> def my_hash
>>   {
?>     name: "Brandon",
?>     email: "brandon.elder@gmail.com",
?>     password: ('a'..'z').to_a.sample(16).join
>>   }
>> end
=> :my_hash
>> puts my_hash
{:name=>"Brandon", :email=>"brandon.elder@gmail.com", :password=>"onyvtwqpafriszmh"}
```

4.22 Find an online version of the Ruby API and read about the Hash method merge. What is the value of the following expression?

```sh
{ "a" => 100, "b" => 200 }.merge({ "b" => 300 })

>> { "a" => 100, "b" => 200 }.merge({ "b" => 300 })
=> {"a"=>100, "b"=>300}
```

merge does not return boolean values (true or false), it returns a new hash.

4.23 What is the literal constructor for the range of integers from 1 to 10?

```sh
a = (1..10)
```

4.24 What is the constructor using the Range class and the new method? Hint: new takes two arguments in this context.

```sh
>> a = Range.new(0, 10)
=> 0..10
```

4.25 Confirm using the == operator that the literal and named constructors from the previous two exercises are identical.

```sh
>> a = Range.new(0, 10)
=> 0..10
>> a = (1..10)
=> 1..10
>> b = Range.new(1, 10)
=> 1..10
>> puts "yes" if a == b
yes
```

4.26 What is the class hierarchy for a range? For a hash? For a symbol?

```sh
>> a.class
=> Range
>> a.class.superclass
=> Object
>> a.class.superclass.superclass
=> BasicObject

>> b.class
=> Hash
>> b.class.superclass
=> Object
>> b.class.superclass.superclass
=> BasicObject

>> :a.class
=> Symbol
>> :a.class.superclass
=> Object
>> :a.class.superclass.superclass
=> BasicObject
```

4.27 Confirm that the method shown in Listing 4.15 works even if we replace self.reverse with just reverse.

```
>> class Word < String             # Word inherits from String.
>>   # Returns true if the string is its own reverse.
>>   def palindrome?
>>     self == reverse        # self is the string itself.
>>   end
>> end
=> :palindrome?
>> s = Word.new("level")
=> "level"
>> s.palindrome?
=> true
```

4.28 erify that “racecar” is a palindrome and “onomatopoeia” is not. What about the name of the South Indian language “Malayalam”? Hint: Downcase it first.

```sh
>> class String
>> # Returns true if the string is its own reverse.
>>   def palindrome?
>>     self == self.reverse
>>   end
>> end
=> :palindrome?
>> "deified".palindrome?
=> true
>> "racecar".palindrome?
=> true
>> "onomatopeia".palindrome?
=> false
>> "Malayalam".downcase.palindrome?
=> true
```

4.29 Using Listing 4.16 as a guide, add a shuffle method to the String class. Hint: Refer to Listing 4.12.

```sh
>> class String
>>   def shuffle
>>     self.split('').shuffle.join
>>   end
>> end
=> :shuffle
>> "ayylmao".shuffle
=> "loayyma"
```

4.30 Verify that Listing 4.16 works even if you remove self..

```sh
>> class String
>>    def palindrome?
>>      self == reverse
>>    end
>> end
=> :palindrome?
>> "racecar".palindrome?
=> true
>> "ayylmao".palindrome?
=> false
```

4.31 By running the Rails console in the toy app’s directory from Chapter 2, confirm that you can create a user object using User.new.

```sh
>> user = User.new(name: "Drew", email: "drew@drop.com")
   (3.0ms)  SELECT sqlite_version(*)
=> #<User id: nil, name: "Drew", email: "drew@drop.com", created_at: nil, updated_at: nil>
```

4.32 Determine the class hierarchy of the user object.

```sh
=> User(id: integer, name: string, email: string, created_at: datetime, updated_at: datetime)
>> user.class.superclass
=> ApplicationRecord(abstract)
>> user.class.superclass.superclass
=> ActiveRecord::Base
>> user.class.superclass.superclass.superclass
=> Object
>> user.class.superclass.superclass.superclass.superclass
=> BasicObject
>>
```

4.33 In the example User class, change from name to separate first and last name attributes, and then add a method called full_name that returns the first and last names separated by a space. Use it to replace the use of name in the formatted email method.

```sh
class User
  attr_accessor :first, :last, :email, :full_name

  def initialize(attributes = {})
    @first  = attributes[:first]
    @last  = attributes[:last]
    @email = attributes[:email]
    @full_name = full_name
  end

  def formatted_email
    "#{@full_name} <#{@email}>"
  end
  
  def full_name
    "#{@first} #{@last}"
  end

end
```

4.34 Add a method called alphabetical_name that returns the last name and first name separated by comma-space.

```sh
class User
  def alphabetical_name
    "#{@last}, #{@first}"
  end
end

4.35 Verify that full_name.split is the same as alphabetical_name.split(', ').reverse.