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
    private int commodit_type;
    private int commodit_discount;


    public Goods() {
    }

    public Goods(int gid, String commodit_name, String commodit_price, String commodit_vipprice, int commodit_salenumber, int commodit_banknumber, String commodit_them, String commodit_img, String commodit_img1, String commodit_img2, String commodit_img3, String commodit_img4, int commodit_type, int commodit_discount) {
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
        this.commodit_type = commodit_type;
        this.commodit_discount = commodit_discount;
    }

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public String getCommodit_name() {
        return commodit_name;
    }

    public void setCommodit_name(String commodit_name) {
        this.commodit_name = commodit_name;
    }

    public String getCommodit_price() {
        return commodit_price;
    }

    public void setCommodit_price(String commodit_price) {
        this.commodit_price = commodit_price;
    }

    public String getCommodit_vipprice() {
        return commodit_vipprice;
    }

    public void setCommodit_vipprice(String commodit_vipprice) {
        this.commodit_vipprice = commodit_vipprice;
    }

    public int getCommodit_salenumber() {
        return commodit_salenumber;
    }

    public void setCommodit_salenumber(int commodit_salenumber) {
        this.commodit_salenumber = commodit_salenumber;
    }

    public int getCommodit_banknumber() {
        return commodit_banknumber;
    }

    public void setCommodit_banknumber(int commodit_banknumber) {
        this.commodit_banknumber = commodit_banknumber;
    }

    public String getCommodit_them() {
        return commodit_them;
    }

    public void setCommodit_them(String commodit_them) {
        this.commodit_them = commodit_them;
    }

    public String getCommodit_img() {
        return commodit_img;
    }

    public void setCommodit_img(String commodit_img) {
        this.commodit_img = commodit_img;
    }

    public String getCommodit_img1() {
        return commodit_img1;
    }

    public void setCommodit_img1(String commodit_img1) {
        this.commodit_img1 = commodit_img1;
    }

    public String getCommodit_img2() {
        return commodit_img2;
    }

    public void setCommodit_img2(String commodit_img2) {
        this.commodit_img2 = commodit_img2;
    }

    public String getCommodit_img3() {
        return commodit_img3;
    }

    public void setCommodit_img3(String commodit_img3) {
        this.commodit_img3 = commodit_img3;
    }

    public String getCommodit_img4() {
        return commodit_img4;
    }

    public void setCommodit_img4(String commodit_img4) {
        this.commodit_img4 = commodit_img4;
    }

    public int getCommodit_type() {
        return commodit_type;
    }

    public void setCommodit_type(int commodit_type) {
        this.commodit_type = commodit_type;
    }

    public int getCommodit_discount() {
        return commodit_discount;
    }

    public void setCommodit_discount(int commodit_discount) {
        this.commodit_discount = commodit_discount;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "gid=" + gid +
                ", commodit_name='" + commodit_name + '\'' +
                ", commodit_price='" + commodit_price + '\'' +
                ", commodit_vipprice='" + commodit_vipprice + '\'' +
                ", commodit_salenumber=" + commodit_salenumber +
                ", commodit_banknumber=" + commodit_banknumber +
                ", commodit_them='" + commodit_them + '\'' +
                ", commodit_img='" + commodit_img + '\'' +
                ", commodit_img1='" + commodit_img1 + '\'' +
                ", commodit_img2='" + commodit_img2 + '\'' +
                ", commodit_img3='" + commodit_img3 + '\'' +
                ", commodit_img4='" + commodit_img4 + '\'' +
                ", commodit_type=" + commodit_type +
                ", commodit_discount=" + commodit_discount +
                '}';
    }
}