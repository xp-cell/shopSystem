package pojo;

import java.util.Objects;

public class Order {
    private int oid;
    private int uid;
    private int gid;
    private int aid;
    private int order_state;

    public String toString() {
        return "Order{oid=" + this.oid + ", uid=" + this.uid + ", gid=" + this.gid + ", aid=" + this.aid + ", order_state=" + this.order_state + '}';
    }

    public int getOid() {
        return this.oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getUid() {
        return this.uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getGid() {
        return this.gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public int getAid() {
        return this.aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public int getOrder_state() {
        return this.order_state;
    }

    public void setOrder_state(int order_state) {
        this.order_state = order_state;
    }

    public Order(int oid, int uid, int gid, int aid, int order_state) {
        this.oid = oid;
        this.uid = uid;
        this.gid = gid;
        this.aid = aid;
        this.order_state = order_state;
    }

    public Order() {
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Order order = (Order) o;
        return oid == order.oid &&
                uid == order.uid &&
                gid == order.gid &&
                aid == order.aid &&
                order_state == order.order_state;
    }

    @Override
    public int hashCode() {

        return Objects.hash(oid, uid, gid, aid, order_state);
    }
}