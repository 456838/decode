.class public Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
.super Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;
.source "FindDeviceKeyguard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;,
        Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;
    }
.end annotation


# static fields
.field private static final synthetic -com-xiaomi-finddevice-v2-ui-FindDeviceKeyguard$MODESwitchesValues:[I


# instance fields
.field private mActivePage:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

.field private mMode:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

.field private mPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private static synthetic -getcom-xiaomi-finddevice-v2-ui-FindDeviceKeyguard$MODESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->-com-xiaomi-finddevice-v2-ui-FindDeviceKeyguard$MODESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->-com-xiaomi-finddevice-v2-ui-FindDeviceKeyguard$MODESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;->values()[Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;->DEBT:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;->NORMAL:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->-com-xiaomi-finddevice-v2-ui-FindDeviceKeyguard$MODESwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->onScreenOff()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mPages:Ljava/util/List;

    .line 36
    return-void
.end method

.method private addPage(Ljava/lang/String;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    .prologue
    .line 182
    invoke-virtual {p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->create()V

    .line 183
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mPages:Ljava/util/List;

    new-instance v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    invoke-direct {v1, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;-><init>(Ljava/lang/String;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method private addPages(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mode"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-static {}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->-getcom-xiaomi-finddevice-v2-ui-FindDeviceKeyguard$MODESwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Bad mode. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :pswitch_0
    const-string/jumbo v0, "MESSAGE"

    .line 156
    new-instance v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V

    .line 155
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->addPage(Ljava/lang/String;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;)V

    .line 157
    const-string/jumbo v0, "UNLOCK"

    .line 158
    new-instance v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V

    .line 157
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->addPage(Ljava/lang/String;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;)V

    .line 159
    const-string/jumbo v0, "EXTRA_UNLOCK_STEPS_VERIFICATION"

    .line 160
    new-instance v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V

    .line 159
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->addPage(Ljava/lang/String;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;)V

    .line 161
    const-string/jumbo v0, "EXTRA_UNLOCK_STEPS_NOTIFICATION"

    .line 162
    new-instance v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V

    .line 161
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->addPage(Ljava/lang/String;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;)V

    .line 152
    :goto_0
    return-void

    .line 168
    :pswitch_1
    const-string/jumbo v0, "DEBT"

    .line 169
    new-instance v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageDebt;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageDebt;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V

    .line 168
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->addPage(Ljava/lang/String;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;)V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static determineModeByData(Landroid/os/Bundle;)Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;
    .locals 2
    .param p0, "data"    # Landroid/os/Bundle;

    .prologue
    .line 296
    const-string/jumbo v1, "key_user_id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "userId":Ljava/lang/String;
    const-string/jumbo v1, "1665249865"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;->DEBT:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    return-object v1

    .line 301
    :cond_0
    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;->NORMAL:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    return-object v1
.end method

.method private hideSoftInput()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, "rootView":Landroid/view/View;
    const/4 v2, 0x0

    .line 280
    .local v2, "windowToken":Landroid/os/IBinder;
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 281
    .local v1, "rootView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 285
    .end local v2    # "windowToken":Landroid/os/IBinder;
    :cond_0
    if-nez v2, :cond_1

    .line 286
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Destroyed or not created. "

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 287
    return-void

    .line 291
    :cond_1
    const-string/jumbo v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 292
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 276
    return-void
.end method

.method private listenScreenOff()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 259
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "called. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 260
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    new-instance v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$2;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;)V

    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 268
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v4, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 258
    return-void
.end method

.method private onScreenOff()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mActivePage:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mActivePage:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onScreenOff()V

    .line 118
    :cond_0
    return-void
.end method

.method private removePages()V
    .locals 4

    .prologue
    .line 187
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mPages:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    .line 188
    .local v1, "pr":Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;
    iget-boolean v3, v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->viewAttached:Z

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->getPageView()Landroid/view/View;

    move-result-object v0

    .line 190
    .local v0, "pageView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 191
    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->removeContentView(Landroid/view/View;)V

    .line 193
    iget-object v3, v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->notifyPageViewDetached()V

    .line 194
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->viewAttached:Z

    .line 196
    .end local v0    # "pageView":Landroid/view/View;
    :cond_0
    iget-object v3, v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->destroy()V

    goto :goto_0

    .line 198
    .end local v1    # "pr":Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mPages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 186
    return-void
.end method

.method private setupNewActivePage(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;)V
    .locals 2
    .param p1, "newPageRecord"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mActivePage:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    .line 242
    if-eqz p1, :cond_1

    .line 243
    iget-object v1, p1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->getPageView()Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, "newActivePageView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 247
    iget-boolean v1, p1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->viewAttached:Z

    if-nez v1, :cond_0

    .line 248
    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->addContentView(Landroid/view/View;)V

    .line 249
    iget-object v1, p1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->notifyPageViewAttached()V

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->viewAttached:Z

    .line 253
    :cond_0
    iget-object v1, p1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->createEnterAnimation()Landroid/view/ViewPropertyAnimator;

    .line 240
    .end local v0    # "newActivePageView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private switchMode(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mode"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mMode:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    if-ne v0, p1, :cond_0

    .line 126
    return-void

    .line 129
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mMode:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    .line 131
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->removePages()V

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->addPages(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;Landroid/os/Bundle;)V

    .line 134
    invoke-static {}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->-getcom-xiaomi-finddevice-v2-ui-FindDeviceKeyguard$MODESwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Bad mode. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :pswitch_0
    const-string/jumbo v0, "MESSAGE"

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->switchToPage(Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 142
    :pswitch_1
    const-string/jumbo v0, "DEBT"

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->switchToPage(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private switchToPage(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;ILjava/lang/Object;)V
    .locals 1
    .param p1, "pageRecord"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;
    .param p2, "code"    # I
    .param p3, "extra"    # Ljava/lang/Object;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mActivePage:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    if-ne v0, p1, :cond_0

    .line 203
    return-void

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->tearDownOldActivePage()V

    .line 206
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->setupNewActivePage(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;)V

    .line 207
    iget-object v0, p1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    invoke-virtual {v0, p2, p3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->notifySwitchInto(ILjava/lang/Object;)V

    .line 201
    return-void
.end method

.method private tearDownOldActivePage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 211
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mActivePage:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    .line 212
    .local v1, "oldActivePageRecord":Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;
    iput-object v3, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mActivePage:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    .line 214
    if-eqz v1, :cond_0

    .line 215
    iget-boolean v3, v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->viewAttached:Z

    if-eqz v3, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->hideSoftInput()V

    .line 218
    iget-object v3, v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->getPageView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 220
    new-instance v2, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$1;

    invoke-direct {v2, p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$1;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;)V

    .line 230
    .local v2, "tearDownAction":Ljava/lang/Runnable;
    iget-object v3, v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->createLeaveAnimation()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 231
    .local v0, "leaveAnimation":Landroid/view/ViewPropertyAnimator;
    if-nez v0, :cond_1

    .line 232
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 210
    .end local v0    # "leaveAnimation":Landroid/view/ViewPropertyAnimator;
    .end local v2    # "tearDownAction":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 234
    .restart local v0    # "leaveAnimation":Landroid/view/ViewPropertyAnimator;
    .restart local v2    # "tearDownAction":Ljava/lang/Runnable;
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private unlistenScreenOff()V
    .locals 3

    .prologue
    .line 272
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->determineModeByData(Landroid/os/Bundle;)Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->switchMode(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->listenScreenOff()V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->onDestroy()V

    .line 77
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->unlistenScreenOff()V

    .line 79
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->removePages()V

    .line 74
    return-void
.end method

.method protected onInvisible()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mActivePage:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mActivePage:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    invoke-virtual {v0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mActivePage:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mActivePage:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    invoke-virtual {v0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    return v0

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->onKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNotify(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 92
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mPages:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    .line 93
    .local v0, "pr":Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;
    iget-object v2, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    invoke-virtual {v2, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->notify(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 91
    .end local v0    # "pr":Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;
    :cond_0
    return-void
.end method

.method protected onSetData(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->onSetData(Landroid/os/Bundle;)V

    .line 66
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->determineModeByData(Landroid/os/Bundle;)Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->switchMode(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;Landroid/os/Bundle;)V

    .line 68
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mPages:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    .line 69
    .local v0, "pr":Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;
    iget-object v2, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    invoke-virtual {v2, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 63
    .end local v0    # "pr":Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;
    :cond_0
    return-void
.end method

.method protected onVisible()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method protected onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->onWindowFocusChanged(Z)V

    .line 98
    return-void
.end method

.method public switchToPage(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->switchToPage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 49
    return-void
.end method

.method public switchToPage(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "extra"    # Ljava/lang/Object;

    .prologue
    .line 41
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->mPages:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pr$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    .line 42
    .local v0, "pr":Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;
    iget-object v2, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->name:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-direct {p0, v0, p2, p3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->switchToPage(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;ILjava/lang/Object;)V

    .line 40
    .end local v0    # "pr":Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;
    :cond_1
    return-void
.end method
