.class final Lcom/xiaomi/account/ui/bg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic gl:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bg;->gl:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/bg;->gl:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OtherDeviceDetailInfoAc"

    const-string/jumbo v1, "activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v2, "booleanResult"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bg;->gl:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->dp(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->dq(I)Lcom/xiaomi/account/data/k;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/bg;->gl:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->finish()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/account/data/k;->mF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/account/data/k;->mM()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/account/ui/bg;->gl:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    const v3, 0x7f100032

    invoke-virtual {v0, v3}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/xiaomi/account/ui/bg;->gl:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    :goto_0
    const/4 v1, 0x1

    invoke-static {v3, v1, v0, v2}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->ds(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;ZZLjava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/account/ui/bg;->gl:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->ds(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;ZZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_1
.end method
