package model;

import java.util.ArrayList;
import java.util.List;

public class manage {
    private static List<Customer> customerList = new ArrayList<>();

    static {
        initData();
    }
    static void initData(){
        customerList.add(new Customer(1, "name", "hanoi"));
        customerList.add(new Customer(2, "name1", "hanoi"));
        customerList.add(new Customer(3, "name3", "hanoi"));
    }

    public static List<Customer> getCustomerList() {
        return customerList;
    }

    public static void setCustomerList(List<Customer> customerList) {
        manage.customerList = customerList;
    }
}
