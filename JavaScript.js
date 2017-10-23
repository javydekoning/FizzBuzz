/*
   Fizz Buzz JavaScript example

   Any number divisible by three is replaced by the word fizz and any divisible 
   by five by the word buzz. Numbers divisible by both become fizz buzz.
   https://en.wikipedia.org/wiki/Fizz_buzz
*/

function getFizzBuzz(input) {
    if (input % 3 == 0 && input % 5 == 0) {
        return 'Fizz Buzz'
    } 
    else if(input % 3 == 0) {
        return 'Fizz'
    } 
    else if(input % 5 == 0) {
        return 'Buzz'
    } 
    else {
        return input
    }
}

for (var i = 1, len = 100; i <= len; i++) {
    process.stdout.write(getFizzBuzz(i) + ', '); 
}