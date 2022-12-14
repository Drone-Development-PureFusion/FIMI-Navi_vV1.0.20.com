package com.googlecode.mp4parser.authoring.tracks.h265;

import com.googlecode.mp4parser.h264.read.CAVLCReader;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
/* loaded from: classes2.dex */
public class SequenceParameterSetRbsp {
    public SequenceParameterSetRbsp(InputStream is) throws IOException {
        CAVLCReader bsr = new CAVLCReader(is);
        int readNBit = (int) bsr.readNBit(4, "sps_video_parameter_set_id");
        int sps_max_sub_layers_minus1 = (int) bsr.readNBit(3, "sps_max_sub_layers_minus1");
        bsr.readBool("sps_temporal_id_nesting_flag");
        profile_tier_level(sps_max_sub_layers_minus1, bsr);
        bsr.readUE("sps_seq_parameter_set_id");
        int chroma_format_idc = bsr.readUE("chroma_format_idc");
        if (chroma_format_idc == 3) {
            bsr.read1Bit();
            bsr.readUE("pic_width_in_luma_samples");
            bsr.readUE("pic_width_in_luma_samples");
            boolean conformance_window_flag = bsr.readBool("conformance_window_flag");
            if (conformance_window_flag) {
                bsr.readUE("conf_win_left_offset");
                bsr.readUE("conf_win_right_offset");
                bsr.readUE("conf_win_top_offset");
                bsr.readUE("conf_win_bottom_offset");
            }
        }
        bsr.readUE("bit_depth_luma_minus8");
        bsr.readUE("bit_depth_chroma_minus8");
        bsr.readUE("log2_max_pic_order_cnt_lsb_minus4");
        boolean sps_sub_layer_ordering_info_present_flag = bsr.readBool("sps_sub_layer_ordering_info_present_flag");
        int j = (sps_max_sub_layers_minus1 - (sps_sub_layer_ordering_info_present_flag ? 0 : sps_max_sub_layers_minus1)) + 1;
        int[] sps_max_dec_pic_buffering_minus1 = new int[j];
        int[] sps_max_num_reorder_pics = new int[j];
        int[] sps_max_latency_increase_plus1 = new int[j];
        for (int i = sps_sub_layer_ordering_info_present_flag ? 0 : sps_max_sub_layers_minus1; i <= sps_max_sub_layers_minus1; i++) {
            sps_max_dec_pic_buffering_minus1[i] = bsr.readUE("sps_max_dec_pic_buffering_minus1[" + i + "]");
            sps_max_num_reorder_pics[i] = bsr.readUE("sps_max_num_reorder_pics[" + i + "]");
            sps_max_latency_increase_plus1[i] = bsr.readUE("sps_max_latency_increase_plus1[" + i + "]");
        }
        bsr.readUE("log2_min_luma_coding_block_size_minus3");
        bsr.readUE("log2_diff_max_min_luma_coding_block_size");
        bsr.readUE("log2_min_transform_block_size_minus2");
        bsr.readUE("log2_diff_max_min_transform_block_size");
        bsr.readUE("max_transform_hierarchy_depth_inter");
        bsr.readUE("max_transform_hierarchy_depth_intra");
        boolean scaling_list_enabled_flag = bsr.readBool("scaling_list_enabled_flag");
        if (scaling_list_enabled_flag) {
            boolean sps_scaling_list_data_present_flag = bsr.readBool("sps_scaling_list_data_present_flag");
            if (sps_scaling_list_data_present_flag) {
                scaling_list_data(bsr);
            }
        }
        bsr.readBool("amp_enabled_flag");
        bsr.readBool("sample_adaptive_offset_enabled_flag");
        boolean pcm_enabled_flag = bsr.readBool("pcm_enabled_flag");
        if (pcm_enabled_flag) {
            int readNBit2 = (int) bsr.readNBit(4, "pcm_sample_bit_depth_luma_minus1");
            int readNBit3 = (int) bsr.readNBit(4, "pcm_sample_bit_depth_chroma_minus1");
            bsr.readUE("log2_min_pcm_luma_coding_block_size_minus3");
        }
    }

    private void scaling_list_data(CAVLCReader bsr) throws IOException {
        boolean[][] scaling_list_pred_mode_flag = new boolean[4];
        int[][] scaling_list_pred_matrix_id_delta = new int[4];
        int[][] scaling_list_dc_coef_minus8 = new int[2];
        int[][][] ScalingList = new int[4][];
        int sizeId = 0;
        while (sizeId < 4) {
            int matrixId = 0;
            while (true) {
                if (matrixId >= (sizeId == 3 ? 2 : 6)) {
                    break;
                }
                scaling_list_pred_mode_flag[sizeId] = new boolean[sizeId == 3 ? 2 : 6];
                scaling_list_pred_matrix_id_delta[sizeId] = new int[sizeId == 3 ? 2 : 6];
                ScalingList[sizeId] = new int[sizeId == 3 ? 2 : 6];
                scaling_list_pred_mode_flag[sizeId][matrixId] = bsr.readBool();
                if (!scaling_list_pred_mode_flag[sizeId][matrixId]) {
                    scaling_list_pred_matrix_id_delta[sizeId][matrixId] = bsr.readUE("scaling_list_pred_matrix_id_delta[" + sizeId + "][" + matrixId + "]");
                } else {
                    int nextCoef = 8;
                    int coefNum = Math.min(64, 1 << ((sizeId << 1) + 4));
                    if (sizeId > 1) {
                        scaling_list_dc_coef_minus8[sizeId - 2][matrixId] = bsr.readSE("scaling_list_dc_coef_minus8[" + sizeId + "- 2][" + matrixId + "]");
                        nextCoef = scaling_list_dc_coef_minus8[sizeId - 2][matrixId] + 8;
                    }
                    ScalingList[sizeId][matrixId] = new int[coefNum];
                    for (int i = 0; i < coefNum; i++) {
                        int scaling_list_delta_coef = bsr.readSE("scaling_list_delta_coef ");
                        nextCoef = ((nextCoef + scaling_list_delta_coef) + 256) % 256;
                        ScalingList[sizeId][matrixId][i] = nextCoef;
                    }
                }
                matrixId++;
            }
            sizeId++;
        }
    }

