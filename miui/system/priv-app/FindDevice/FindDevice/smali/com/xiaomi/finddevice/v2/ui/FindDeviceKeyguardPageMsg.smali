.class public Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;
.super Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;
.source "FindDeviceKeyguardPageMsg.java"


# instance fields
.field private mAccountChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mActivateButton:Landroid/widget/Button;

.field private mDisplayId:Ljava/lang/String;

.field private mDisplayIdView:Landroid/widget/TextView;

.field private mLockIconClickCount:I

.field private mLockIconClickTimeoutTimer:Landroid/os/Handler;

.field private mLockIconImageView:Landroid/widget/ImageView;

.field private mLockIconTitleView:Landroid/widget/TextView;

.field private mLockIconView:Landroid/view/View;

.field private mPaperView:Landroid/view/View;

.field private mPhoneView:Landroid/widget/TextView;

.field private mWordsView:Landroid/widget/TextView;


# direct methods
.method static synthetic -wrap0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->onActiveButtonClicked()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->onLockIconClickTimeout()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->onLockIconClicked()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->updateLockTitle()V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "keyguard"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V

    .line 45
    return-void
.end method

.method private beginLockIconClickTimeoutTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mLockIconClickTimeoutTimer:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mLockIconClickTimeoutTimer:Landroid/os/Handler;

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 233
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 171
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mPaperView:Landroid/view/View;

    .line 172
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mLockIconView:Landroid/view/View;

    .line 173
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mLockIconImageView:Landroid/widget/ImageView;

    .line 174
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mLockIconTitleView:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mWordsView:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mPhoneView:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mActivateButton:Landroid/widget/Button;

    .line 178
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mDisplayIdView:Landroid/widget/TextView;

    .line 170
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 239
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mPaperView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->onGetBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 242
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mLockIconView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 245
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->onGetLockViewMarginTopDip()F

    move-result v1

    .line 246
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 244
    const/4 v3, 0x1

    .line 243
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 248
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mLockIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->onGetLockIconImageResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mActivateButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->onGetActivateButtonVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 251
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->updateMessageViews()V

    .line 252
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->updateLockTitle()V

    .line 253
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->updateDisplayIdView()V

    .line 255
    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/UpdateLockMessageTask;->doAll()V

    .line 238
    return-void
.end method

