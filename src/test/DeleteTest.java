package test;

import dao.impl.UserDaoImpl;

public class DeleteTest {
    public static void main(String[] args) {
        UserDaoImpl userDaoImpl = new UserDaoImpl();

        int i = userDaoImpl.deleteUser(2);

        System.out.println(i);
    }


}
