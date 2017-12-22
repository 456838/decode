.class final Lcom/xiaomi/account/utils/A;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic nb:Lcom/xiaomi/account/utils/f;

.field final synthetic nc:Landroid/app/Activity;

.field final synthetic nd:Ljava/lang/Runnable;

.field final synthetic ne:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/utils/f;Landroid/app/Activity;Ljava/lang/Runnable;Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/utils/A;->nb:Lcom/xiaomi/account/utils/f;

    iput-object p2, p0, Lcom/xiaomi/account/utils/A;->nc:Landroid/app/Activity;

    iput-object p3, p0, Lcom/xiaomi/account/utils/A;->nd:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/xiaomi/account/utils/A;->ne:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iH(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/utils/A;->pu(Landroid/util/Pair;)V

    return-void
.end method

.method public pu(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/utils/A;->nc:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/utils/A;->nc:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/xiaomi/account/utils/A;->ne:Landroid/content/res/Resources;

    const v1, 0x7f0c0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/account/utils/A;->nb:Lcom/xiaomi/account/utils/f;

    iget-object v2, p0, Lcom/xiaomi/account/utils/A;->nc:Landroid/app/Activity;

    const v3, 0x7f0c00d0

    invoke-static {v1, v2, v3, v0}, Lcom/xiaomi/account/utils/f;->nL(Lcom/xiaomi/account/utils/f;Landroid/app/Activity;ILjava/lang/String;)V

    :cond_2
    return-void

    :pswitch_0
    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    const-string/jumbo v1, "account_security_info"

    const-string/jumbo v2, "sign_out_success"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/utils/A;->nd:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/account/utils/A;->nd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/xiaomi/account/utils/A;->nb:Lcom/xiaomi/account/utils/f;

    iget-object v2, p0, Lcom/xiaomi/account/utils/A;->nc:Landroid/app/Activity;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const v3, 0x7f0c00d1

    invoke-static {v1, v2, v3, v0}, Lcom/xiaomi/account/utils/f;->nL(Lcom/xiaomi/account/utils/f;Landroid/app/Activity;ILjava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/xiaomi/account/utils/A;->ne:Landroid/content/res/Resources;

    const v1, 0x7f0c00d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
