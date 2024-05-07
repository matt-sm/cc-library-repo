
#include "xxhash.h"

#include <cstdio>
#include <string_view>

constexpr std::string_view TEST_STRING = "Hello world!";

int main() {
  const auto hash = XXH64(TEST_STRING.data(), TEST_STRING.size(), 0);
  const XXH64_hash_t expected = 9157857784689950130ull;
  if (hash != expected) {
    printf("FAILED: %llu is not %llu\n", hash, expected);
    return 1;
  }

  return 0;
}
