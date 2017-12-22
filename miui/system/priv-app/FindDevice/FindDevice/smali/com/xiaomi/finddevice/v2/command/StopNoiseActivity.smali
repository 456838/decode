.class public Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;
.super Landroid/app/Activity;
.source "StopNoiseActivity.java"


# instance fields
.field private MSG_STOP_NOISE:I

.field private mDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->MSG_STOP_NOISE:I

    return v0
.end method

.method static synthetic -get1(Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->toggleScreenButtonState(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->MSG_STOP_NOISE:I

    .line 18
    return-void
.end method

.method private toggleScreenButtonState(Z)V
    .locals 3
    .param p1, "disable"    # Z

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 64
    const-string/jumbo v2, "screen_buttons_state"

    .line 65
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 63
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 62
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->ensureRunAsOwnerUser()V

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v1, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity$1;-><init>(Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;)V

    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget v2, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 38
    const v2, 0x7f070013

    .line 37
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 39
    const v2, 0x7f070012

    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 41
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->mDialog:Landroid/app/Dialog;

    .line 42
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 43
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity$2;

    invoke-direct {v2, p0}, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity$2;-><init>(Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 52
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->toggleScreenButtonState(Z)V

    .line 53
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->MSG_STOP_NOISE:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 25
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 71
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->MSG_STOP_NOISE:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    return-void
.end method
