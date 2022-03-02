#@reference https://www.youtube.com/watch?v=t_ispmWmdjY&ab_channel=freeCodeCamp.org


print ""
puts ""
name  = "abby_wewqeggg          erreerh"

# #
var = "variable"
"this is a string with a #{var} in" 
    => "this is a string with a variable in"

# basic stirng 
puts name.length()
puts name[3] #display the 4th character
puts name[0,3]#display 1st 2nd 3rd characters
puts name.index("a") #return the first find index of the string
puts "aaaaa".upcase() #全部大寫
num = 5
puts "I have" +num.to_s  #將數字轉成字串



# number & math 

    puts -5.6345 #that's 
    puts 5 + 9 # get 14 in screen

    #abs #round 
    num = 20 
    puts ("my _ no. = " + num.abs().round())

    #num.ceil()  取上界     num.floor()取下界


# input     -----------get input from the user 
    #gets  這個會把 /n or enter 也當作輸入
    name = gets #store the input from the users

    #gets.chomp()
    name = gets.chomp() #會把input 視作字串 需轉換

# calculator
    # 
    num = gets.chomp()
    puts num.to_i +num.to_i 
        # get integer !! if we input float number will use it floor as src and add
    puts num.to_f +num.to_f

    # gets.chomp().to_f  view input as number 
    puts num+num

#arraytitle   https://ruby-doc.org/core-2.7.0/Array.html#method-i-uniq 
        #https://docs.ruby-lang.org/en/2.0.0/Array.html
    friends = Array["k","aut","RRd"]    puts friends  #每輸出一個element 會有一個 \n 
    
    friends[0] = "123"
    friends[100] = "14" #中間的那些會自動補 空

    friends.include ? "a"  #return flase or true 
    friends = Array.new
    arr = Array.new(3, true) #=> [true, true, true]
    Array.new(4) {Hash.new}    #=> [{}, {}, {}, {}]
    Array.new(4) {|i| i.to_s } #=> ["0", "1", "2", "3"]

    #This is also a quick way to build up multi-dimensional arrays:
        empty_table = Array.new(3) {Array.new(3)}#=> [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
    #An array can also be created by using the Array() method, provided by Kernel, which tries to call to_ary, then to_a on its argument.
        Array({:a => "a", :b => "b"}) #=> [[:a, "a"], [:b, "b"]]

    #arr fun arr = [1, 2, 3, 4, 5, 6]
    arr[-3]   #=> 4
    arr[2, 3] #=> [3, 4, 5]
    arr[1..4] #=> [2, 3, 4, 5]
    arr[1..-3] #=> [2, 3, 4]
    
    arr.at(0) #=> 1
    arr.first #=> 1
    arr.last  #=> 6
    arr.take(3) #=> [1, 2, 3]
    arr.drop(3) #=> [4, 5, 6]
    arr.length #=> 5
    arr.count #=> 5
    arr.include?(7) #=> false
    friends.reverse() # 從後面開始輸出
    friends.sort() 

    #add/push    item
    arr.push(7) #=> [1, 2, 3, 4, 5, 6, 7]
    arr << 7    #=> [1, 2, 3, 4, 5, 6, 7]
    
    #unshift will add a new item to the beginning of an array.
    arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6]

    #insert 
    arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6]

    #delete
    arr.pop #=> 6   arr #=> [1, 2, 3, 4, 5]

    # take the first and delete the allocate mem of the item
    arr.shift #=> 1
    arr #=> [2, 3, 4, 5, 6]
    arr.delete_at(2) #=> 4
    arr #=> [1, 2, 4, 5, 6]

    #To delete a particular element anywhere in an array, use delete:
    arr = [1, 2, 2, 3]
    arr.delete(2) #=> 2
    arr #=> [1,3]

    #A useful method if you need to remove nil values from an array is compact:
    arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
    arr.compact  #=> ['foo', 0, 'bar', 7, 'baz']
    arr          #=> ['foo', 0, nil, 'bar', 7, 'baz', nil]

    # remove duplicate elements from an array.
    arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
    arr.uniq #=> [2, 5, 6, 556, 8, 9, 0, 123]

    #arr iterator
        #Note that this operation leaves the array unchanged.
            arr = [1, 2, 3, 4, 5]
            arr.each {|a| print a -= 10, " "}
            # prints: -9 -8 -7 -6 -5
            #=> [1, 2, 3, 4, 5]
        #
            words = %w[first second third fourth fifth sixth]
            str = ""
            words.reverse_each {|word| str += "#{word} "}
            p str #=> "sixth fifth fourth third second first "

    # Non-destructive Selection
    arr = [1, 2, 3, 4, 5, 6]
    arr.select {|a| a > 3}       #=> [4, 5, 6]
    arr.reject {|a| a < 3}       #=> [3, 4, 5, 6]
    arr.drop_while {|a| a < 4}   #=> [4, 5, 6]
    arr                          #=> [1, 2, 3, 4, 5, 6]
    #Destructive Selection
    arr.delete_if {|a| a < 4}   #=> [4, 5, 6]
    arr                         #=> [4, 5, 6]

    arr = [1, 2, 3, 4, 5, 6]
    arr.keep_if {|a| a < 4}   #=> [1, 2, 3]
    arr                       #=> [1, 2, 3]
    arr.delete_if {|a| a < 4}   #=> [4, 5, 6]
    arr                         #=> [4, 5, 6]

        
    
    
    

