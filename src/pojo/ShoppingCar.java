package pojo;

import java.util.Date;
import java.util.Objects;

public class ShoppingCar {
    private int cid;
    private int uid;
    private Date shopping_data;
    private int shopping_type;

    public ShoppingCar() {
    }

    public String toString() {
        return "ShoppingCar{cid=" + this.cid + ", uid=" + this.uid + ", shopping_data=" + this.shopping_data + ", shopping_type=" + this.shopping_type + '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ShoppingCar that = (ShoppingCar) o;
        return cid == that.cid &&
                uid == that.uid &&
                shopping_type == that.shopping_type &&
                Objects.equals(shopping_data, that.shopping_data);
    }

    @Override
    public int hashCode() {

        return Objects.hash(cid, uid, shopping_data, shopping_type);
    }

    public int getCid() {
        return this.cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getUid() {
        return this.uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public Date getShopping_data() {
        return this.shopping_data;
    }

    public void setShopping_data(Date shopping_data) {
        this.shopping_data = shopping_data;
    }

    public int getShopping_type() {
        return this.shopping_type;
    }

    public void setShopping_type(int shopping_type) {
        this.shopping_type = shopping_type;
    }

    public ShoppingCar(int cid, int uid, Date shopping_data, int shopping_type) {
        this.cid = cid;
        this.uid = uid;
        this.shopping_data = shopping_data;
        this.shopping_type = shopping_type;
    }
}
