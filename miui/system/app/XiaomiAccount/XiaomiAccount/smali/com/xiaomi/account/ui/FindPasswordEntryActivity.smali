.class public Lcom/xiaomi/account/ui/FindPasswordEntryActivity;
.super Landroid/app/Activity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/FindPasswordEntryActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/account/ui/aM;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/ui/aM;-><init>(Lcom/xiaomi/account/ui/FindPasswordEntryActivity;)V

    invoke-static {p0, v0}, Lcom/xiaomi/passport/ui/q;->uH(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/passport/ui/q;->uG()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