#dict #hashes
    state = {
        "peeny "=>"py",
        "New York" => "Ny",
        "Orgen"=>"Or    ",
        :Apple=>"ap",
        2 => "two"}
    puts state["peeny"] # print py
    


#method  
    #若不使用return 的話 在method中 function 的return default 看function的最後一行
    #  
    def SayHi
        puts "Hellow User"

    end
    SayHi  #跑這個function

    def SayGreat (name = "no name",money = 0)
        puts name +" is great" +money.to_s
    end
    SayGreat("Amy",100)
#Return Statement
    def __return__()
        return 70 ,50 ,20
    end 
    puts __return__()[2]  #取return的第二個數字
        
# if statement
    state =  true    
    if state
        puts "RRRRRRRRRR"
    elsif condition
        puts " AAAAAAAAAA"
    else 
        return ""
    end 
    #comparsion if 
    if num !=0 and num>num1
        
    end

# case 
def day__(day)
    case day 
    when "mon" #day == mon  thhen do something
        day_name = Monday
    when "tue"
        day_name = Tuesday
    else
        day_name = "Invalid"
    end
    return day_name
end
    
    
#while 
    while num < 5
        puts " N : " +num.to_s
        num -= 1
    end

#for 
    # output all element in friends
    for e in friends
        puts e
    end

    # output all element in friends
    friends.each do |friend|
        puts friend
    end

    # output 0 1 2 3 4 5 
    for index in 0..5
        puts index
    end

    # output 0 1 2 3 4 5 
    6.times do |index|
        puts index
    end


# Exponent method
    def pow(basic_num,pow_num,multipler = 16)
        result = 1
        if  pow_num < multipler
            result = 1
            pow_num.times do |index|
                result = result  *basic_num
            return result 
            end
        else #這個方法無法解決 次方過大的問題
            # multipler = 16
            time = 0
            remainder = 0

            q = pow_num /multipler
            remainder = pow_num %multipler
            tmp = basic_num *basic_num
            3.times do |index| #get basic_num ^16
                tmp*=tmp
            q.times do |index|
                result *= result *tmp
            if remainder >0 
                remainder.times do |index|
                    result *= basic_num
            end
        end
        return result
    end
#comments 註解
=begin
    wqewqeas
    qwef
    wqw
=end

#Reading file
    File.open("/C:/Desktop/Ruby/readingfile.txt","r") do |file| #將開啟的檔案給一個名稱file
        puts file # show metadata of file like addr
        puts file.read() #show data stored in the file.
        puts file.read().include? "Amy"
        puts file.readlines() # same as C program
        puts file.reachar() 

    for ilne in file.readlines()
        puts line 
    end
    end #down working and colse the file
    file =  File.open("/C:/Desktop/Ruby/readingfile.txt","r")
    file.close()
