package com.system.modules.system.exception;

/**
 * @description: TODO
 * @author: peicq pcq@bjbjxing.com
 * @date: 2021/1/7 15:45
 * @version: v1.0
 */
public class BootException extends RuntimeException {

    private static final long serialVersionUID = 1L;

    public BootException(String message) {
        super(message);
    }

    public BootException(Throwable cause) {
        super(cause);
    }

    public BootException(String message, Throwable cause) {
        super(message, cause);
    }
}
