#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include <doctest/doctest.h>
#include <periperie/bluetooth.hpp>

TEST_CASE("Bluetooth Addition") {
    Peripherie::Bluetooth bluetooth;
    int sum = bluetooth.addition(10, 15);
    CHECK(sum == 25);
}