#writing file
    File.open("/C:/Desktop/Ruby/readingfile.txt","a") #append
        file.write("OSCAR . wewqe Accounting")
    end
    File.open("/C:/Desktop/Ruby/readingfile.txt","w") #app
        file.write("OSCAR . wewqe Accounting")
    end

#Handing error
    Lu = Array[1,2,3,4,5]
    begin
        Lu["dog"]
        num = 10/0
    rescue ZeroDivisionError
        puts "division by zero error "
    rescue TypeError => te
        puts "type error" +te
    end

#class & object 
    class BOOK
        attr_accessor :title, :author , :page ,:score
        #intialize
        def intialize(title , author,page ,score = 0)
            @title = title
            @author = author
            @page = page
            @score = score
        end
        #object method
        def  has_honors()
            if @score > 0.7
                return true
            else 
                return false
            end
        end
    end

    book = BOOK.new()
    book.title = "Harry Potter"
    book.author = "JK/ Rowling"
    book.page = 400
    # book = BOOK.new("Harry Potter","JK/ Rowling",400)
    puts book.page

    books = Array.new(book.new)?????

#inheritance
    class Chef
        def make_chicken
            puts "The chef make chicken"
        end

        def make_salad
            puts "The chef make salad"
        end

        def make_bbq
            puts "The chef make bbq"
        end
    end
    class AmericanChef < Chef
        def make_bbq
            puts "The chef make SSSSS bbq"
        end
    end 
        American_chef = AmericanChef.new()
        American_chef.make_salad

# module  ---> container to store groups of methods\
    module Tools #相同功能的放一起
        def SayHi(name)
            puts "hellow #{name}"
        end
        def SayGreat(name)
            puts "Great #{name}"
        end
    #same as C language C.hpp ，we should use    
    require_relative "useful_tool.rb"
    include Tools # like C language C.hpp ，we should use
    Tools.SayHi("Tom")
# %?  %W and %w allow you to create an Array of strings without using quotes and commas.
    %w() array of strings
    %r() regular expression.
    %q() string
    %x() a shell command (returning the output string)
    %i() array of symbols (Ruby >= 2.0.0)
    %s() symbol
    %() (without letter) shortcut for %Q()

    # Example       
    abc = 'a b c' #https://stackoverflow.com/questions/1274675/what-does-warray-mean
    %w[1 2#{abc} d] #=> ["1", "2\#{abc}", "d"]
    %W[1 2#{abc} d] #=> ["1", "2a b c", "d"]   

    %s|some words|          #Same as :'some words'
    %s[other words]         #Same as :'other words'
    %s_last example_        #Same as :'last example'

    %i( a b c )   # => [ :a, :b, :c ]
    %i[ a b c ]   # => [ :a, :b, :c ]
    %i_ a b c _   # => [ :a, :b, :c ]

    #Use braces is better
        # bad
        %w(one two three)
        %i(one two three)

    # good
        %w[one two three]
        %i[one two three]

    # This highlights that %() creates a string like 
    #"Porter Smith\nJimmyJones\nRonald Jackson" and to get the array you
    #split the string on the "\n" 
    # ["Porter Smith", "Jimmy Jones", "Ronald Jackson"]
    names = %( Porter SmithJimmy Jones Ronald Jackson).split('\n')
    



#   Buliding a Quiz
    class Questions
        attr_accessor :prompt,:answer
        def intialize (prompt,answer)
            @prompt = prompt
            @answer = answer
        end
    
        questions = [
            Questions.new("who is man with hat ? \n (a)Bob\n(b)Amy(c)Tina\n","a")
            Questions,new("select the character \n","b")
        ]
    def run(questions)
        score = 0
        for question in questions
            puts question.prompt
            answer = gets.chomp()
            if answer == question.answer
                score +=1 
        
            end
        end
        puts "You got "+ socre
    end