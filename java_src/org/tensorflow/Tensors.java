package org.tensorflow;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
/* loaded from: classes2.dex */
public final class Tensors {
    private Tensors() {
    }

    public static Tensor<String> create(String data) {
        return Tensor.create(data.getBytes(StandardCharsets.UTF_8), String.class);
    }

    public static Tensor<String> create(String data, Charset charset) {
        return Tensor.create(data.getBytes(charset), String.class);
    }

    public static Tensor<Float> create(float data) {
        return Tensor.create(Float.valueOf(data), Float.class);
    }

    public static Tensor<Float> create(float[] data) {
        return Tensor.create(data, Float.class);
    }

    public static Tensor<Float> create(float[][] data) {
        return Tensor.create(data, Float.class);
    }

    public static Tensor<Float> create(float[][][] data) {
        return Tensor.create(data, Float.class);
    }

    public static Tensor<Float> create(float[][][][] data) {
        return Tensor.create(data, Float.class);
    }

    public static Tensor<Float> create(float[][][][][] data) {
        return Tensor.create(data, Float.class);
    }

    public static Tensor<Float> create(float[][][][][][] data) {
        return Tensor.create(data, Float.class);
    }

    public static Tensor<Double> create(double data) {
        return Tensor.create(Double.valueOf(data), Double.class);
    }

    public static Tensor<Double> create(double[] data) {
        return Tensor.create(data, Double.class);
    }

    public static Tensor<Double> create(double[][] data) {
        return Tensor.create(data, Double.class);
    }

    public static Tensor<Double> create(double[][][] data) {
        return Tensor.create(data, Double.class);
    }

    public static Tensor<Double> create(double[][][][] data) {
        return Tensor.create(data, Double.class);
    }

    public static Tensor<Double> create(double[][][][][] data) {
        return Tensor.create(data, Double.class);
    }

    public static Tensor<Double> create(double[][][][][][] data) {
        return Tensor.create(data, Double.class);
    }

    public static Tensor<Integer> create(int data) {
        return Tensor.create(Integer.valueOf(data), Integer.class);
    }

    public static Tensor<Integer> create(int[] data) {
        return Tensor.create(data, Integer.class);
    }

    public static Tensor<Integer> create(int[][] data) {
        return Tensor.create(data, Integer.class);
    }

    public static Tensor<Integer> create(int[][][] data) {
        return Tensor.create(data, Integer.class);
    }

    public static Tensor<Integer> create(int[][][][] data) {
        return Tensor.create(data, Integer.class);
    }

    public static Tensor<Integer> create(int[][][][][] data) {
        return Tensor.create(data, Integer.class);
    }

    public static Tensor<Integer> create(int[][][][][][] data) {
        return Tensor.create(data, Integer.class);
    }

    public static Tensor<String> create(byte[] data) {
        return Tensor.create(data, String.class);
    }

    public static Tensor<String> create(byte[][] data) {
        return Tensor.create(data, String.class);
    }

    public static Tensor<String> create(byte[][][] data) {
        return Tensor.create(data, String.class);
    }

    public static Tensor<String> create(byte[][][][] data) {
        return Tensor.create(data, String.class);
    }

    public static Tensor<String> create(byte[][][][][] data) {
        return Tensor.create(data, String.class);
    }

    public static Tensor<String> create(byte[][][][][][] data) {
        return Tensor.create(data, String.class);
    }

    public static Tensor<Long> create(long data) {
        return Tensor.create(Long.valueOf(data), Long.class);
    }

    public static Tensor<Long> create(long[] data) {
        return Tensor.create(data, Long.class);
    }

    public static Tensor<Long> create(long[][] data) {
        return Tensor.create(data, Long.class);
    }

    public static Tensor<Long> create(long[][][] data) {
        return Tensor.create(data, Long.class);
    }

    public static Tensor<Long> create(long[][][][] data) {
        return Tensor.create(data, Long.class);
    }

    public static Tensor<Long> create(long[][][][][] data) {
        return Tensor.create(data, Long.class);
    }

    public static Tensor<Long> create(long[][][][][][] data) {
        return Tensor.create(data, Long.class);
    }

    public static Tensor<Boolean> create(boolean data) {
        return Tensor.create(Boolean.valueOf(data), Boolean.class);
    }

    public static Tensor<Boolean> create(boolean[] data) {
        return Tensor.create(data, Boolean.class);
    }

    public static Tensor<Boolean> create(boolean[][] data) {
        return Tensor.create(data, Boolean.class);
    }

    public static Tensor<Boolean> create(boolean[][][] data) {
        return Tensor.create(data, Boolean.class);
    }

    public static Tensor<Boolean> create(boolean[][][][] data) {
        return Tensor.create(data, Boolean.class);
    }

    public static Tensor<Boolean> create(boolean[][][][][] data) {
        return Tensor.create(data, Boolean.class);
    }

    public static Tensor<Boolean> create(boolean[][][][][][] data) {
        return Tensor.create(data, Boolean.class);
    }
}
