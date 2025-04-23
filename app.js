function generateGreeting(name) {
  return `Hello, ${name}! Welcome to our site.`;
}

document.getElementById("nameForm").addEventListener("submit", function (e) {
  e.preventDefault();
  const name = document.getElementById("nameInput").value;
  const greeting = generateGreeting(name);
  document.getElementById("greeting").textContent = greeting;
});

// --- Unit Test ---
function testGreetingFunction() {
  const testName = "Alice";
  const expected = "Hello, Alice! Welcome to our site.";
  const result = generateGreeting(testName);
  if (result === expected) {
    console.log("✅ Test passed!");
  } else {
    console.error("❌ Test failed. Expected:", expected, "but got:", result);
  }
}

// Run the test
testGreetingFunction();
