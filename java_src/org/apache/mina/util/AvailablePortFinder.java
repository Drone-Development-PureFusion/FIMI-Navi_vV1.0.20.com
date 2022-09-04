package org.apache.mina.util;

import java.io.IOException;
import java.net.DatagramSocket;
import java.net.ServerSocket;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeSet;
/* loaded from: classes2.dex */
public class AvailablePortFinder {
    public static final int MAX_PORT_NUMBER = 49151;
    public static final int MIN_PORT_NUMBER = 1;

    private AvailablePortFinder() {
    }

    public static Set<Integer> getAvailablePorts() {
        return getAvailablePorts(1, MAX_PORT_NUMBER);
    }

    public static int getNextAvailable() {
        try {
            ServerSocket serverSocket = new ServerSocket(0);
            try {
                int port = serverSocket.getLocalPort();
                serverSocket.close();
                return port;
            } catch (IOException e) {
                ioe = e;
                throw new NoSuchElementException(ioe.getMessage());
            }
        } catch (IOException e2) {
            ioe = e2;
        }
    }

    public static int getNextAvailable(int fromPort) {
        if (fromPort < 1 || fromPort > 49151) {
            throw new IllegalArgumentException("Invalid start port: " + fromPort);
        }
        for (int i = fromPort; i <= 49151; i++) {
            if (available(i)) {
                return i;
            }
        }
        throw new NoSuchElementException("Could not find an available port above " + fromPort);
    }

    public static boolean available(int port) {
        DatagramSocket ds;
        if (port < 1 || port > 49151) {
            throw new IllegalArgumentException("Invalid start port: " + port);
        }
        ServerSocket ss = null;
        DatagramSocket ds2 = null;
        try {
            ServerSocket ss2 = new ServerSocket(port);
            try {
                ss2.setReuseAddress(true);
                ds = new DatagramSocket(port);
            } catch (IOException e) {
                ss = ss2;
            } catch (Throwable th) {
                th = th;
                ss = ss2;
            }
            try {
                ds.setReuseAddress(true);
                if (ds != null) {
                    ds.close();
                }
                if (ss2 != null) {
                    try {
                        ss2.close();
                    } catch (IOException e2) {
                    }
                }
                return true;
            } catch (IOException e3) {
                ds2 = ds;
                ss = ss2;
                if (ds2 != null) {
                    ds2.close();
                }
                if (ss != null) {
                    try {
                        ss.close();
                    } catch (IOException e4) {
                    }
                }
                return false;
            } catch (Throwable th2) {
                th = th2;
                ds2 = ds;
                ss = ss2;
                if (ds2 != null) {
                    ds2.close();
                }
                if (ss != null) {
                    try {
                        ss.close();
                    } catch (IOException e5) {
                    }
                }
                throw th;
            }
        } catch (IOException e6) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static Set<Integer> getAvailablePorts(int fromPort, int toPort) {
        if (fromPort < 1 || toPort > 49151 || fromPort > toPort) {
            throw new IllegalArgumentException("Invalid port range: " + fromPort + " ~ " + toPort);
        }
        Set<Integer> result = new TreeSet<>();
        for (int i = fromPort; i <= toPort; i++) {
            ServerSocket s = null;
            try {
                ServerSocket s2 = new ServerSocket(i);
                try {
                    result.add(Integer.valueOf(i));
                    if (s2 != null) {
                        try {
                            s2.close();
                        } catch (IOException e) {
                        }
                    }
                } catch (IOException e2) {
                    s = s2;
                    if (s != null) {
                        try {
                            s.close();
                        } catch (IOException e3) {
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    s = s2;
                    if (s != null) {
                        try {
                            s.close();
                        } catch (IOException e4) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e5) {
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return result;
    }
}
