.class final Lcom/xiaomi/account/ui/bi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/account/task/p",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic gq:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bi;->gq:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iH(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/bi;->iM(Landroid/util/Pair;)V

    return-void
.end method

.method public iM(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/xiaomi/account/ui/bi;->gq:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v0}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ko()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bi;->gq:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->dt(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;Z)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/bi;->gq:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bi;->gq:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    const v2, 0x7f0c0153

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/account/ui/bi;->gq:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v0}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->kp()I

    move-result v0

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v0}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ko()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/account/ui/bi;->gq:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->du(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/account/ui/bi;->gq:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v0}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->kp()I

    move-result v0

    const v2, 0x7f0c015b

    invoke-static {v1, v2, v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->dv(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
