
exports.testdata = function(req, res) {
  var testArray;
  testArray = [
    {
      name: "Person 1"
    }, {
      name: "Person 2"
    }
  ];
  res.header("Content-Type", "application/json");
  res.send(testArray);
};
