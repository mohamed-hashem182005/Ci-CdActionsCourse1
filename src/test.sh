EXPECTED="hello, Test"

OUTPUT=$(node -e "process.stdout.write(require('./src/app')('Test'))")

if [ "$OUTPUT" = "$EXPECTED" ]; then
  echo "test passed!"
  exit 0
else
  echo "test failed!"
  echo "Expected: $EXPECTED"
  echo "Got: $OUTPUT"
  exit 1
fi