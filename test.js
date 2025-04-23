// test.js

function generateGreeting(name) {
    return `Hello, ${name}! Welcome to our site.`;
  }
  
  function testGreetingFunction() {
    const testName = "Alice";
    const expected = "Hello, Alice! Welcome to our site.";
    const result = generateGreeting(testName);
  
    if (result === expected) {
      console.log("✅ Test passed!");
      process.exit(0); // success
    } else {
      console.error("❌ Test failed. Expected:", expected, "but got:", result);
      process.exit(1); // failure
    }
  }
  
  testGreetingFunction();
  