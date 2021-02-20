//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.system.modules.system.util;

import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource.Util;

public class PasswordUtil {
    private static RandomNumberGenerator randomNumberGenerator = new SecureRandomNumberGenerator();
    private static final String ALGORITH_NAME = "md5";
    private static final int HASH_ITERATIONS = 2;

    public PasswordUtil() {
    }

    public static String genSalt() {
        return randomNumberGenerator.nextBytes().toHex();
    }

    public static String encrypt(String username, String password, String salt) {
        return (new SimpleHash("md5", password, Util.bytes(username + salt), 2)).toHex();
    }

    public static void main(String[] args) {
        String u = "100200000002";
        String s = genSalt();
        String e = encrypt(u, u, s);
        System.out.println(s);
        System.out.println(e);
    }
}
