#include <stdio.h>

#include <iostream>
#include <vector>

using namespace std;

void print_all(const vector<int>& arr)
{
    for (size_t i = 0; i < arr.size(); i++)
        cout << arr[i] << endl;
}

int main()
{
    const auto n = 40000;
    auto arr = vector<int>(40000);

    for (size_t i = 0; i < arr.size(); i++)
        arr[i] = n - i; //random()%100500;

    print_all(arr);
    printf("---\n");

    for (size_t i = 0; i < arr.size(); i++) {
        for (size_t j = 0; j < arr.size() - 1 - i; j++) {
            auto tmp = arr[j];
            if (arr[j] > arr[j + 1]) {
                arr[j] = arr[j + 1];
                arr[j + 1] = tmp;
            }
        }
    }

    print_all(arr);
    return 0;
}

