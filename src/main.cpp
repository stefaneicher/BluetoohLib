#include "periperie/bluetooth.hpp"
#include <iostream>

int main(int argc, char *argv[]) {
    Peripherie::Bluetooth bluetooth;
    std::cout << bluetooth.addition(10, 15) << std::endl;
    return 0;
}