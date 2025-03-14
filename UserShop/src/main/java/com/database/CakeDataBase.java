package com.database;
import com.bean.Cake;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class CakeDataBase {
    private static final Map<String, Cake> cakes = new HashMap<String,Cake>();

    //静态代码块，当该类加载到内存的时候执行
    static {
        cakes.put("1",new Cake("1","草莓蛋糕",20));
        cakes.put("2",new Cake("2","巧克力蛋糕",10));
        cakes.put("3",new Cake("3","芒果蛋糕",30));
    }

    //静态调用静态
    public  static Collection<Cake> getAll() {
        return cakes.values();
    }

    public static Cake getCake(String id) {
        return cakes.get(id);
    }
}