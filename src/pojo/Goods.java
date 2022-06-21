package pojo;

import java.util.Objects;

public class Goods {
    private int gid;
    private String commodit_name;
    private String commodit_price;
    private String commodit_vipprice;
    private int commodit_salenumber;
    private int commodit_banknumber;
    private String commodit_them;
    private String commodit_img;
    private String commodit_img1;
    private String commodit_img2;
    private String commodit_img3;
    private String commodit_img4;

    public Goods() {
    }

    public Goods(int gid, String commodit_name, String commodit_price, String commodit_vipprice, int commodit_salenumber, int commodit_banknumber, String commodit_them, String commodit_img, String commodit_img1, String commodit_img2, String commodit_img3, String commodit_img4) {
        this.gid = gid;
        this.commodit_name = commodit_name;
        this.commodit_price = commodit_price;
        this.commodit_vipprice = commodit_vipprice;
        this.commodit_salenumber = commodit_salenumber;
        this.commodit_banknumber = commodit_banknumber;
        this.commodit_them = commodit_them;
        this.commodit_img = commodit_img;
        this.commodit_img1 = commodit_img1;
        this.commodit_img2 = commodit_img2;
        this.commodit_img3 = commodit_img3;
        this.commodit_img4 = commodit_img4;
    }

    public String toString() {
        return "Goods{gid=" + this.gid + ", commodit_name='" + this.commodit_name + '\'' + ", commodit_price='" + this.commodit_price + '\'' + ", commodit_vipprice='" + this.commodit_vipprice + '\'' + ", commodit_salenumber=" + this.commodit_salenumber + ", commodit_banknumber=" + this.commodit_banknumber + ", commodit_them='" + this.commodit_them + '\'' + ", commodit_img='" + this.commodit_img + '\'' + ", commodit_img1='" + this.commodit_img1 + '\'' + ", commodit_img2='" + this.commodit_img2 + '\'' + ", commodit_img3='" + this.commodit_img3 + '\'' + ", commodit_img4='" + this.commodit_img4 + '\'' + '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Goods goods = (Goods) o;
        return gid == goods.gid &&
                commodit_salenumber == goods.commodit_salenumber &&
                commodit_banknumber == goods.commodit_banknumber &&
                Objects.equals(commodit_name, goods.commodit_name) &&
                Objects.equals(commodit_price, goods.commodit_price) &&
                Objects.equals(commodit_vipprice, goods.commodit_vipprice) &&
                Objects.equals(commodit_them, goods.commodit_them) &&
                Objects.equals(commodit_img, goods.commodit_img) &&
                Objects.equals(commodit_img1, goods.commodit_img1) &&
                Objects.equals(commodit_img2, goods.commodit_img2) &&
                Objects.equals(commodit_img3, goods.commodit_img3) &&
                Objects.equals(commodit_img4, goods.commodit_img4);
    }

    @Override
    public int hashCode() {

        return Objects.hash(gid, commodit_name, commodit_price, commodit_vipprice, commodit_salenumber, commodit_banknumber, commodit_them, commodit_img, commodit_img1, commodit_img2, commodit_img3, commodit_img4);
    }

    public int getGid() {
        return this.gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public String getCommodit_name() {
        return this.commodit_name;
    }

    public void setCommodit_name(String commodit_name) {
        this.commodit_name = commodit_name;
    }

    public String getCommodit_price() {
        return this.commodit_price;
    }

    public void setCommodit_price(String commodit_price) {
        this.commodit_price = commodit_price;
    }

    public String getCommodit_vipprice() {
        return this.commodit_vipprice;
    }

    public void setCommodit_vipprice(String commodit_vipprice) {
        this.commodit_vipprice = commodit_vipprice;
    }

    public int getCommodit_salenumber() {
        return this.commodit_salenumber;
    }

    public void setCommodit_salenumber(int commodit_salenumber) {
        this.commodit_salenumber = commodit_salenumber;
    }

    public int getCommodit_banknumber() {
        return this.commodit_banknumber;
    }

    public void setCommodit_banknumber(int commodit_banknumber) {
        this.commodit_banknumber = commodit_banknumber;
    }

    public String getCommodit_them() {
        return this.commodit_them;
    }

    public void setCommodit_them(String commodit_them) {
        this.commodit_them = commodit_them;
    }

    public String getCommodit_img() {
        return this.commodit_img;
    }

    public void setCommodit_img(String commodit_img) {
        this.commodit_img = commodit_img;
    }

    public String getCommodit_img1() {
        return this.commodit_img1;
    }

    public void setCommodit_img1(String commodit_img1) {
        this.commodit_img1 = commodit_img1;
    }

    public String getCommodit_img2() {
        return this.commodit_img2;
    }

    public void setCommodit_img2(String commodit_img2) {
        this.commodit_img2 = commodit_img2;
    }

    public String getCommodit_img3() {
        return this.commodit_img3;
    }

    public void setCommodit_img3(String commodit_img3) {
        this.commodit_img3 = commodit_img3;
    }

    public String getCommodit_img4() {
        return this.commodit_img4;
    }

    public void setCommodit_img4(String commodit_img4) {
        this.commodit_img4 = commodit_img4;
    }
}