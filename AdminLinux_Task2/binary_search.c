#include <stdio.h>

// Function to perform binary search
int binary_search(int arr[], int size, int key) {
    int low = 0;
    int high = size - 1;

    while (low <= high) {
        int mid = low + (high - low) / 2;

        if (arr[mid] == key) {
            return mid;  // Element found, return its index
        }

        if (arr[mid] < key) {
            low = mid + 1;  // Search the right half
        } else {
            high = mid - 1;  // Search the left half
        }
    }

    return -1;  // Element not found
}

int main() {
    // Declare and initialize an array (must be sorted for binary search)
    int arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int size = sizeof(arr) / sizeof(arr[0]);

    // Element to search
    int key = 6;

    // Call binary search function
    int result = binary_search(arr, size, key);

    // Print the result
    if (result != -1) {
        printf("Element %d found at index %d\n", key, result);
    } else {
        printf("Element %d not found in the array\n", key);
    }

    return 0;
}
