package com.fimi.app.x8s.widget;

import android.content.Context;
import android.support.annotation.NonNull;
import android.view.View;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.widget.impl.NoDoubleClickListener;
/* loaded from: classes.dex */
public class X8PlaybackDoubleCustomDialog extends X8sBaseDialog {
    private int x8PlaybackSynType;
    private X8TabHost x8TabhostPlaybackSyn = (X8TabHost) findViewById(C0885R.C0889id.x8_tabhost_playback_syn);

    /* loaded from: classes.dex */
    public interface onDialogButtonClickListener {
        void onLeft();

        void onRight();
    }

    public X8PlaybackDoubleCustomDialog(@NonNull Context context, @NonNull final onDialogButtonClickListener listener) {
        super(context, C0885R.style.fimisdk_custom_dialog);
        setContentView(C0885R.layout.x8_playback_double_dialog_custom);
        TextView tvLeft = (TextView) findViewById(C0885R.C0889id.btn_left);
        TextView tvRight = (TextView) findViewById(C0885R.C0889id.btn_right);
        tvLeft.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8PlaybackDoubleCustomDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (listener != null) {
                    listener.onLeft();
                }
                X8PlaybackDoubleCustomDialog.this.dismiss();
            }
        });
        tvRight.setOnClickListener(new NoDoubleClickListener(500) { // from class: com.fimi.app.x8s.widget.X8PlaybackDoubleCustomDialog.2
            @Override // com.fimi.widget.impl.NoDoubleClickListener
            protected void onNoDoubleClick(View v) {
                if (listener != null) {
                    X8PlaybackDoubleCustomDialog.this.x8PlaybackSynType = X8PlaybackDoubleCustomDialog.this.x8TabhostPlaybackSyn.getSelectIndex();
                    listener.onRight();
                }
                X8PlaybackDoubleCustomDialog.this.dismiss();
            }
        });
    }

    public int getX8PlaybackSynType() {
        return this.x8PlaybackSynType;
    }
}
