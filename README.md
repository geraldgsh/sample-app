# Microverse Project Title - Lets get building 
Ruby on Rails

## Introduction.

1. Do [Chapter 3](https://www.learnenough.com/ruby-on-rails-4th-edition-tutorial/static_pages) of the Ruby on Rails Tutorial to get started building the application.

2. Do [Chapter 4](https://www.learnenough.com/ruby-on-rails-4th-edition-tutorial/static_pages) of the tutorial to see how Ruby will be used in Rails.

3. Do [Chapter 5](https://www.learnenough.com/ruby-on-rails-4th-edition-tutorial/filling_in_the_layout)

4. Do [Chapter 6](https://www.learnenough.com/ruby-on-rails-4th-edition-tutorial/modeling_users)

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

### Chapter 4

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
```

4.35 Verify that full_name.split is the same as alphabetical_name.split(', ').reverse.

### Chapter 5

5.1 It’s well-known that no web page is complete without a cat image. Using the command in Listing 5.4, arrange to download the kitten pic shown in Figure 5.3.8

5.2 Using the mv command, move kitten.jpg to the correct asset directory for images (Section 5.2.1).

5.3 Using image_tag, add kitten.jpg to the Home page, as shown in Figure 5.4.

5.4 Using code like that shown in Listing 5.10, comment out the cat image from Section 5.1.1.1. Verify using a web inspector that the HTML for the image no longer appears in the page source.

5.5 By adding the CSS in Listing 5.11 to custom.scss, hide all images in the application—currently just the Rails logo on the Home page). Verify with a web inspector that, although the image doesn’t appear, the HTML source is still present.

5.6 Replace the default Rails head with the call to render shown in Listing 5.18. Hint: For convenience, cut the default header rather than just deleting it.

5.7 Because we haven’t yet created the partial needed by Listing 5.18, the tests should be red. Confirm that this is the case.

5.8 Create the necessary partial in the layouts directory, paste in the contents, and verify that the tests are now green again.

5.9 As suggested in Section 5.2.2, go through the steps to convert the footer CSS from Listing 5.17 to Listing 5.20 to SCSS by hand.

5.10 Update the layout links to use the helf route from Listing 5.29.

5.11 Revert the changes using Undo.

5.12 In the footer partial, change about_path to contact_path and verify that the tests catch the error.

5.13 It’s convenient to use the full_title helper in the tests by including the Application helper into the test helper, as shown in Listing 5.35. We can then test for the right title using code like Listing 5.36. This is brittle, though, because now any typo in the base title (such as “Ruby on Rails Tutoial”) won’t be caught by the test suite. Fix this problem by writing a direct test of the full_title helper, which involves creating a file to test the application helper and then filling in the code indicated with FILL_IN in Listing 5.37. (Listing 5.37 uses assert_equal <expected>, <actual>, which verifies that the expected result matches the actual value when compared with the == operator.)

5.14 Per Table 5.1, change the route in Listing 5.41 to use signup_path instead of users_new_url.

5.15 The route in the previous exercise doesn’t yet exist, so confirm that the tests are now red. (This is intended to help us get comfortable with the red/green flow of Test Driven Development (TDD, Box 3.3); we’ll get the tests back to green in Section 5.4.2.)

5.16 If you didn’t solve the exercise in Section 5.4.1.1, change the test in Listing 5.41 to use the named route signup_path. Because of the route defined in Listing 5.43, this test should initially be green.

5.17 In order to verify the correctness of the test in the previous exercise, comment out the signup route to get to red, then uncomment to get to green.

5.18 In the integration test from Listing 5.32, add code to visit the signup page using the get method and verify that the resulting page title is correct. Hint: Use the full_title helper as in Listing 5.36.

### Chapter 6

6.1 Rails uses a file called schema.rb in the db/ directory to keep track of the structure of the database (called the schema, hence the filename). Examine your local copy of db/schema.rb and compare its contents to the migration code in Listing 6.2.
```sh
Contents are pretty much identical, same iterations.
```

6.2 Most migrations (including all the ones in this tutorial) are reversible, which means we can “migrate down” and undo them with a single command, called db:rollback: $ rails db:rollback After running this command, examine db/schema.rb to confirm that the rollback was successful. (See Box 3.1 for another technique useful for reversing migrations.) Under the hood, this command executes the drop_table command to remove the users table from the database. The reason this works is that the change method knows that drop_table is the inverse of create_table, which means that the rollback migration can be easily inferred. In the case of an irreversible migration, such as one to remove a database column, it is necessary to define separate up and down methods in place of the single change method. Read about migrations in the Rails Guides for more information.
```sh
schema.rb is now empty
```

6.3 Re-run the migration by executing rails db:migrate again. Confirm that the contents of db/schema.rb have been restored.
```sh
schema.rb content has been restored
```

6.4 In a Rails console, use the technique from Section 4.4.4 to confirm that User.new is of class User and inherits from ApplicationRecord.
```sh
>> User.new.class
=> User(id: integer, name: string, email: string, created_at: datetime, updated_at: datetime)
>> User.new.class.superclass
=> ApplicationRecord(abstract)
```

6.5 Confirm that ApplicationRecord inherits from ActiveRecord::Base.
```sh
>> User.new.class.superclass.superclass
=> ActiveRecord::Base
```

6.6 Confirm that user.name and user.email are of class String.
```sh
>> user.created_at.class
=> ActiveSupport::TimeWithZone
>> user.updated_at.class
=> ActiveSupport::TimeWithZone
```

6.7 Of what class are the created_at and updated_at attributes?
```sh
>> user.created_at.class
=> ActiveSupport::TimeWithZone
>> user.updated_at.class
=> ActiveSupport::TimeWithZone
```

6.8 Find the user by name. Confirm that find_by_name works as well. (You will often encounter this older style of find_by in legacy Rails applications.)
```sh
>> User.find_by(name: "Michael Hartl")
  User Load (0.3ms)  SELECT "users".* FROM "users" WHERE "users"."name" = ? LIMIT ?  [["name", "Michael Hartl"], ["LIMIT", 1]]
=> #<User id: 1, name: "Michael Hartl", email: "mhartl@example.com", created_at: "2019-11-06 20:36:51", updated_at: "2019-11-06 20:36:51", password_digest: [FILTERED]>
>> User.find_by_name ("Michael Hartl")
  User Load (0.2ms)  SELECT "users".* FROM "users" WHERE "users"."name" = ? LIMIT ?  [["name", "Michael Hartl"], ["LIMIT", 1]]
=> #<User id: 1, name: "Michael Hartl", email: "mhartl@example.com", created_at: "2019-11-06 20:36:51", updated_at: "2019-11-06 20:36:51", password_digest: [FILTERED]>
```

6.9 For most practical purposes, User.all acts like an array, but confirm that in fact it’s of class User::ActiveRecord_Relation.
```sh
>> User.all.class
=> User::ActiveRecord_Relation
```

6.10 Confirm that you can find the length of User.all by passing it the length method (Section 4.2.3). Ruby’s ability to manipulate objects based on how they act rather than on their formal class type is called duck typing, based on the aphorism that “If it looks like a duck, and it quacks like a duck, it’s probably a duck.”
```sh
>> User.all.length
  User Load (0.4ms)  SELECT "users".* FROM "users"
=> 3
```

6.11 Update the user’s name using assignment and a call to save.
```sh
>> user.update_attributes(name: "Dude where", email: "dude@email.com")
DEPRECATION WARNING: update_attributes is deprecated and will be removed from Rails 6.1 (please, use update instead) (called from irb_binding at (irb):52)
   (0.1ms)  SAVEPOINT active_record_1
  User Update (0.3ms)  UPDATE "users" SET "email" = ?, "updated_at" = ?, "name" = ? WHERE "users"."id" = ?  [["email", "dude@email.com"], ["updated_at", "2019-11-06 17:17:56.864729"], ["name", "Dude where"], ["id", 1]]
   (0.2ms)  RELEASE SAVEPOINT active_record_1
=> true
>> user.name
```

6.12 Update the user’s email address using a call to update_attributes.
```sh
>> user.email = "samso@email.com"
=> "samso@email.com"
```

6.13 Confirm that you can change the magic columns directly by updating the created_at column using assignment and a save. Use the value 1.year.ago, which is a Rails way to create a timestamp one year before the present time.
```sh
>> user.created_at = 1.year.ago
=> Tue, 06 Nov 2018 17:24:34 UTC +00:00
>> user.save
   (0.2ms)  SAVEPOINT active_record_1
  User Update (1.4ms)  UPDATE "users" SET "created_at" = ?, "updated_at" = ? WHERE "users"."id" = ?  [["created_at", "2018-11-06 17:24:34.304272"], ["updated_at", "2019-11-06 17:24:38.607033"], ["id", 1]]
   (0.1ms)  RELEASE SAVEPOINT active_record_1
=> true
>> user.created_at
=> Tue, 06 Nov 2018 17:24:34 UTC +00:00
```

6.14 In the console, confirm that a new user is currently valid.
```sh
>> user = User.new(name: "Sir Grey", email: "sirgrey@email.com")
   (1.1ms)  SELECT sqlite_version(*)
=> #<User id: nil, name: "Sir Grey", email: "sirgrey@email.com", created_at: nil, updated_at: nil>
>> user.valid?
=> true
```

6.15 Confirm that the user created in Section 6.1.3 is also valid.
```sh
>> user = User.new(name: "Michael Hartl", email: "mhartl@example.com")
=> #<User id: nil, name: "Michael Hartl", email: "mhartl@example.com", created_at: nil, updated_at: nil>
>> user.valid?
=> true
```

6.16 Make a new user called u and confirm that it’s initially invalid. What are the full error messages?
```sh
>> u = User.new
=> #<User id: nil, name: nil, email: nil, created_at: nil, updated_at: nil>
>> u.valid?
=> false
```

6.17 Confirm that u.errors.messages is a hash of errors. How would you access just the email errors?
```sh
>> u.errors.messages
=> {:name=>["can't be blank"], :email=>["can't be blank"]}
>> u.errors[:email]
=> ["can't be blank"]
```

6.18 Make a new user with too-long name and email and confirm that it’s not valid.
```sh
>> ben = User.new(name: "b"*55, email: "p"*256)
   (0.7ms)  SELECT sqlite_version(*)
=> #<User id: nil, name: "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb...", email: "pppppppppppppppppppppppppppppppppppppppppppppppppp...", created_at: nil, updated_at: nil>
>> ben.save
=> false
>> ben.valid?
=> false
```

6.19 What are the error messages generated by the length validation?
```sh
=> {:name=>["is too long (maximum is 50 characters)"], :email=>["is too long (maximum is 255 characters)"]}
```


6.20 By pasting in the valid addresses from Listing 6.18 and invalid addresses from Listing 6.19 into the test string area at Rubular, confirm that the regex from Listing 6.21 matches all of the valid addresses and none of the invalid ones.
```sh
Addresses tested, results as expected.
```

6.21 As noted above, the email regex in Listing 6.21 allows invalid email addresses with consecutive dots in the domain name, i.e., addresses of the form foo@bar..com. Add this address to the list of invalid addresses in Listing 6.19 to get a failing test, and then use the more complicated regex shown in Listing 6.23 to get the test to pass.
```sh
Test 1: 6 tests, 11 assertions, 1 failures, 0 errors, 0 skips

Test 2: 6 tests, 11 assertions, 0 failures, 0 errors, 0 skips
```

6.22 Add foo@bar..com to the list of addresses at Rubular, and confirm that the regex shown in Listing 6.23 matches all the valid addresses and none of the invalid ones.
```sh
Results matched
```

6.23 Add a test for the email downcasing from Listing 6.32, as shown in Listing 6.33. This test uses the reload method for reloading a value from the database and the assert_equal method for testing equality. To verify that Listing 6.33 tests the right thing, comment out the before_save line to get to red, then uncomment it to get to green.
```sh
Test added, confirmed to be red after commenting the "before_save" line: 15 tests, 30 assertions, 1 failures, 0 errors, 0 skips
```

6.24 Confirm that a user with valid name and email still isn’t valid overall.
```sh
Changed test user to @user = User.new(name: "Example User", email: "user@example.com",password: "", password_confirmation: "")

Tests are now red
13 tests, 20 assertions, 1 failures, 1 errors, 0 skips
```

6.25 What are the error messages for a user with no password?
```sh
"=> ["Password can't be blank"]"
```

6.26 Quit and restart the console, and then find the user created in this section.
```sh
User found

6.27 Try changing the name by assigning a new name and calling save. Why didn’t it work?

>> user.errors.full_messages

=> ["Password can't be blank", "Password is too short (minimum is 6 characters)"]
```

6.28 Update user’s name to use your name. Hint: The necessary technique is covered in Section 6.1.5.
```sh
Updated using user.update_attributes
```

### Chapter 7

7.1 Visit /about in your browser and use the debug information to determine the controller and action of the params hash.
```sh
--- !ruby/object:ActionController::Parameters
parameters: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
  controller: static_pages
  action: home
permitted: false
```

7.2 In the Rails console, pull the first user out of the database and assign it to the variable user. What is the output of puts user.attributes.to_yaml? Compare this to using the y method via y user.attributes.
```sh
>> user = User.first
  User Load (0.8ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> #<User id: 1, name: "Michael Hartl", email: "mhartl@example.com", created_at: "2019-11-08 15:52:02", updated_at: "2019-11-08 15:52:02", password_digest: nil>
>> puts user.attributes.to_yaml
---
id: 1
name: Michael Hartl
email: mhartl@example.com
created_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: &1 2019-11-08 15:52:02.677145000 Z
  zone: &2 !ruby/object:ActiveSupport::TimeZone
    name: Etc/UTC
  time: *1
updated_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: &3 2019-11-08 15:52:02.677145000 Z
  zone: *2
  time: *3
password_digest:
=> nil
>> y user.attributes
---
id: 1
name: Michael Hartl
email: mhartl@example.com
created_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: &1 2019-11-08 15:52:02.677145000 Z
  zone: &2 !ruby/object:ActiveSupport::TimeZone
    name: Etc/UTC
  time: *1
updated_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: &3 2019-11-08 15:52:02.677145000 Z
  zone: *2
  time: *3
password_digest:
=> nil
>>
```

7.3 Using embedded Ruby, add the created_at and updated_at “magic column” attributes to the user show page from Listing 7.4.
```sh
<%= @user.email %></p>
<%= @user.name %></p>
Created At: <%= @user.created_at %>
Updated At: <%= @user.updated_at %>
```

7.4 Using embedded Ruby, add Time.now to the user show page. What happens when you refresh the browser?
```sh
<%= @user.email %></p>
<%= @user.name %></p>
Created At: <%= @user.created_at %>
Updated At: <%= @user.updated_at %>
Time Now: <%= Time.now %>
```

7.5 With the debugger in the show action as in Listing 7.6, hit /users/1. Use puts to display the value of the YAML form of the params hash. Hint: Refer to the relevant exercise in Section 7.1.1.1. How does it compare to the debug information shown by the debug method in the site template?
```sh
Put the debugger in the User new action and hit /users/new. What is the value of @user?
```

7.6 Put the debugger in the User new action and hit /users/new. What is the value of @user?
```sh
nil
```

7.7 Associate a Gravatar with your primary email address if you haven’t already. What is the MD5 hash associated with the image?
```sh
"$2a$12$ajuKX59FotDBUmIatO.Tg.bd1Z/pcR5xnuZ2myeiShmJEE/MldrsO"
```


7.8 Verify that the code in Listing 7.12 allows the gravatar_for helper defined in Section 7.1.4 to take an optional size parameter, allowing code like gravatar_for user, size: 50 in the view. (We’ll put this improved helper to use in Section 10.3.1.)
```sh
Done
```

7.9 The options hash used in the previous exercise is still commonly used, but as of Ruby 2.0 we can use keyword arguments instead. Confirm that the code in Listing 7.13 can be used in place of Listing 7.12. What are the diffs between the two?
```sh
Code tested. Main difference is the size in listing 7.13 is passed as an argument, and on listing 7.12 the size is saved in a hash called "options"
```

7.9 In Listing 7.15, replace :name with :nome. What error message do you get as a result?
```sh
undefined method `n0me' for #<User:0x00007fafe8603368>
Did you mean?  name
```

7.10 Confirm by replacing all occurrences of f with foobar that the name of the block variable is irrelevant as far as the result is concerned. Why might foobar nevertheless be a bad choice?
```sh
Code still works after replacing every "f" with "foobar". It is a bad choice because the word "foobar" haves no relation to what the variable is used for.
```

7.11 Learn Enough HTML to Be Dangerous, in which all HTML is written by hand, doesn’t cover the form tag. Why not?
```sh
Because form is not a native HTML tag.
```

7.12 By hitting the URL /signup?admin=1, confirm that the admin attribute appears in the params debug information.
```sh
--- !ruby/object:ActionController::Parameters
parameters: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
  admin: '1'
  controller: users
  action: new
permitted: false
```

7.13 Confirm by changing the minimum length of passwords to 5 that the error message updates automatically as well.
```sh
Name can't be blank
Email can't be blank
Email is invalid
Password can't be blank
Password can't be blank
Password is too short (minimum is 5 characters)
```

7.14 How does the URL on the unsubmitted signup form (Figure 7.12) compare to the URL for a submitted signup form (Figure 7.18)? Why don’t they match?
```sh
The first url is signup and the second one is users. Because you're redirected to the users page after signing up.
```

7.15 Write a test for the error messages implemented in Listing 7.20. How detailed you want to make your tests is up to you; a suggested template appears in Listing 7.25.
```sh
class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name:  "",
                                         email: "user@invalid",
                                         password:              "foo",
                                         password_confirmation: "bar" } }
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'
    assert_select 'div.alert.alert-danger'
    assert_select "li", "Name can't be blank"
    assert_select "li", "Email is invalid"
    assert_select "li", "Password confirmation doesn't match Password"
  end
```


7.16 The URLs for an unsubmitted signup form and for a submitted signup form are /signup and /users, respectively, which don’t match. This is due to our use of a custom named route in the former case (added in Listing 5.43) and a default RESTful route in the latter case (Listing 7.3). Resolve this discrepancy by adding the code shown in Listing 7.26 and Listing 7.27. Submit the new form to confirm that both cases now use the same /signup URL. Are the tests still green? Why?
```sh
The tests are still green because pointing post /signup to users#create just create another route for the same path and it does not invalidate the use of post /users to trigger the users#create action.
```


7.17 Update the post in Listing 7.25 to use the new URL from the previous exercise. Confirm that the tests are still green.
```sh
post signup_path, params: { user: { name:  "",
                                         email: "user@invalid",
                                         password:              "foo",
                                         password_confirmation: "bar" } }

Tests still green
```


7.18 Confirm by reverting Listing 7.27 to its previous form (Listing 7.20) that the tests are still green. This is a problem, because the URL being posted to isn’t right. Add an assert_select to the test in Listing 7.25 to catch this bug and get to red, then change the form back to Listing 7.27 to get the tests green again. Hint: Test for the presence of 'form[action="/signup"]' before posting to the form in the test.
```sh
Green
```

7.19 Using the Rails console, verify that a user is in fact created when submitting valid information.
```sh
>> User.all
   (0.7ms)  SELECT sqlite_version(*)
  User Load (0.3ms)  SELECT "users".* FROM "users" LIMIT ?  [["LIMIT", 11]]
=> #<ActiveRecord::Relation [#<User id: 1, name: "Semy Velu", email: "samyvelu@railstutorial.org", created_at: "2019-11-08 15:52:02", updated_at: "2019-11-08 20:19:53", password_digest: [FILTERED]>, #<User id: 2, name: "A Nother", email: "another@example.org", created_at: "2019-11-08 15:52:45", updated_at: "2019-11-08 15:52:45", password_digest: nil>, #<User id: 4, name: "hacker noon", email: "hello@hacker.noon", created_at: "2019-11-08 22:22:05", updated_at: "2019-11-08 22:22:05", password_digest: [FILTERED]>]>
>>
```

7.20 Confirm by updating Listing 7.28 and submitting a valid user that redirect_to user_url(@user) has the same effect as redirect_to @user.
```sh
Putting redirect_to user_url(@user) in the create action, after checking if @user.save is true, redirects to the user show page, exactly in the same way as redirect to @user.
```

7.21 In the console, confirm that you can use interpolation (Section 4.2.2) to interpolate a raw symbol. For example, what is the return value of "#{:success}"?
```sh
> "#{:success}"
 => "success" 
```

7.22 How does the previous exercise relate to the flash iteration shown in Listing 7.30?
```sh
The div that contains the flash messages could be rewritten like this

<div class="<%= "alert alert-#{message_type}" %>"></div>
```

7.23 Using the Rails console, find by the email address to double-check that the new user was actually created. The result should look something like Listing 7.32.
```sh
>> User.all
   (2.0ms)  SELECT sqlite_version(*)
  User Load (0.8ms)  SELECT "users".* FROM "users" LIMIT ?  [["LIMIT", 11]]
=> #<ActiveRecord::Relation [#<User id: 1, name: "Exemplify Simple", email: "examplify@email.com", created_at: "2019-11-09 19:41:40", updated_at: "2019-11-09 19:41:40", password_digest: [FILTERED]>]>
>>
```

7.24 Create a new user with your primary email address. Verify that the Gravatar correctly appears.
```sh
Yes!
```

7.25 Write a test for the flash implemented in Section 7.4.2. How detailed you want to make your tests is up to you; a suggested ultra-minimalist template appears in Listing 7.34, which you should complete by replacing FILL_IN with the appropriate code. (Even testing for the right key, much less the text, is likely to be brittle, so I prefer to test only that the flash isn’t empty.)
```sh
require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name:  "Example User",
                                         email: "user@example.com",
                                         password:              "password",
                                         password_confirmation: "password" } }
    end
    follow_redirect!
    assert_template 'users/show'
    assert_not flash.empty?
  end
end

assert_not flash.empty?

# Running:

..

Finished in 1.410283s, 1.4182 runs/s, 7.0908 assertions/s.
2 runs, 10 assertions, 0 failures, 0 errors, 0 skips
```

7.26 As noted above, the flash HTML in Listing 7.31 is ugly. Verify by running the test suite that the cleaner code in Listing 7.35, which uses the Rails content_tag helper, also works.
```sh
<% flash.each do |message_type, message| %>
   <%= content_tag(:div, message, class: "alert alert-#{message_type}") %>
<% end %>

Run options: --seed 41520

# Running:

..................

Finished in 2.063404s, 8.7234 runs/s, 16.9623 assertions/s.
18 runs, 35 assertions, 0 failures, 0 errors, 0 skips
```

7.27 Verify that the test fails if you comment out the redirect line in Listing 7.28.
```sh
def create
  	@user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
   >> #redirect_to user_url(@user)
    else
      render 'new'
    end
  end

# Running:

................E

Error:
UsersSignupTest#test_valid_signup_information:
RuntimeError: not a redirect! 204 No Content
    test/integration/users_signup_test.rb:13:in `block in <class:UsersSignupTest>'


rails test test/integration/users_signup_test.rb:5

.

Finished in 2.060987s, 8.7337 runs/s, 16.0117 assertions/s.
18 runs, 33 assertions, 0 failures, 1 errors, 0 skips
```

7.28 Suppose we changed @user.save to false in Listing 7.28. How does this change verify that the assert_difference block is testing the right thing?
```sh
If @user.save was false, the validations are catching wrong user information that is trying to be saved, and we could be sure of this by noting that the User.count it not one more than it was before
```

7.29 Confirm on your browser that the SSL lock and https appear.
```sh
Confirmed the browser is showing the SSL lock.
```

7.30 Create a user on the production site using your primary email address. Does your Gravatar appear correctly?
```sh
User created, gravatar is shown correctly
```

### Chapter 8

8.1 What is the difference between GET login_path and POST login_path?
```sh
The GET login_path is used to render the view for the login form, and the POST login_path is used to send a post request when the user submits the login form, creating a new session
```

8.2 By piping the results of rails routes to grep, list all the routes associated with the Users resource. Do the same for Sessions. How many routes does each resource have? Hint: Refer to the section on grep in Learn Enough Command Line to Be Dangerous.
```sh
$ rails routes | grep 'users#'
   signup GET    /signup(.:format)         users#new
          POST   /signup(.:format)         users#create
    users GET    /users(.:format)          users#index
          POST   /users(.:format)          users#create
 new_user GET    /users/new(.:format)      users#new
edit_user GET    /users/:id/edit(.:format) users#edit
     user GET    /users/:id(.:format)      users#show
          PATCH  /users/:id(.:format)      users#update
          PUT    /users/:id(.:format)      users#update
          DELETE /users/:id(.:format)      users#destroy

$ rails routes | grep 'sessions#'
    login GET    /login(.:format)          sessions#new
          POST   /login(.:format)          sessions#create
   logout DELETE /logout(.:format)         sessions#destroy

$ rails routes | grep 'users#' | wc -l
10

$ rails routes | grep 'sessions#' | wc -l
3
```

8.3 Submissions from the form defined in Listing 8.4 will be routed to the Session controller’s create action. How does Rails know to do this? Hint: Refer to Table 8.1 and the first line of Listing 8.5.
```sh
Because in the form_for we defined the key url: and the value login_path to the hash, causing the URL to be posting to /login. And in the routes file we defined that the post to /login is routed to the create action in the sessions controller.
````

8.4 Using the Rails console, confirm each of the values in Table 8.2. Start with user = nil, and then use user = User.first. Hint: To coerce the result to a boolean value, use the bang-bang trick from Section 4.2.3, as in !!(user && user.authenticate('foobar')).
```sh
>> user = nil
=> nil
>> !!(user && user.authenticate('buzzword'))
=> false
>>
>> user = User.first
  User Load (0.5ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> #<User id: 1, name: "Batman Robin", email: "batman@email.com", created_at: "2019-11-12 22:16:04", updated_at: "2019-11-12 22:16:04", password_digest: [FILTERED]>
>> !!(user && user.authenticate('buzzword'))
=> true
>> !!(user && user.authenticate('buzzwor'))
=> false
```

8.5 Verify in your browser that the sequence from Section 8.1.4 works correctly, i.e., that the flash message disappears when you click on a second page.
```sh
Yes, message disappears
```

8.6 Log in with a valid user and inspect your browser’s cookies. What is the value of the session content? Hint: If you don’t know how to view your browser’s cookies, Google for it (Box 1.1).
```sh

Found on the developers panel inside the Application pane.

%2BOlS3KHgxI2S1eZZfOpJ0zguFLBdTuK1kLPJ%2BlFUzwqlKYvIgln3k3QkIYh%2BxzVqgF%2BsC5WDbLJ9xDHzkfoehZ6aK0OQ0yYYfgmYGuggZ4pkZOdVXY%2FeAQcMMXJ%2FlihCcdvDMT%2FjmFis5QO%2B1P%2BXhYxAqmcmY4%2FMW%2BfP7%2BqrWfP%2F%2FRtUn78FY0fzPXQGzLQmVIN7z6DWRA6aLS0I3OXshfp22d%2B6JYNmvdS5J0TbM0E9Q8tpfJrHoVqxTWgSJlesLHLyuBwGh%2B12VQHlAehxmtosAVADbUnjUOtumzrsjJcHWAtEgbjCzOwnvNc%3D--UQ1EQ%2BEU8GeC5WkX--UO3Irryv4t0obxIgy7X1tw%3D%3D
```

8.7 What is the value of the Expires attribute from the previous exercise?
```sh
Session expires on closure
```

8.8 Confirm at the console that User.find_by(id: ...) returns nil when the corresponding user doesn’t exist.
```sh
>> User.find_by(id: 99 )
  User Load (0.5ms)  SELECT "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 99], ["LIMIT", 1]]
=> nil
```

8.9 In a Rails console, create a session hash with key :user_id. By following the steps in Listing 8.17, confirm that the ||= operator works as required.
```sh

>> session= {}
=> {}

>> session[:user_id] = nil
=> nil

>> @current_user ||= User.find_by(id: session[:user_id])
  User Load (0.6ms)  SELECT "users".* FROM "users" WHERE "users"."id" IS NULL LIMIT ?  [["LIMIT", 1]]
=> nil

>> session[:user_id]= User.first.id
  User Load (0.4ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> 1

>> @current_user ||= User.find_by(id: session[:user_id])
  User Load (0.4ms)  SELECT "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
=> #<User id: 1, name: "Batman Robin", email: "batman@email.com", created_at: "2019-11-12 22:16:04", updated_at: "2019-11-12 22:16:04", password_digest: [FILTERED]>

>> @current_user ||= User.find_by(id: session[:user_id])
=> #<User id: 1, name: "Batman Robin", email: "batman@email.com", created_at: "2019-11-12 22:16:04", updated_at: "2019-11-12 22:16:04", password_digest: [FILTERED]>

```

8.10 Using the cookie inspector in your browser (Section 8.2.1.1), remove the session cookie and confirm that the layout links revert to the non-logged-in state.
```sh
After deleting the cookies, the "Account" menu is gone, and is replaced by the "Log in" button.
```

8.11 Log in again, confirming that the layout links change correctly. Then quit your browser and start it again to confirm that the layout links revert to the non-logged-in state. (If your browser has a “remember where I left off” feature that automatically restores the session, be sure to disable it in this step (Box 1.1).)
```sh
Yes, page reverts back to non-logged in state
```

8.12 Delete the bang ! in the Session helper’s logged_in? method and confirm that the test in Listing 8.23 is red.
```sh

app/helpers/sessions_helper.rb

def logged_in?
    current_user.nil?
end


rails test test/integration/users_login_test.rb
# Running:

E

Error:
UsersLoginTest#test_login_with_valid_information:
ActionView::Template::Error: undefined method `logged_in?' for #<#<Class:0x00007ffff2ba1dd8>:0x00007ffff2d1a570>
Did you mean?  log_in
    app/views/layouts/_header.html.erb:8
    app/views/layouts/application.html.erb:9
    test/integration/users_login_test.rb:10:in `block in <class:UsersLoginTest>'


rails test test/integration/users_login_test.rb:9



Finished in 1.522715s, 0.6567 runs/s, 0.0000 assertions/s.
1 runs, 0 assertions, 0 failures, 1 errors, 0 skips
```

8.13 Restore the ! to get back to green.
```sh
def logged_in?
    current_user.nil?
end

app/helpers/sessions_helper.rb

rails test test/integration/users_login_test.rb

# Running:

.

Finished in 1.776740s, 0.5628 runs/s, 3.3770 assertions/s.
1 runs, 6 assertions, 0 failures, 0 errors, 0 skips
```

8.14 s the test suite red or green if you comment out the log_in line in Listing 8.25?
```sh
def logged_in?
    current_user.nil?
end

app/helpers/sessions_helper.rb

rails test test/integration/users_login_test.rb

Run options: --seed 45848

# Running:

.

Finished in 136.614150s, 0.0073 runs/s, 0.0439 assertions/s.
1 runs, 6 assertions, 0 failures, 0 errors, 0 skips
```

8.15 By using your text editor’s ability to comment out code, toggle back and forth between commenting out code in Listing 8.25?
```sh
rails test

Run options: --seed 33546

# Running:

.................F

Failure:
UsersSignupTest#test_valid_signup_information [/mnt/d/google_drive/microverse/4.rails/2.lets_get_building/sample-app/test/integration/users_signup_test.rb:15]:
Expected false to be truthy.


rails test test/integration/users_signup_test.rb:5

..

Finished in 2.313372s, 8.6454 runs/s, 18.1553 assertions/s.
20 runs, 42 assertions, 1 failures, 0 errors, 0 skips
```

8.16 By using your text editor’s ability to comment out code, toggle back and forth between commenting out code in Listing 8.25 and confirm that the test suite toggles between red and green. (You will need to save the file between toggles.)
```sh 
It's confirmed that if we comment out that log_in line the tests will be red, and if we leave it there without commenting, the tests will be green.
```

8.17 Confirm in a browser that the “Log out” link causes the correct changes in the site layout. What is the correspondence between these changes and the final three steps in Listing 8.31?
```sh
Verified that the logout link works as expected. Once the redirect happens, the Account drop-down is replaced by the Log in link, which is what gets asserted in the last three lines of the test.
```

8.18 By checking the site cookies, confirm that the session is correctly removed after logging out.
```sh
The session is correctly removed after the log out action
```

### Chapter 9

9.1 In the console, assign user to the first user in the database, and verify by calling it directly that the remember method works. How do remember_token and remember_digest compare?
```sh
>> user =  User.first
  User Load (0.3ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> #<User id: 1, name: "batman", email: "batman@email.com", created_at: "2019-11-13 20:32:28", updated_at: "2019-11-13 20:32:28", password_digest: [FILTERED], remember_digest: nil>
>> user.remember
   (0.1ms)  begin transaction
  User Update (2.6ms)  UPDATE "users" SET "updated_at" = ?, "remember_digest" = ? WHERE "users"."id" = ?  [["updated_at", "2019-11-13 20:33:41.383925"], ["remember_digest", "$2a$12$WCpcXtpJTEYdb9NhDBn29.m4RFaHSHWVm.8oKJ1EKnqq9/QWoxoli"], ["id", 1]]
   (2.9ms)  commit transaction
=> true
>> user.remember_token
=> "8QMXQIgj3efvxBvvvf6ZrA"
>> user.remember_digest
=> "$2a$12$WCpcXtpJTEYdb9NhDBn29.m4RFaHSHWVm.8oKJ1EKnqq9/QWoxoli"

Digest has longer hash
```

9.2 In Listing 9.3, we defined the new token and digest class methods by explicitly prefixing them with User. This works fine and, because they are actually called using User.new_token and User.digest, it is probably the clearest way to define them. But there are two perhaps more idiomatically correct ways to define class methods, one slightly confusing and one extremely confusing. By running the test suite, verify that the implementations in Listing 9.4 (slightly confusing) and Listing 9.5 (extremely confusing) are correct. (Note that, in the context of Listing 9.4 and Listing 9.5, self is the User class, whereas the other uses of self in the User model refer to a user object instance. This is part of what makes them confusing.)
```sh
Rails test for both tested successfully
```

9.3 By finding the cookie in your local browser, verify that a remember token and encrypted user id are present after logging in.
```sh
Yes, its there
```

9.4 At the console, verify directly that the authenticated? method defined in Listing 9.6 works correctly.
```sh
>> user = User.first
   (0.8ms)  SELECT sqlite_version(*)
  User Load (0.5ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> #<User id: 1, name: "batman", email: "batman@email.com", created_at: "2019-11-13 20:32:28", updated_at: "2019-11-13 22:00:07", password_digest: [FILTERED], remember_digest: "$2a$12$DBU3ZAg7DPIUlMyNaGJnnu4d8t.UjiafbwHK5IGUJ7F...">
>>
>> user.authenticated?('no token')
=> false
>>
>> user.remember
   (0.1ms)  begin transaction
  User Update (296.9ms)  UPDATE "users" SET "updated_at" = ?, "remember_digest" = ? WHERE "users"."id" = ?  [["updated_at", "2019-11-13 22:03:52.721472"], ["remember_digest", "$2a$12$5Jwjq5N2Aelm0IrU/0L4x.K3OGIWIhpFscSdTuOKD53NmqDgWIOxa"], ["id", 1]]
   (3.3ms)  commit transaction
=> true
>>
>> user.authenticated?(user.remember_token)
=> true
```

9.5 After logging out, verify that the corresponding cookies have been removed from your browser.
```sh
Cookie disappears after logging out
```

9.6 Comment out the fix in Listing 9.16 and then verify that the first subtle bug is present by opening two logged-in tabs, logging out in one, and then clicking “Log out” link in the other.
```sh
Pages still appears to be logged in after being logged out
```

9.7 Comment out the fix in Listing 9.19 and verify that the second subtle bug is present by logging out in one browser and closing and opening the second browser.
```sh
Still logged in on second browser
```

9.8 Uncomment the fixes and confirm that the test suite goes from red to green.
```sh
rails test

# Running:

.....................

Finished in 1.422743s, 14.7602 runs/s, 34.4405 assertions/s.
21 runs, 49 assertions, 0 failures, 0 errors, 0 skips
```

9.9 By inspecting your browser’s cookies directly, verify that the “remember me” checkbox is having its intended effect.
```sh
The checkbox is working and it saves the remember_token and the user_id in the session cookies for 20 years
```

9.10 At the console, invent examples showing both possible behaviors of the ternary operator (Box 9.2).
```sh
>> User.name == 'batwoman' ? 'yes' : 'no'
=> "no"
>> User.name != 'batwoman' ? 'yes' : 'no'
=> "yes"
>>
```

9.11 As mentioned above, the application currently doesn’t have any way to access the virtual remember_token attribute in the integration test in Listing 9.25. It is possible, though, using a special test method called assigns. Inside a test, you can access instance variables defined in the controller by using assigns with the corresponding symbol. For example, if the create action defines an @user variable, we can access it in the test using assigns(:user). Right now, the Sessions controller create action defines a normal (non-instance) variable called user, but if we change it to an instance variable we can test that cookies correctly contains the user’s remember token. By filling in the missing elements in Listing 9.27 and Listing 9.28 (indicated with question marks ? and FILL_IN), complete this improved test of the “remember me” checkbox.
```sh

app/controllers/sessions_controller.rb

.
.
.
def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in @user
      params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
      # remember user
      redirect_to @user
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end
.
.
.

test/integration/users_login_test.rb

.
.
.
  test "login with remembering" do
    log_in_as(@user, remember_me: '1')
    assert_equal cookies['remember_token'], assigns(:user).remember_token
  end
.
.
.

rails test
Run options: --seed 14146

# Running:

.........................
Finished in 1.939977s, 12.8868 runs/s, 28.3509 assertions/s.
25 runs, 55 assertions, 0 failures, 0 errors, 0 ski
```

9.12 Verify by removing the authenticated? expression in Listing 9.33 that the second test in Listing 9.31 fails, thereby confirming that it tests the right thing.
```sh
rails test

Running via Spring preloader in process 1052
Run options: --seed 51566

# Running:

E

Error:
SessionsHelperTest#test_current_user_returns_right_user_when_session_is_nil:
NoMethodError: undefined method `user' for #<SessionsHelperTest:0x00007fb90c4fb1a0>
    app/helpers/sessions_helper.rb:20:in `current_user'
    test/helpers/sessions_helper_test.rb:11:in `block in <class:SessionsHelperTest>'


rails test test/helpers/sessions_helper_test.rb:10

E

Error:
SessionsHelperTest#test_current_user_returns_nil_when_remember_digest_is_wrong:
NoMethodError: undefined method `user' for #<SessionsHelperTest:0x00007fb90c5501c8>
    app/helpers/sessions_helper.rb:20:in `current_user'
    test/helpers/sessions_helper_test.rb:17:in `block in <class:SessionsHelperTest>'


rails test test/helpers/sessions_helper_test.rb:15

.......................

Finished in 1.635543s, 15.2854 runs/s, 31.7937 assertions/s.
25 runs, 52 assertions, 0 failures, 2 errors, 0 skips

When removing the authenticated? from the line, the second test fails

```

### Chapter 10 exercise

10.1 As noted above, there’s a minor security issue associated with using target="_blank" to open URLs, which is that the target site gains control of what’s known as the “window object” associated with the HTML document. The result is that the target site could potentially introduce malicious content, such as a phishing page. This is extremely unlikely to happen when linking to a reputable site like Gravatar, but it turns out that we can eliminate the risk entirely by setting the rel attribute (“relationship”) to "noopener" in the origin link. Add this attribute to the Gravatar edit link in Listing 10.2.
```sh
<a href="http://gravatar.com/emails" target="_blank" rel="noopener">change</a>
```

10.2 Remove the duplicated form code by refactoring the new.html.erb and edit.html.erb views to use the partial in Listing 10.5, as shown in Listing 10.6 and Listing 10.7. Note the use of the provide method, which we used before in Section 3.4.3 to eliminate duplication in the layout.3 (If you solved the exercise corresponding to Listing 7.27, this exercise won’t work exactly as written, and you’ll have to apply your technical sophistication to resolve the discrepancy. My suggestion is to use the variable-passing technique shown in Listing 10.5 to pass the needed URL from Listing 10.6 and Listing 10.7 to the form in Listing 10.5.)
```sh
new.html.erb
<% provide(:title, 'Sign up') %>
<% provide(:button_text, 'Create my account') %>
<h1>Sign up</h1>
<div class="row">
  <div class="col-md-6 col-md-offset-3">
    <%= render 'form', object: @user %>
  </div>
</div>

edit.html.erb
<% provide(:title, 'Edit user') %>
<% provide(:button_text, 'Save changes') %>
<h1>Update your profile</h1>
<div class="row">
  <div class="col-md-6 col-md-offset-3">
    <%= render 'form', object: @user %>
    <div class="gravatar_edit">
      <%= gravatar_for @user %>
      <a href="http://gravatar.com/emails" target="_blank" rel="noopener">change</a>
    </div>
  </div>
</div>
```

10.3 Confirm by submitting various invalid combinations of username, email, and password that the edit form won’t accept invalid submissions.
```sh
It is confirmed that by submitting wrong values, the form doesn't accept them.
```

10.4 Add a line in Listing 10.9 to test for the correct number of error messages. Hint: Use an assert_select (Table 5.2) that tests for a div with class alert containing the text “The form contains 4 errors.”
```sh
assert_select "div.alert", text: "The form contains 4 errors."
```

10.5 Double-check that you can now make edits by making a few changes on the development version of the application.
```sh
Edit works fine
```

10.6 What happens when you change the email address to one without an associated Gravatar?
```sh
Image is still default
```

10.7 As noted above, by default before filters apply to every action in a controller, which in our cases is an error (requiring, e.g., that users log in to hit the signup page, which is absurd). By commenting out the only: hash in Listing 10.15, confirm that the test suite catches this error.
```sh
rails test

Failure:
UsersControllerTest#test_should_redirect_update_when_not_logged_in [/mnt/d/google_drive/microverse/4.rails/2.lets_get_building/sample-app/test/controllers/users_controller_test.rb:24]:
Expected response to be a redirect to <http://www.example.com/login> but was a redirect to <http://www.example.com/users/762146111>.
Expected "http://www.example.com/login" to be === "http://www.example.com/users/762146111".

Failure:
UsersControllerTest#test_should_redirect_edit_when_not_logged_in [/mnt/d/google_drive/microverse/4.rails/2.lets_get_building/sample-app/test/controllers/users_controller_test.rb:16]:
Expected true to be nil or false

```

10.8 Why is it important to protect both the edit and update actions?
```sh
To avoid conflicts and prevent unwanted users to edit information that doesn't belongs to them.
```


10.9 Which action could you more easily test in a browser?
```sh
Edit action? If it doesn't works, the edit form will never be displayed correctly. 

```

10.10 Write a test to make sure that friendly forwarding only forwards to the given URL the first time. On subsequent login attempts, the forwarding URL should revert to the default (i.e., the profile page). Hint: Add to the test in Listing 10.29 by checking for the right value of session[:forwarding_url].
```sh
Tested successful!

test "successful edit with friendly forwarding" do
    get edit_user_path(@user)
    log_in_as(@user)
    assert_redirected_to edit_user_url(@user)
    name  = "Foo Bar"
    email = "foo@bar.com"
    patch user_path(@user), params: { user: { name:  name,
                                              email: email,
                                              password:              "",
                                              password_confirmation: "" } }
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal name,  @user.name
    assert_equal email, @user.email
    log_in_as(@user)
    assert_redirected_to user_url(@user)
```

10.11 Put a debugger (Section 7.1.3) in the Sessions controller’s new action, then log out and try to visit /users/1/edit. Confirm in the debugger that the value of session[:forwarding_url] is correct. What is the value of request.get? for the new action? (Sometimes the terminal can freeze up or act strangely when you’re using the debugger; use your technical sophistication (Box 1.1) to resolve any issues.)
```sh
#sample_app/app/controllers/sessions_controller.rb

session[:forwarding_url] -> "http://0.0.0.0:3000/users/1/edit"

    1: class SessionsController < ApplicationController
    2:   def new
    3:     debugger
=>  4:   end
    5:
    6:   def create
    7:     @user = User.find_by(email: params[:session][:email].downcase)
    8:     if @user && @user.authenticate(params[:session][:password])
    9:       # Log the user in and redirect to the user's show page.
   10:       log_in @user
(byebug) request.get?
true
```

10.12 We’ve now filled in all the links in the site layout. Write an integration test for all the layout links, including the proper behavior for logged-in and non-logged-in users. Hint: Use the log_in_as helper and add to the steps shown in Listing 5.32
```sh
# \sample-app\test\integration\site_layout_test.rb

require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout_links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", signup_path

    get contact_path
    assert_select "title", full_title("Contact")

    @user = users(:archer)
    log_in_as(@user)
    
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", users_path
    assert_select "a[href=?]", user_path(@user)
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", signup_path

    get users_path
    assert_select "title", full_title("All users")

    get signup_path
    assert_select "title", full_title("Sign up")
  end
end
```

10.13  Verify that trying to visit the edit page of another user results in a redirect as required by Section 10.2.2.
```sh
Trying to access another user's edit page redirects us back to the root page.
```

10.14 Confirm at the console that setting the page to nil pulls out the first page of users.
```sh
Confirmed!

>> User.paginate(page: nil)
   (0.6ms)  SELECT sqlite_version(*)
  User Load (0.4ms)  SELECT "users".* FROM "users" LIMIT ? OFFSET ?  [["LIMIT", 11], ["OFFSET", 0]]
   (0.3ms)  SELECT COUNT(*) FROM "users"
=> #<ActiveRecord::Relation [#<User id: 1, name: "Example User", email: "example@railstutorial.org", created_at: "2019-11-14 20:08:47", updated_at: "2019-11-14 20:08:47", password_digest: [FILTERED], remember_digest: nil>, #<User id: 2, name: "Johanna Brakus", email: "example-1@railstutorial.org", created_at: "2019-11-14 20:08:47", updated_at: "2019-11-14 20:08:47", password_digest: [FILTERED], remember_digest: nil>, #<User id: 3, name: "Josefina Schumm", email: "example-2@railstutorial.org", created_at: "2019-11-14 20:08:48", updated_at: "2019-11-14 20:08:48", password_digest: [FILTERED], remember_digest: nil>, #<User id: 4, name: "Pinkie Rippin", email: "example-3@railstutorial.org", created_at: "2019-11-14 20:08:48", updated_at: "2019-11-14 20:08:48", password_digest: [FILTERED], remember_digest: nil>, #<User id: 5, name: "Jessie Friesen", email: "example-4@railstutorial.org", created_at: "2019-11-14 20:08:48", updated_at: "2019-11-14 20:08:48", password_digest: [FILTERED], remember_digest: nil>, #<User id: 6, name: "Dr. Kristy Gerhold", email: "example-5@railstutorial.org", created_at: "2019-11-14 20:08:48", updated_at: "2019-11-14 20:08:48", password_digest: [FILTERED], remember_digest: nil>, #<User id: 7, name: "Derick Champlin", email: "example-6@railstutorial.org", created_at: "2019-11-14 20:08:49", updated_at: "2019-11-14 20:08:49", password_digest: [FILTERED], remember_digest: nil>, #<User id: 8, name: "Una McCullough", email: "example-7@railstutorial.org", created_at: "2019-11-14 20:08:49", updated_at: "2019-11-14 20:08:49", password_digest: [FILTERED], remember_digest: nil>, #<User id: 9, name: "Noemy Lehner", email: "example-8@railstutorial.org", created_at: "2019-11-14 20:08:49", updated_at: "2019-11-14 20:08:49", password_digest: [FILTERED], remember_digest: nil>, #<User id: 10, name: "Dorothy Auer", email: "example-9@railstutorial.org", created_at: "2019-11-14 20:08:49", updated_at: "2019-11-14 20:08:49", password_digest: [FILTERED], remember_digest: nil>, ...]>
```

10.15  What is the Ruby class of the pagination object? How does it compare to the class of User.all?
```sh
> User.paginate(page: nil).class
 => User::ActiveRecord_Relation

> User.all.class
 => User::ActiveRecord_Relation

Both of them have the same father class
```

10.16 By commenting out the pagination links in Listing 10.45, confirm that the test in Listing 10.48 goes red.
```sh
rails test

Failure:
UsersIndexTest#test_index_including_pagination [/mnt/d/google_drive/microverse/4.rails/2.lets_get_building/sample-app/test/integration/users_index_test.rb:13]:
Expected at least 1 element matching "div.pagination", found 0..
Expected 0 to be >= 1.
```

10.17 Confirm that commenting out only one of the calls to will_paginate leaves the tests green. How would you test for the presence of both sets of will_paginate links? Hint: Use a count from Table 5.2.
```sh
rails test

Run options: --seed 18591

# Running:

.............................

Finished in 2.984382s, 11.3926 runs/s, 41.5496 assertions/s.
34 runs, 124 assertions, 0 failures, 0 errors, 0 skips

assert_select 'div.pagination', count: 2

>> rails test
Failure:
UsersIndexTest#test_index_including_pagination [/Users/felipekosouski/Workspace/Web5/sample-app/test/integration/users_index_test.rb:12]:
Expected exactly 2 elements matching "div.pagination", found 1..
Expected: 2
  Actual: 1
```

10.18 Comment out the render line in Listing 10.52 and confirm that the resulting tests are red.
````sh
Failure:
UsersIndexTest#test_index_including_pagination [/mnt/d/google_drive/microverse/4.rails/2.lets_get_building/sample-app/test/integration/users_index_test.rb:15]:
Expected at least 1 element matching "a[href="/users/14035331"]", found 0..
Expected 0 to be >= 1.

```


