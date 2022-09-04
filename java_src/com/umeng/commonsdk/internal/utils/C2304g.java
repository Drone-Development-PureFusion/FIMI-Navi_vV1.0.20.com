package com.umeng.commonsdk.internal.utils;

import android.os.Process;
import com.fimi.kernel.animutils.IOUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
/* compiled from: ProcessUtil.java */
/* renamed from: com.umeng.commonsdk.internal.utils.g */
/* loaded from: classes2.dex */
public class C2304g {

    /* renamed from: a */
    private static final String f799a = IOUtils.LINE_SEPARATOR_UNIX;

    /* renamed from: b */
    private static final byte[] f800b = "\nexit\n".getBytes();

    /* renamed from: c */
    private static byte[] f801c = new byte[32];

    /* JADX WARN: Removed duplicated region for block: B:33:0x005f A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0093  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m869a(String... strArr) {
        Throwable th;
        OutputStream outputStream;
        InputStream inputStream;
        InputStream inputStream2;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        Process process;
        OutputStream outputStream2;
        InputStream inputStream3;
        InputStreamReader inputStreamReader2;
        BufferedReader bufferedReader2;
        StringBuilder sb;
        try {
            process = new ProcessBuilder(new String[0]).command(strArr).start();
            try {
                outputStream2 = process.getOutputStream();
                try {
                    inputStream2 = process.getInputStream();
                    try {
                        inputStream3 = process.getErrorStream();
                        try {
                            outputStream2.write(f800b);
                            outputStream2.flush();
                            process.waitFor();
                            inputStreamReader2 = new InputStreamReader(inputStream2);
                            try {
                                bufferedReader2 = new BufferedReader(inputStreamReader2);
                                try {
                                    try {
                                        String readLine = bufferedReader2.readLine();
                                        if (readLine != null) {
                                            sb = new StringBuilder();
                                            try {
                                                sb.append(readLine);
                                                sb.append(f799a);
                                                while (true) {
                                                    String readLine2 = bufferedReader2.readLine();
                                                    if (readLine2 == null) {
                                                        break;
                                                    }
                                                    sb.append(readLine2);
                                                    sb.append(f799a);
                                                }
                                            } catch (IOException e) {
                                                m871a(outputStream2, inputStream3, inputStream2, inputStreamReader2, bufferedReader2);
                                                if (process != null) {
                                                    m867c(process);
                                                }
                                                if (sb == null) {
                                                }
                                            } catch (Exception e2) {
                                                m871a(outputStream2, inputStream3, inputStream2, inputStreamReader2, bufferedReader2);
                                                if (process != null) {
                                                    m867c(process);
                                                }
                                                if (sb == null) {
                                                }
                                            }
                                        } else {
                                            sb = null;
                                        }
                                        do {
                                        } while (inputStream3.read(f801c) > 0);
                                        m871a(outputStream2, inputStream3, inputStream2, inputStreamReader2, bufferedReader2);
                                        if (process != null) {
                                            m867c(process);
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        outputStream = outputStream2;
                                        inputStream = inputStream3;
                                        inputStreamReader = inputStreamReader2;
                                        bufferedReader = bufferedReader2;
                                        m871a(outputStream, inputStream, inputStream2, inputStreamReader, bufferedReader);
                                        if (process != null) {
                                            m867c(process);
                                        }
                                        throw th;
                                    }
                                } catch (IOException e3) {
                                    sb = null;
                                } catch (Exception e4) {
                                    sb = null;
                                }
                            } catch (IOException e5) {
                                bufferedReader2 = null;
                                sb = null;
                            } catch (Exception e6) {
                                bufferedReader2 = null;
                                sb = null;
                            } catch (Throwable th3) {
                                th = th3;
                                outputStream = outputStream2;
                                inputStream = inputStream3;
                                inputStreamReader = inputStreamReader2;
                                bufferedReader = null;
                            }
                        } catch (IOException e7) {
                            inputStreamReader2 = null;
                            bufferedReader2 = null;
                            sb = null;
                        } catch (Exception e8) {
                            inputStreamReader2 = null;
                            bufferedReader2 = null;
                            sb = null;
                        } catch (Throwable th4) {
                            th = th4;
                            outputStream = outputStream2;
                            inputStream = inputStream3;
                            inputStreamReader = null;
                            bufferedReader = null;
                        }
                    } catch (IOException e9) {
                        inputStream3 = null;
                        inputStreamReader2 = null;
                        bufferedReader2 = null;
                        sb = null;
                    } catch (Exception e10) {
                        inputStream3 = null;
                        inputStreamReader2 = null;
                        bufferedReader2 = null;
                        sb = null;
                    } catch (Throwable th5) {
                        th = th5;
                        outputStream = outputStream2;
                        inputStream = null;
                        inputStreamReader = null;
                        bufferedReader = null;
                    }
                } catch (IOException e11) {
                    inputStream3 = null;
                    inputStream2 = null;
                    inputStreamReader2 = null;
                    bufferedReader2 = null;
                    sb = null;
                } catch (Exception e12) {
                    inputStream3 = null;
                    inputStream2 = null;
                    inputStreamReader2 = null;
                    bufferedReader2 = null;
                    sb = null;
                } catch (Throwable th6) {
                    th = th6;
                    outputStream = outputStream2;
                    inputStream = null;
                    inputStream2 = null;
                    inputStreamReader = null;
                    bufferedReader = null;
                }
            } catch (IOException e13) {
                outputStream2 = null;
                inputStream3 = null;
                inputStream2 = null;
                inputStreamReader2 = null;
                bufferedReader2 = null;
                sb = null;
            } catch (Exception e14) {
                outputStream2 = null;
                inputStream3 = null;
                inputStream2 = null;
                inputStreamReader2 = null;
                bufferedReader2 = null;
                sb = null;
            } catch (Throwable th7) {
                th = th7;
                outputStream = null;
                inputStream = null;
                inputStream2 = null;
                inputStreamReader = null;
                bufferedReader = null;
            }
        } catch (IOException e15) {
            outputStream2 = null;
            inputStream3 = null;
            inputStream2 = null;
            inputStreamReader2 = null;
            bufferedReader2 = null;
            sb = null;
            process = null;
        } catch (Exception e16) {
            outputStream2 = null;
            inputStream3 = null;
            inputStream2 = null;
            inputStreamReader2 = null;
            bufferedReader2 = null;
            sb = null;
            process = null;
        } catch (Throwable th8) {
            th = th8;
            outputStream = null;
            inputStream = null;
            inputStream2 = null;
            inputStreamReader = null;
            bufferedReader = null;
            process = null;
        }
        if (sb == null) {
            return null;
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static void m871a(OutputStream outputStream, InputStream inputStream, InputStream inputStream2, InputStreamReader inputStreamReader, BufferedReader bufferedReader) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e) {
            }
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
            }
        }
        if (inputStream2 != null) {
            try {
                inputStream2.close();
            } catch (IOException e3) {
            }
        }
        if (inputStreamReader != null) {
            try {
                inputStreamReader.close();
            } catch (IOException e4) {
            }
        }
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (IOException e5) {
            }
        }
    }

    /* renamed from: a */
    private static void m870a(Process process) {
        int m868b = m868b(process);
        if (m868b != 0) {
            try {
                Process.killProcess(m868b);
            } catch (Exception e) {
                try {
                    process.destroy();
                } catch (Exception e2) {
                }
            }
        }
    }

    /* renamed from: b */
    private static int m868b(Process process) {
        String obj = process.toString();
        try {
            return Integer.parseInt(obj.substring(obj.indexOf("=") + 1, obj.indexOf("]")));
        } catch (Exception e) {
            return 0;
        }
    }

    /* renamed from: c */
    private static void m867c(Process process) {
        if (process != null) {
            try {
                if (process.exitValue() != 0) {
                    m870a(process);
                }
            } catch (IllegalThreadStateException e) {
                m870a(process);
            }
        }
    }
}
