package pojo;

public class User {
    private int uid;
    private String user_name;
    private String user_number;
    private String user_password;
    private int user_integral;

    public String toString() {
        return "User{uid=" + this.uid + ", user_name='" + this.user_name + '\'' + ", user_number='" + this.user_number + '\'' + ", user_password='" + this.user_password + '\'' + ", user_integral=" + this.user_integral + '}';
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        } else if (o != null && this.getClass() == o.getClass()) {
            User user = (User)o;
            if (this.uid != user.uid) {
                return false;
            } else if (this.user_integral != user.user_integral) {
                return false;
            } else {
                label46: {
                    if (this.user_name != null) {
                        if (this.user_name.equals(user.user_name)) {
                            break label46;
                        }
                    } else if (user.user_name == null) {
                        break label46;
                    }

                    return false;
                }

                if (this.user_number != null) {
                    if (!this.user_number.equals(user.user_number)) {
                        return false;
                    }
                } else if (user.user_number != null) {
                    return false;
                }

                return this.user_password != null ? this.user_password.equals(user.user_password) : user.user_password == null;
            }
        } else {
            return false;
        }
    }

    public int hashCode() {
        int result = this.uid;
        result = 31 * result + (this.user_name != null ? this.user_name.hashCode() : 0);
        result = 31 * result + (this.user_number != null ? this.user_number.hashCode() : 0);
        result = 31 * result + (this.user_password != null ? this.user_password.hashCode() : 0);
        result = 31 * result + this.user_integral;
        return result;
    }

    public int getUid() {
        return this.uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUser_name() {
        return this.user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_number() {
        return this.user_number;
    }

    public void setUser_number(String user_number) {
        this.user_number = user_number;
    }

    public String getUser_password() {
        return this.user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public int getUser_integral() {
        return this.user_integral;
    }

    public void setUser_integral(int user_integral) {
        this.user_integral = user_integral;
    }

    public User(int uid, String user_name, String user_number, String user_password, int user_integral) {
        this.uid = uid;
        this.user_name = user_name;
        this.user_number = user_number;
        this.user_password = user_password;
        this.user_integral = user_integral;
    }

    public User() {
    }
}
