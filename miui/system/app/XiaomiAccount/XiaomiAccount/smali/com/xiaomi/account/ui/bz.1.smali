.class final Lcom/xiaomi/account/ui/bz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/k;


# instance fields
.field final synthetic gH:Lcom/xiaomi/account/ui/I;

.field final synthetic gI:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bz;->gH:Lcom/xiaomi/account/ui/I;

    iput-object p2, p0, Lcom/xiaomi/account/ui/bz;->gI:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iP()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/bz;->gH:Lcom/xiaomi/account/ui/I;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/I;->fh(Lcom/xiaomi/account/ui/I;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/xiaomi/account/ui/bz;->gH:Lcom/xiaomi/account/ui/I;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bz;->gH:Lcom/xiaomi/account/ui/I;

    const v2, 0x7f0c0095

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/ui/I;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/xiaomi/account/ui/I;->ft(Lcom/xiaomi/account/ui/I;ZLjava/lang/String;)V

    return-void
.end method

.method public iQ(Lcom/xiaomi/account/task/l;)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/account/ui/bz;->gH:Lcom/xiaomi/account/ui/I;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/I;->fh(Lcom/xiaomi/account/ui/I;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/xiaomi/account/ui/bz;->gH:Lcom/xiaomi/account/ui/I;

    invoke-static {v0}, Lcom/xiaomi/account/ui/I;->fe(Lcom/xiaomi/account/ui/I;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/account/task/l;->jZ()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/account/task/l;->jY()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/xiaomi/account/task/l;->ka()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/bz;->gH:Lcom/xiaomi/account/ui/I;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bz;->gI:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/I;->fq(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/bz;->gH:Lcom/xiaomi/account/ui/I;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bz;->gH:Lcom/xiaomi/account/ui/I;

    const v2, 0x7f0c0128

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/ui/I;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/xiaomi/account/ui/I;->ft(Lcom/xiaomi/account/ui/I;ZLjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/bz;->gH:Lcom/xiaomi/account/ui/I;

    iget-object v4, p0, Lcom/xiaomi/account/ui/bz;->gI:Ljava/lang/String;

    invoke-static {v0, v4, v2, v3, v1}, Lcom/xiaomi/account/ui/I;->fm(Lcom/xiaomi/account/ui/I;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "InputBindedPhoneFragmen"

    const-string/jumbo v2, "GetUserBindIdAndLimitException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
