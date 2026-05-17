$EXPECTED = "hello, Test"
$OUTPUT = node -e "process.stdout.write(require('./src/app')('Test'))"

if ($OUTPUT -eq $EXPECTED) {
  Write-Host "test passed!"
  exit 0
} else {
  Write-Host "test failed!"
  Write-Host "Expected: $EXPECTED"
  Write-Host "Got: $OUTPUT"
  exit 1
}
