/*Hiện thực 2 phương thức cho class:
-   	Add: thêm 1 node có dữ liệu là data vào cuối danh sách
-   	Add(index,…): thêm 1 node có dữ liệu là data vào vị trí index nếu index là hợp lệ, nếu không hợp lệ throw out_of_range(“Invalid index”);
*/
#include <iostream>

using namespace std;

template <typename T>
class Node {
public:
    T data;
    Node* next;
    Node(const T& d, Node* n = nullptr) : data(d), next(n) {}
    ~Node() {}
};

template <typename T>
class SLinkedList {
private:
    Node<T>* head;
    Node<T>* tail;
    int count;

public:
    SLinkedList() : head(nullptr), tail(nullptr), count(0) {}
    ~SLinkedList() {
        while (head) {
            Node<T>* temp = head;
            head = head->next;
            delete temp;
        }
    }

    void add(const T& data) {
        Node<T>* newNode = new Node<T>(data);
        if (!head) {
            head = newNode;
            tail = newNode;
        } else {
            tail->next = newNode;
            tail = newNode;
        }
        count++;
    }

    void add(int index, const T& data) {
        if (index < 0 || index > count) {
            throw out_of_range("Invalid index");
        }

        Node<T>* newNode = new Node<T>(data);

        if (index == 0) {
            newNode->next = head;
            head = newNode;
            if (!tail) {
                tail = newNode;
            }
        } else {
            Node<T>* current = head;
            for (int i = 0; i < index - 1; i++) {
                current = current->next;
            }
            newNode->next = current->next;
            current->next = newNode;
            if (!newNode->next) {
                tail = newNode;
            }
        }

        count++;
    }

    void print() {
        Node<T>* current = head;
        while (current) {
            cout << current->data << " ";
            current = current->next;
        }
        cout << endl;
    }
};

int main() {
    SLinkedList<int> List;
    List.add(5);
    List.add(10);
    List.add(1, 7);
    List.add(8);
    List.print(); 

    return 0;
}