    private void profile_tier_level(int maxNumSubLayersMinus1, CAVLCReader bsr) throws IOException {
        bsr.readU(2, "general_profile_space");
        bsr.readBool("general_tier_flag");
        bsr.readU(5, "general_profile_idc");
        boolean[] general_profile_compatibility_flag = new boolean[32];
        for (int j = 0; j < 32; j++) {
            general_profile_compatibility_flag[j] = bsr.readBool();
        }
        bsr.readBool("general_progressive_source_flag");
        bsr.readBool("general_interlaced_source_flag");
        bsr.readBool("general_non_packed_constraint_flag");
        bsr.readBool("general_frame_only_constraint_flag");
        bsr.readNBit(44, "general_reserved_zero_44bits");
        bsr.readByte();
        boolean[] sub_layer_profile_present_flag = new boolean[maxNumSubLayersMinus1];
        boolean[] sub_layer_level_present_flag = new boolean[maxNumSubLayersMinus1];
        for (int i = 0; i < maxNumSubLayersMinus1; i++) {
            sub_layer_profile_present_flag[i] = bsr.readBool("sub_layer_profile_present_flag[" + i + "]");
            sub_layer_level_present_flag[i] = bsr.readBool("sub_layer_level_present_flag[" + i + "]");
        }
        if (maxNumSubLayersMinus1 > 0) {
            int[] reserved_zero_2bits = new int[8];
            for (int i2 = maxNumSubLayersMinus1; i2 < 8; i2++) {
                reserved_zero_2bits[i2] = bsr.readU(2, "reserved_zero_2bits[" + i2 + "]");
            }
        }
        int[] sub_layer_profile_space = new int[maxNumSubLayersMinus1];
        boolean[] sub_layer_tier_flag = new boolean[maxNumSubLayersMinus1];
        int[] sub_layer_profile_idc = new int[maxNumSubLayersMinus1];
        boolean[][] sub_layer_profile_compatibility_flag = (boolean[][]) Array.newInstance(Boolean.TYPE, maxNumSubLayersMinus1, 32);
        boolean[] sub_layer_progressive_source_flag = new boolean[maxNumSubLayersMinus1];
        boolean[] sub_layer_interlaced_source_flag = new boolean[maxNumSubLayersMinus1];
        boolean[] sub_layer_non_packed_constraint_flag = new boolean[maxNumSubLayersMinus1];
        boolean[] sub_layer_frame_only_constraint_flag = new boolean[maxNumSubLayersMinus1];
        long[] sub_layer_reserved_zero_44bits = new long[maxNumSubLayersMinus1];
        int[] sub_layer_level_idc = new int[maxNumSubLayersMinus1];
        for (int i3 = 0; i3 < maxNumSubLayersMinus1; i3++) {
            if (sub_layer_profile_present_flag[i3]) {
                sub_layer_profile_space[i3] = bsr.readU(2, "sub_layer_profile_space[" + i3 + "]");
                sub_layer_tier_flag[i3] = bsr.readBool("sub_layer_tier_flag[" + i3 + "]");
                sub_layer_profile_idc[i3] = bsr.readU(5, "sub_layer_profile_idc[" + i3 + "]");
                for (int j2 = 0; j2 < 32; j2++) {
                    sub_layer_profile_compatibility_flag[i3][j2] = bsr.readBool("sub_layer_profile_compatibility_flag[" + i3 + "][" + j2 + "]");
                }
                sub_layer_progressive_source_flag[i3] = bsr.readBool("sub_layer_progressive_source_flag[" + i3 + "]");
                sub_layer_interlaced_source_flag[i3] = bsr.readBool("sub_layer_interlaced_source_flag[" + i3 + "]");
                sub_layer_non_packed_constraint_flag[i3] = bsr.readBool("sub_layer_non_packed_constraint_flag[" + i3 + "]");
                sub_layer_frame_only_constraint_flag[i3] = bsr.readBool("sub_layer_frame_only_constraint_flag[" + i3 + "]");
                sub_layer_reserved_zero_44bits[i3] = bsr.readNBit(44);
            }
            if (sub_layer_level_present_flag[i3]) {
                sub_layer_level_idc[i3] = bsr.readU(8, "sub_layer_level_idc[" + i3 + "]");
            }
        }
    }
}
