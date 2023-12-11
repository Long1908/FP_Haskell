<h1>Link to exercises:</h1>
<p>https://github.com/triffon/fp-2023-24/tree/main/exercises/inf2/Week08-HelloHaskell/lab</p>
<h1>Short overview: </h1>
<p>In this lab we are going to focus on the introduction of Haskell, syntaxis, data types, lists, <b>List Comprehension</b>, <b>Lambda functions</b> </br>
<ol>
  <li>
    <h2>Data Types:</h2>
      <ul>
        <li><b>Int</b></li>
        <li><b>Integer</b> -> which can save bigger INTs</li>
        <li><b>Float</b></li>
        <li><b>Double</b></li>
        <li><b>Rational</b></li>
        <li><b>Char</b></li>
        <li><b>String</b></li>
        <li><b>Bool</b></li>
      </ul>
  </li>
  <li>
    <h2>Some Built in Functions:</h2>
      <ul>
        <li><b>mod</b></li>
        <li><b>div</b> -> which gives us a whole number, not like '/'</li>
        <li><b>**</b> -> which is power (e.g. 2 ** 4 == 16)</li>
        <li><b>max</b></li>
        <li><b>min</b></li>
        <li><b>odd</b></li>
        <li><b>even</b></li>
        <li><b>fromIntegral</b> -> converts the parsed int to float, double and etc.</li>
        <li><b>floor</b></li>
        <li><b>ceiling</b></li>
        <li><b>round</b></li>
        <li><b>trunc</b></li>
      </ul>
  </li>
  <li>
    <h2>Basic program syntaxis syntaxis</h2>
    ![image](https://github.com/Long1908/FP_Haskell/assets/56315912/f8517df1-cb90-4b42-be8a-e249c8cb22c1)  
  </li>
  <li>
    <h2>Basic if's statements and if-guards</h2>
    ![image](https://github.com/Long1908/FP_Haskell/assets/56315912/20240657-d0ff-4453-b55d-e9033de79dc8)
  </li>
  <li>
    <h2>Lists and things we can do with them</h2>
      <ul>
        <li><b>[INT]</b> -> or any data type that we mentioned so far.</li>
        <li><b>'1:[]'</b> -> adds 1 (or anythig that we parse) into the list</li>
        <li><b>null</b> -> built in function to check if somethingis null or empty</li>
        <li><b>elem n</b> -> checks if n contains in the list</li>
        <li><b>length </b> -> reverses a list</li>
        <li><b>[...] ++ [...]</b> -> concatinates the lists</li>
        <li><b>sum</b></li>
        <li><b>product</b></li>
        <li><b>minimum/maximum</b></li>
        <li><b>take n</b> -> takes the first up until and included the n-th element of the list. If n is out of scope, it takes the whole list</li>
        <li><b>drop n</b> -> same ike 'take' but this time it drops them or deletes them. If n is outof scope it will give us the empty list</li>
        <li><b>nub</b> -> deletes duplicated elements</li> 
        <li><b>sort</b></li>
        <li><b>filter</b> -> filters a list based on given function</li>
        <li><b>filter</b> -> changes a list based on given function</li>
        <li><b>all/any</b> -> checks if all/any of the elements is try based on some kind of predicate</li>
      </ul>
  </li>
  <li>
    <h2>List Comprehensions</h2>
    ![image](https://github.com/Long1908/FP_Haskell/assets/56315912/e383c26c-e348-4d6c-a967-e4b24bca5bbf)
  </li>
  <li>
    <h2>Lambda functions</h2>
    <p><b>Basic look:</b> (\ x y z -> x + y + z) 1 2 3</p>
  </li>
</ol>
