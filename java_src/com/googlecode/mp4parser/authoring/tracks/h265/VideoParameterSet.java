package com.googlecode.mp4parser.authoring.tracks.h265;

import com.googlecode.mp4parser.h264.read.CAVLCReader;
import com.googlecode.mp4parser.util.ByteBufferByteChannel;
import java.io.IOException;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
/* loaded from: classes2.dex */
public class VideoParameterSet {
    ByteBuffer vps;
    int vps_parameter_set_id;

    public VideoParameterSet(ByteBuffer vps) throws IOException {
        this.vps = vps;
        CAVLCReader r = new CAVLCReader(Channels.newInputStream(new ByteBufferByteChannel((ByteBuffer) vps.position(0))));
        this.vps_parameter_set_id = r.readU(4, "vps_parameter_set_id");
        r.readU(2, "vps_reserved_three_2bits");
        r.readU(6, "vps_max_layers_minus1");
        int vps_max_sub_layers_minus1 = r.readU(3, "vps_max_sub_layers_minus1");
        r.readBool("vps_temporal_id_nesting_flag");
        r.readU(16, "vps_reserved_0xffff_16bits");
        profile_tier_level(vps_max_sub_layers_minus1, r);
        boolean vps_sub_layer_ordering_info_present_flag = r.readBool("vps_sub_layer_ordering_info_present_flag");
        int[] vps_max_dec_pic_buffering_minus1 = new int[vps_sub_layer_ordering_info_present_flag ? 1 : vps_max_sub_layers_minus1 + 1];
        int[] vps_max_num_reorder_pics = new int[vps_sub_layer_ordering_info_present_flag ? 1 : vps_max_sub_layers_minus1 + 1];
        int[] vps_max_latency_increase_plus1 = new int[vps_sub_layer_ordering_info_present_flag ? 1 : vps_max_sub_layers_minus1 + 1];
        for (int i = vps_sub_layer_ordering_info_present_flag ? 0 : vps_max_sub_layers_minus1; i <= vps_max_sub_layers_minus1; i++) {
            vps_max_dec_pic_buffering_minus1[i] = r.readUE("vps_max_dec_pic_buffering_minus1[" + i + "]");
            vps_max_num_reorder_pics[i] = r.readUE("vps_max_dec_pic_buffering_minus1[" + i + "]");
            vps_max_latency_increase_plus1[i] = r.readUE("vps_max_dec_pic_buffering_minus1[" + i + "]");
        }
        int vps_max_layer_id = r.readU(6, "vps_max_layer_id");
        int vps_num_layer_sets_minus1 = r.readUE("vps_num_layer_sets_minus1");
        boolean[][] layer_id_included_flag = (boolean[][]) Array.newInstance(Boolean.TYPE, vps_num_layer_sets_minus1, vps_max_layer_id);
        for (int i2 = 1; i2 <= vps_num_layer_sets_minus1; i2++) {
            for (int j = 0; j <= vps_max_layer_id; j++) {
                layer_id_included_flag[i2][j] = r.readBool("layer_id_included_flag[" + i2 + "][" + j + "]");
            }
        }
        boolean vps_timing_info_present_flag = r.readBool("vps_timing_info_present_flag");
        if (vps_timing_info_present_flag) {
            r.readU(32, "vps_num_units_in_tick");
            r.readU(32, "vps_time_scale");
            boolean vps_poc_proportional_to_timing_flag = r.readBool("vps_poc_proportional_to_timing_flag");
            if (vps_poc_proportional_to_timing_flag) {
                r.readUE("vps_num_ticks_poc_diff_one_minus1");
            }
            int vps_num_hrd_parameters = r.readUE("vps_num_hrd_parameters");
            int[] hrd_layer_set_idx = new int[vps_num_hrd_parameters];
            boolean[] cprms_present_flag = new boolean[vps_num_hrd_parameters];
            for (int i3 = 0; i3 < vps_num_hrd_parameters; i3++) {
                hrd_layer_set_idx[i3] = r.readUE("hrd_layer_set_idx[" + i3 + "]");
                if (i3 > 0) {
                    cprms_present_flag[i3] = r.readBool("cprms_present_flag[" + i3 + "]");
                } else {
                    cprms_present_flag[0] = true;
                }
                hrd_parameters(cprms_present_flag[i3], vps_max_sub_layers_minus1, r);
            }
        }
        boolean vps_extension_flag = r.readBool("vps_extension_flag");
        if (vps_extension_flag) {
            while (r.moreRBSPData()) {
                r.readBool("vps_extension_data_flag");
            }
        }
        r.readTrailingBits();
    }

