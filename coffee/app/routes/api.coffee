
#GET 
exports.testdata = (req, res) ->

  testArray = [
    {
      name: "Person 1"
    }
    {
      name: "Person 2"
    }
  ]
  res.header "Content-Type", "application/json"
  res.send testArray
  return