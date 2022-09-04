package com.fimi.app.p009ui.main;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.fimi.android.app.R;
import com.fimi.kernel.animutils.AnimationsContainer;
/* renamed from: com.fimi.app.ui.main.HostX9ProductView */
/* loaded from: classes.dex */
public class HostX9ProductView extends FrameLayout {
    AnimationDrawable animationDrawable;
    ImageView imgX9Product = (ImageView) findViewById(R.id.img_x9_produce);
    AnimationsContainer.FramesSequenceAnimation animation = AnimationsContainer.getInstance(R.array.x9_drone_frame_anim, 50).createProgressDialogAnim(this.imgX9Product);

    public HostX9ProductView(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(R.layout.item_main_x9_product, this);
    }

    public void startAnimation() {
        if (this.animation != null && !this.animation.isShouldRun()) {
            this.animation.start();
        }
    }

    public void stopnAnimation() {
        if (this.animation != null && this.animation.isShouldRun()) {
            this.animation.stop();
        }
    }
}
