.class final Lcom/xiaomi/passport/v2/ui/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/v2/utils/i;


# instance fields
.field final synthetic DL:Lcom/xiaomi/passport/v2/ui/a;

.field final synthetic DM:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field final synthetic DN:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/r;->DL:Lcom/xiaomi/passport/v2/ui/a;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/r;->DM:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/r;->DN:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public KD(I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/r;->DL:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/a;->HV(Lcom/xiaomi/passport/v2/ui/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/r;->DL:Lcom/xiaomi/passport/v2/ui/a;

    const v1, 0x7f0c0085

    invoke-static {v0, v1, p1}, Lcom/xiaomi/passport/v2/ui/a;->Ic(Lcom/xiaomi/passport/v2/ui/a;II)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/r;->DL:Lcom/xiaomi/passport/v2/ui/a;

    const-string/jumbo v1, "failed_to_query_phone_info"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/r;->DL:Lcom/xiaomi/passport/v2/ui/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/a;->Iv(Z)V

    return-void
.end method

.method public KE(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/r;->DL:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/a;->HV(Lcom/xiaomi/passport/v2/ui/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/r;->DL:Lcom/xiaomi/passport/v2/ui/a;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/r;->DM:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-static {v1, v0, v2}, Lcom/xiaomi/passport/v2/ui/a;->HY(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/r;->DL:Lcom/xiaomi/passport/v2/ui/a;

    iget-object v3, p0, Lcom/xiaomi/passport/v2/ui/r;->DM:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v4, p0, Lcom/xiaomi/passport/v2/ui/r;->DN:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-static {v2, v0, v1, v3, v4}, Lcom/xiaomi/passport/v2/ui/a;->HX(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    goto :goto_0
.end method

.method public KF()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/r;->DL:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/a;->HV(Lcom/xiaomi/passport/v2/ui/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/r;->DL:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/a;->HT(Lcom/xiaomi/passport/v2/ui/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/r;->DL:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/a;->HW(Lcom/xiaomi/passport/v2/ui/a;Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/r;->DL:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/a;->HU(Lcom/xiaomi/passport/v2/ui/a;Z)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/r;->DL:Lcom/xiaomi/passport/v2/ui/a;

    const-string/jumbo v1, "failed_to_query_phone_info"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/r;->DL:Lcom/xiaomi/passport/v2/ui/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/a;->Iv(Z)V

    goto :goto_0
.end method
