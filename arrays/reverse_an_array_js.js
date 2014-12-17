var array = [1,2,3,4,5,6]


function reverse (array) {
  var array = array
    var answer = []
  for (var i = array.length - 1; i >= 0; i--) {
    answer.push(array[i])
  };
    return answer
}

console.log(reverse(array))