.method private loadMessage()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 273
    const-string/jumbo v2, "keyguard_page_msg"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 274
    const-string/jumbo v3, "message"

    .line 273
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    new-instance v2, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;

    invoke-direct {v2, v4, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 281
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Should not happen. "

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private onActiveButtonClicked()V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->getKeyguard()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    move-result-object v0

    const-string/jumbo v1, "UNLOCK"

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->switchToPage(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method private onLockIconClickTimeout()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mLockIconClickCount:I

    .line 229
    return-void
.end method

.method private onLockIconClicked()V
    .locals 2

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->beginLockIconClickTimeoutTimer()V

    .line 218
    iget v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mLockIconClickCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mLockIconClickCount:I

    .line 219
    iget v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mLockIconClickCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->onLockIconResponse()V

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mLockIconClickCount:I

    .line 216
    :cond_0
    return-void
.end method

.method private onLockIconResponse()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mDisplayIdView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    return-void
.end method

.method private registerAccountChangedReceiver()V
    .locals 4

    .prologue
    .line 201
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg$4;

    invoke-direct {v0, p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg$4;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mAccountChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mAccountChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 209
    const-string/jumbo v2, "com.xiaomi.account.permission.SEND_ACCOUNT_POST_CHANGE_BROADCAST"

    const/4 v3, 0x0

    .line 207
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 200
    return-void
.end method

.method private registerViewListeners()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mActivateButton:Landroid/widget/Button;

    .line 183
    new-instance v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg$2;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;)V

    .line 182
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mLockIconView:Landroid/view/View;

    .line 191
    new-instance v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg$3;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;)V

    .line 190
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    return-void
.end method

.method private saveMessage(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;)V
    .locals 3
    .param p1, "msg"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;

    .prologue
    .line 267
    const-string/jumbo v0, "keyguard_page_msg"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 268
    const-string/jumbo v1, "message"

    invoke-virtual {p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    return-void
.end method

.method private updateDisplayIdView()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mDisplayIdView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mDisplayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-void
.end method

.method private updateLockTitle()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mLockIconTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->onGetLockTitleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    return-void
.end method

.method private updateMessageViews()V
    .locals 3

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->loadMessage()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mWordsView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mPhoneView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->onUpdateMessageView(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 258
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg$1;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mLockIconClickTimeoutTimer:Landroid/os/Handler;

    .line 60
    const-string/jumbo v0, "key_display_id"

    const-string/jumbo v1, "N/A"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mDisplayId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected onCreateEnterAnimation(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2
    .param p1, "pageView"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLeaveAnimation(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2
    .param p1, "pageView"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "li"    # Landroid/view/LayoutInflater;

    .prologue
    .line 74
    const v0, 0x7f030002

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroyView(Landroid/view/View;)V
    .locals 1
    .param p1, "pageView"    # Landroid/view/View;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onDestroyView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mAccountChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method

.method protected onGetActivateButtonVisibility()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method protected onGetBackgroundColor()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    const/16 v0, 0xcc

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method protected onGetLockIconImageResId()I
    .locals 1

    .prologue
    .line 134
    const v0, 0x7f020005

    return v0
.end method

.method protected onGetLockTitleResId()I
    .locals 1

    .prologue
    .line 138
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/util/AccountHelper;->hasXiaomiAccountLogined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const v0, 0x7f070041

    .line 138
    :goto_0
    return v0

    .line 139
    :cond_0
    const v0, 0x7f070042

    goto :goto_0
.end method

.method protected onGetLockViewMarginTopDip()F
    .locals 1

    .prologue
    .line 130
    const/high16 v0, 0x432a0000    # 170.0f

    return v0
.end method

.method protected onNotify(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onNotify(ILandroid/os/Bundle;)V

    .line 107
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 111
    :try_start_0
    const-string/jumbo v2, "notify_extra_key_update_message_content"

    .line 110
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "messageJSON":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->saveMessage(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;)V

    .line 113
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->updateMessageViews()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "messageJSON":Ljava/lang/String;
    :cond_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Should not happen. "

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected onScreenOff()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mDisplayIdView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    return-void
.end method

.method protected onSetData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onSetData(Landroid/os/Bundle;)V

    .line 67
    const-string/jumbo v0, "key_display_id"

    const-string/jumbo v1, "N/A"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->mDisplayId:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->updateDisplayIdView()V

    .line 64
    return-void
.end method

.method protected onUpdateMessageView(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 5
    .param p1, "msg"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;
    .param p2, "wordsView"    # Landroid/widget/TextView;
    .param p3, "phoneView"    # Landroid/widget/TextView;

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-object v1, p1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;->words:Ljava/lang/String;

    .line 150
    .local v1, "words":Ljava/lang/String;
    iget-object v0, p1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;->phone:Ljava/lang/String;

    .line 151
    .local v0, "phone":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    const v2, 0x7f070044

    invoke-virtual {p0, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_0
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const/16 v2, 0x8

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 161
    const v2, 0x7f070045

    invoke-virtual {p0, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :cond_1
    return-void

    .line 154
    :cond_2
    const v2, 0x7f070043

    invoke-virtual {p0, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onViewCreated(Landroid/view/View;)V
    .locals 0
    .param p1, "pageView"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onViewCreated(Landroid/view/View;)V

    .line 91
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->findViews()V

    .line 92
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->registerViewListeners()V

    .line 93
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->registerAccountChangedReceiver()V

    .line 95
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->initViews()V

    .line 88
    return-void
.end method
