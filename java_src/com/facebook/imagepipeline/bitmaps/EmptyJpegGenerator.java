package com.facebook.imagepipeline.bitmaps;

import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.memory.PooledByteBuffer;
import com.facebook.imagepipeline.memory.PooledByteBufferFactory;
import com.facebook.imagepipeline.memory.PooledByteBufferOutputStream;
import com.fimi.x8sdk.command.FcCollection;
import com.fimi.x8sdk.command.FwUpdateCollection;
import com.fimi.x8sdk.command.X8GimbalCollection;
import com.fimi.x8sdk.dataparser.AutoCameraStateADV;
import java.io.IOException;
/* loaded from: classes.dex */
public class EmptyJpegGenerator {
    private static final byte[] EMPTY_JPEG_PREFIX = {-1, -40, -1, -37, 0, FcCollection.MSG_SET_SURROUND_EXIT, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -64, 0, 17, 8};
    private static final byte[] EMPTY_JPEG_SUFFIX = {3, 1, 34, 0, 2, 17, 0, 3, 17, 0, -1, -60, 0, X8GimbalCollection.MSG_ID_GET_GIMBAL_GAIN, 0, 0, 1, 5, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, -1, -60, 0, -75, 16, 0, 2, 1, 3, 3, 2, 4, 3, 5, 5, 4, 4, 0, 0, 1, 125, 1, 2, 3, 0, 4, 17, 5, 18, 33, 49, FcCollection.MSG_SET_SURROUND_PAUSE, 6, 19, FcCollection.MSG_SET_FOLLOW_PAUSE, FcCollection.MSG_SET_FOLLOW_CLOSE, 7, 34, FcCollection.MSG_SET_GRAVITATION_PAUSE, AutoCameraStateADV.TAKEPHOTO_MODE_FULLVIEW, 50, -127, -111, -95, 8, 35, FcCollection.MSG_SET_SURROUND_RESUME, FwUpdateCollection.MSG_ID_GET_VERSION, -63, 21, FcCollection.MSG_SET_FOLLOW_RESUME, -47, -16, 36, 51, FcCollection.MSG_SET_FOLLOW_NOTITY_FC, FcCollection.MSG_SET_GRAVITATION_RESUME, -126, 9, 10, 22, FcCollection.MSG_ID_GET_LOW_POWER_OPERATION, 24, FcCollection.MSG_ID_SET_ROCKER_EXP, 26, 37, 38, 39, FcCollection.MSG_ID_GET_AUTO_HOME, FcCollection.MSG_ID_SET_ENABLE_TRIPOD, FcCollection.MSG_ID_SET_DISABLE_TRIPOD, 52, 53, FcCollection.MSG_LOCK_MOTOR_STATE, 55, FcCollection.MSG_SET_AUTO_PHOTO_EXCUTE, FcCollection.MSG_SET_AUTO_PHOTO_PAUSE, FcCollection.MSG_SET_AUTO_PHOTO_RESUME, FcCollection.MSG_SET_SURROUND_EXIT, FcCollection.MSG_SET_SURROUND_CIRCLE_DOT, FcCollection.MSG_GET_SURROUND_CIRCLE_DOT, FcCollection.MSG_SET_SURROUND_SPEED, FcCollection.MSG_GET_SURROUND_SPEED, FcCollection.MSG_SET_SURROUND_DEVICE_ORIENTATION, FcCollection.MSG_GET_SURROUND_DEVICE_ORIENTATION, FcCollection.MSG_UPDATE_SURROUND_STATE, FcCollection.MSG_SET_FOLLOW_EXIT, FcCollection.MSG_SET_FOLLOW_STANDBY, FcCollection.MSG_SET_FOLLOW_MODLE, FcCollection.MSG_GET_FOLLOW_MODLE, FcCollection.MSG_SET_FOLLOW_ERROR_CODE, FcCollection.MSG_SET_FOLLOW_SPEED, FcCollection.MSG_GET_FOLLOW_SPEED, 90, FcCollection.MSG_SET_SCREW_START, FcCollection.MSG_SET_SCREW_PAUSE, FcCollection.MSG_SET_SCREW_RESUME, FcCollection.MSG_SET_SCREW_EXITE, FcCollection.MSG_SET_SCREW_PRAMETER, FcCollection.MSG_GET_SCREW_PRAMETER, FcCollection.MSG_ID_SET_PANORAMA_PHOTOGRAPH, FcCollection.MSG_ID_AUTOSEND_PANORAMA_PHOTOGRAPH, FcCollection.MSG_SET_GRAVITATION_EXITE, FcCollection.MSG_SET_GRAVITATION_PRAMETER, FcCollection.MSG_GET_GRAVITATION_PRAMETER, 118, 119, 120, 121, 122, -125, -124, -123, -122, -121, -120, FcCollection.MSG_REST_SYSTEM_PARAMS, -118, -110, -109, -108, -107, -106, -105, -104, -103, -102, -94, -93, -92, -91, -90, -89, -88, -87, -86, -78, -77, -76, -75, -74, -73, -72, -71, -70, -62, -61, -60, -59, -58, -57, -56, -55, -54, -46, -45, -44, -43, -42, -41, -40, -39, -38, -31, -30, -29, -28, -27, -26, -25, -24, -23, -22, -15, -14, -13, -12, -11, -10, -9, -8, -7, -6, -1, -60, 0, X8GimbalCollection.MSG_ID_GET_GIMBAL_GAIN, 1, 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, -1, -60, 0, -75, 17, 0, 2, 1, 2, 4, 4, 3, 4, 7, 5, 4, 4, 0, 1, 2, 119, 0, 1, 2, 3, 17, 4, 5, 33, 49, 6, 18, FcCollection.MSG_SET_SURROUND_PAUSE, FcCollection.MSG_SET_FOLLOW_PAUSE, 7, FcCollection.MSG_SET_FOLLOW_CLOSE, FcCollection.MSG_SET_GRAVITATION_PAUSE, 19, 34, 50, -127, 8, AutoCameraStateADV.TAKEPHOTO_MODE_FULLVIEW, FcCollection.MSG_SET_SURROUND_RESUME, -111, -95, FwUpdateCollection.MSG_ID_GET_VERSION, -63, 9, 35, 51, FcCollection.MSG_SET_FOLLOW_RESUME, -16, 21, FcCollection.MSG_SET_FOLLOW_NOTITY_FC, FcCollection.MSG_SET_GRAVITATION_RESUME, -47, 10, 22, 36, 52, -31, 37, -15, FcCollection.MSG_ID_GET_LOW_POWER_OPERATION, 24, FcCollection.MSG_ID_SET_ROCKER_EXP, 26, 38, 39, FcCollection.MSG_ID_GET_AUTO_HOME, FcCollection.MSG_ID_SET_ENABLE_TRIPOD, FcCollection.MSG_ID_SET_DISABLE_TRIPOD, 53, FcCollection.MSG_LOCK_MOTOR_STATE, 55, FcCollection.MSG_SET_AUTO_PHOTO_EXCUTE, FcCollection.MSG_SET_AUTO_PHOTO_PAUSE, FcCollection.MSG_SET_AUTO_PHOTO_RESUME, FcCollection.MSG_SET_SURROUND_EXIT, FcCollection.MSG_SET_SURROUND_CIRCLE_DOT, FcCollection.MSG_GET_SURROUND_CIRCLE_DOT, FcCollection.MSG_SET_SURROUND_SPEED, FcCollection.MSG_GET_SURROUND_SPEED, FcCollection.MSG_SET_SURROUND_DEVICE_ORIENTATION, FcCollection.MSG_GET_SURROUND_DEVICE_ORIENTATION, FcCollection.MSG_UPDATE_SURROUND_STATE, FcCollection.MSG_SET_FOLLOW_EXIT, FcCollection.MSG_SET_FOLLOW_STANDBY, FcCollection.MSG_SET_FOLLOW_MODLE, FcCollection.MSG_GET_FOLLOW_MODLE, FcCollection.MSG_SET_FOLLOW_ERROR_CODE, FcCollection.MSG_SET_FOLLOW_SPEED, FcCollection.MSG_GET_FOLLOW_SPEED, 90, FcCollection.MSG_SET_SCREW_START, FcCollection.MSG_SET_SCREW_PAUSE, FcCollection.MSG_SET_SCREW_RESUME, FcCollection.MSG_SET_SCREW_EXITE, FcCollection.MSG_SET_SCREW_PRAMETER, FcCollection.MSG_GET_SCREW_PRAMETER, FcCollection.MSG_ID_SET_PANORAMA_PHOTOGRAPH, FcCollection.MSG_ID_AUTOSEND_PANORAMA_PHOTOGRAPH, FcCollection.MSG_SET_GRAVITATION_EXITE, FcCollection.MSG_SET_GRAVITATION_PRAMETER, FcCollection.MSG_GET_GRAVITATION_PRAMETER, 118, 119, 120, 121, 122, -126, -125, -124, -123, -122, -121, -120, FcCollection.MSG_REST_SYSTEM_PARAMS, -118, -110, -109, -108, -107, -106, -105, -104, -103, -102, -94, -93, -92, -91, -90, -89, -88, -87, -86, -78, -77, -76, -75, -74, -73, -72, -71, -70, -62, -61, -60, -59, -58, -57, -56, -55, -54, -46, -45, -44, -43, -42, -41, -40, -39, -38, -30, -29, -28, -27, -26, -25, -24, -23, -22, -14, -13, -12, -11, -10, -9, -8, -7, -6, -1, -38, 0, 12, 3, 1, 0, 2, 17, 3, 17, 0, 63, 0, -114, -118, FcCollection.MSG_ID_GET_AUTO_HOME, -96, 15, -1, -39};
    private final PooledByteBufferFactory mPooledByteBufferFactory;

    public EmptyJpegGenerator(PooledByteBufferFactory pooledByteBufferFactory) {
        this.mPooledByteBufferFactory = pooledByteBufferFactory;
    }

    public CloseableReference<PooledByteBuffer> generate(short width, short height) {
        PooledByteBufferOutputStream os = null;
        try {
            try {
                os = this.mPooledByteBufferFactory.mo1688newOutputStream(EMPTY_JPEG_PREFIX.length + EMPTY_JPEG_SUFFIX.length + 4);
                os.write(EMPTY_JPEG_PREFIX);
                os.write((byte) (height >> 8));
                os.write((byte) (height & 255));
                os.write((byte) (width >> 8));
                os.write((byte) (width & 255));
                os.write(EMPTY_JPEG_SUFFIX);
                return CloseableReference.m1337of(os.mo1689toByteBuffer());
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } finally {
            if (os != null) {
                os.close();
            }
        }
    }
}