    public void profile_tier_level(int maxNumSubLayersMinus1, CAVLCReader r) throws IOException {
        r.readU(2, "general_profile_space ");
        r.readBool("general_tier_flag");
        r.readU(5, "general_profile_idc");
        boolean[] general_profile_compatibility_flag = new boolean[32];
        for (int j = 0; j < 32; j++) {
            general_profile_compatibility_flag[j] = r.readBool("general_profile_compatibility_flag[" + j + "]");
        }
        r.readBool("general_progressive_source_flag");
        r.readBool("general_interlaced_source_flag");
        r.readBool("general_non_packed_constraint_flag");
        r.readBool("general_frame_only_constraint_flag");
        r.readU(44, "general_reserved_zero_44bits");
        r.readU(8, "general_level_idc");
        boolean[] sub_layer_profile_present_flag = new boolean[maxNumSubLayersMinus1];
        boolean[] sub_layer_level_present_flag = new boolean[maxNumSubLayersMinus1];
        for (int i = 0; i < maxNumSubLayersMinus1; i++) {
            sub_layer_profile_present_flag[i] = r.readBool("sub_layer_profile_present_flag[" + i + "]");
            sub_layer_level_present_flag[i] = r.readBool("sub_layer_level_present_flag[" + i + "]");
        }
        if (maxNumSubLayersMinus1 > 0) {
            for (int i2 = maxNumSubLayersMinus1; i2 < 8; i2++) {
                r.readU(2, "reserved_zero_2bits");
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
        int[] sub_layer_level_idc = new int[maxNumSubLayersMinus1];
        for (int i3 = 0; i3 < maxNumSubLayersMinus1; i3++) {
            if (sub_layer_profile_present_flag[i3]) {
                sub_layer_profile_space[i3] = r.readU(2, "sub_layer_profile_space[" + i3 + "]");
                sub_layer_tier_flag[i3] = r.readBool("sub_layer_tier_flag[" + i3 + "]");
                sub_layer_profile_idc[i3] = r.readU(5, "sub_layer_profile_idc[" + i3 + "]");
                for (int j2 = 0; j2 < 32; j2++) {
                    sub_layer_profile_compatibility_flag[i3][j2] = r.readBool("sub_layer_profile_compatibility_flag[" + i3 + "][" + j2 + "]");
                }
                sub_layer_progressive_source_flag[i3] = r.readBool("sub_layer_progressive_source_flag[" + i3 + "]");
                sub_layer_interlaced_source_flag[i3] = r.readBool("sub_layer_interlaced_source_flag[" + i3 + "]");
                sub_layer_non_packed_constraint_flag[i3] = r.readBool("sub_layer_non_packed_constraint_flag[" + i3 + "]");
                sub_layer_frame_only_constraint_flag[i3] = r.readBool("sub_layer_frame_only_constraint_flag[" + i3 + "]");
                r.readNBit(44, "reserved");
            }
            if (sub_layer_level_present_flag[i3]) {
                sub_layer_level_idc[i3] = r.readU(8, "sub_layer_level_idc");
            }
        }
    }

    private void hrd_parameters(boolean commonInfPresentFlag, int maxNumSubLayersMinus1, CAVLCReader r) throws IOException {
        boolean nal_hrd_parameters_present_flag = false;
        boolean vcl_hrd_parameters_present_flag = false;
        boolean sub_pic_hrd_params_present_flag = false;
        if (commonInfPresentFlag) {
            nal_hrd_parameters_present_flag = r.readBool("nal_hrd_parameters_present_flag");
            vcl_hrd_parameters_present_flag = r.readBool("vcl_hrd_parameters_present_flag");
            if (nal_hrd_parameters_present_flag || vcl_hrd_parameters_present_flag) {
                sub_pic_hrd_params_present_flag = r.readBool("sub_pic_hrd_params_present_flag");
                if (sub_pic_hrd_params_present_flag) {
                    r.readU(8, "tick_divisor_minus2");
                    r.readU(5, "du_cpb_removal_delay_increment_length_minus1");
                    r.readBool("sub_pic_cpb_params_in_pic_timing_sei_flag");
                    r.readU(5, "dpb_output_delay_du_length_minus1");
                }
                r.readU(4, "bit_rate_scale");
                r.readU(4, "cpb_size_scale");
                if (sub_pic_hrd_params_present_flag) {
                    r.readU(4, "cpb_size_du_scale");
                }
                r.readU(5, "initial_cpb_removal_delay_length_minus1");
                r.readU(5, "au_cpb_removal_delay_length_minus1");
                r.readU(5, "dpb_output_delay_length_minus1");
            }
        }
        boolean[] fixed_pic_rate_general_flag = new boolean[maxNumSubLayersMinus1];
        boolean[] fixed_pic_rate_within_cvs_flag = new boolean[maxNumSubLayersMinus1];
        boolean[] low_delay_hrd_flag = new boolean[maxNumSubLayersMinus1];
        int[] cpb_cnt_minus1 = new int[maxNumSubLayersMinus1];
        int[] elemental_duration_in_tc_minus1 = new int[maxNumSubLayersMinus1];
        for (int i = 0; i <= maxNumSubLayersMinus1; i++) {
            fixed_pic_rate_general_flag[i] = r.readBool("fixed_pic_rate_general_flag[" + i + "]");
            if (!fixed_pic_rate_general_flag[i]) {
                fixed_pic_rate_within_cvs_flag[i] = r.readBool("fixed_pic_rate_within_cvs_flag[" + i + "]");
            }
            if (fixed_pic_rate_within_cvs_flag[i]) {
                elemental_duration_in_tc_minus1[i] = r.readUE("elemental_duration_in_tc_minus1[" + i + "]");
            } else {
                low_delay_hrd_flag[i] = r.readBool("low_delay_hrd_flag[" + i + "]");
            }
            if (!low_delay_hrd_flag[i]) {
                cpb_cnt_minus1[i] = r.readUE("cpb_cnt_minus1[" + i + "]");
            }
            if (nal_hrd_parameters_present_flag) {
                sub_layer_hrd_parameters(i, cpb_cnt_minus1[i], sub_pic_hrd_params_present_flag, r);
            }
            if (vcl_hrd_parameters_present_flag) {
                sub_layer_hrd_parameters(i, cpb_cnt_minus1[i], sub_pic_hrd_params_present_flag, r);
            }
        }
    }

    void sub_layer_hrd_parameters(int subLayerId, int cpbCnt, boolean sub_pic_hrd_params_present_flag, CAVLCReader r) throws IOException {
        int[] bit_rate_value_minus1 = new int[cpbCnt];
        int[] cpb_size_value_minus1 = new int[cpbCnt];
        int[] cpb_size_du_value_minus1 = new int[cpbCnt];
        int[] bit_rate_du_value_minus1 = new int[cpbCnt];
        boolean[] cbr_flag = new boolean[cpbCnt];
        for (int i = 0; i <= cpbCnt; i++) {
            bit_rate_value_minus1[i] = r.readUE("bit_rate_value_minus1[" + i + "]");
            cpb_size_value_minus1[i] = r.readUE("cpb_size_value_minus1[" + i + "]");
            if (sub_pic_hrd_params_present_flag) {
                cpb_size_du_value_minus1[i] = r.readUE("cpb_size_du_value_minus1[" + i + "]");
                bit_rate_du_value_minus1[i] = r.readUE("bit_rate_du_value_minus1[" + i + "]");
            }
            cbr_flag[i] = r.readBool("cbr_flag[" + i + "]");
        }
    }

    public ByteBuffer toByteBuffer() {
        return this.vps;
    }
}
