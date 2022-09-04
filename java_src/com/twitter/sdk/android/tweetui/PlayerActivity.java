package com.twitter.sdk.android.tweetui;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import com.twitter.sdk.android.core.internal.scribe.ScribeItem;
import com.twitter.sdk.android.tweetui.internal.SwipeToDismissTouchListener;
import java.io.Serializable;
/* loaded from: classes2.dex */
public class PlayerActivity extends Activity {
    public static final String PLAYER_ITEM = "PLAYER_ITEM";
    public static final String SCRIBE_ITEM = "SCRIBE_ITEM";
    static final VideoScribeClient videoScribeClient = new VideoScribeClientImpl(TweetUi.getInstance());
    PlayerController playerController;

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(C2168R.layout.tw__player_activity);
        PlayerItem item = (PlayerItem) getIntent().getSerializableExtra(PLAYER_ITEM);
        View rootView = findViewById(16908290);
        this.playerController = new PlayerController(rootView, new SwipeToDismissTouchListener.Callback() { // from class: com.twitter.sdk.android.tweetui.PlayerActivity.1
            @Override // com.twitter.sdk.android.tweetui.internal.SwipeToDismissTouchListener.Callback
            public void onDismiss() {
                PlayerActivity.this.finish();
                PlayerActivity.this.overridePendingTransition(0, C2168R.C2169anim.tw__slide_out);
            }

            @Override // com.twitter.sdk.android.tweetui.internal.SwipeToDismissTouchListener.Callback
            public void onMove(float translationY) {
            }
        });
        this.playerController.prepare(item);
        ScribeItem scribeItem = (ScribeItem) getIntent().getSerializableExtra(SCRIBE_ITEM);
        scribeCardPlayImpression(scribeItem);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.playerController.onResume();
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.playerController.onPause();
        super.onPause();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.playerController.onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(0, C2168R.C2169anim.tw__slide_out);
    }

    private void scribeCardPlayImpression(ScribeItem scribeItem) {
        videoScribeClient.play(scribeItem);
    }

    /* loaded from: classes2.dex */
    public static class PlayerItem implements Serializable {
        public final String callToActionText;
        public final String callToActionUrl;
        public final boolean looping;
        public final boolean showVideoControls;
        public final String url;

        public PlayerItem(String url, boolean looping, boolean showVideoControls, String callToActionText, String callToActionUrl) {
            this.url = url;
            this.looping = looping;
            this.showVideoControls = showVideoControls;
            this.callToActionText = callToActionText;
            this.callToActionUrl = callToActionUrl;
        }
    }
}
