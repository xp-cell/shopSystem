package pojo;

import java.util.Objects;

public class Address {
    private int aid;
    private int uid;
    private String address_name;
    private String address_site;
    private String phone;

    public String toString() {
        return "Address{aid=" + this.aid + ", uid=" + this.uid + ", address_name='" + this.address_name + '\'' + ", address_site='" + this.address_site + '\'' + ", phone='" + this.phone + '\'' + '}';
    }

    public int getAid() {
        return this.aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public int getUid() {
        return this.uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getAddress_name() {
        return this.address_name;
    }

    public void setAddress_name(String address_name) {
        this.address_name = address_name;
    }

    public String getAddress_site() {
        return this.address_site;
    }

    public void setAddress_site(String address_site) {
        this.address_site = address_site;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Address(int aid, int uid, String address_name, String address_site, String phone) {
        this.aid = aid;
        this.uid = uid;
        this.address_name = address_name;
        this.address_site = address_site;
        this.phone = phone;
    }

    public Address() {
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Address address = (Address) o;
        return aid == address.aid &&
                uid == address.uid &&
                Objects.equals(address_name, address.address_name) &&
                Objects.equals(address_site, address.address_site) &&
                Objects.equals(phone, address.phone);
    }

    @Override
    public int hashCode() {

        return Objects.hash(aid, uid, address_name, address_site, phone);
    }
}
