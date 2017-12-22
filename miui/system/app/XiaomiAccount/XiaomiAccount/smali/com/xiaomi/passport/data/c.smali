.class public Lcom/xiaomi/passport/data/c;
.super Lcom/xiaomi/accountsdk/account/data/a;
.source ""


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/accountsdk/account/data/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v3, "passportapi"

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/x;->FC(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "XMPassportInfo"

    const-string/jumbo v1, "no xiaomi account"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/xiaomi/passport/accountmanager/f;->BZ(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/passport/servicetoken/b;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v0, "XMPassportInfo"

    const-string/jumbo v1, "service token result is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_1
    iget-object v2, v5, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    sget-object v4, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->HP:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-eq v2, v4, :cond_2

    const-string/jumbo v0, "XMPassportInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service token result error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2
    iget-object v2, v5, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v2, Lcom/xiaomi/passport/utils/t;

    invoke-direct {v2, v0}, Lcom/xiaomi/passport/utils/t;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/xiaomi/passport/utils/t;->EU()Ljava/lang/String;

    move-result-object v2

    :cond_3
    new-instance v0, Lcom/xiaomi/passport/data/c;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, v5, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    iget-object v5, v5, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HE:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/data/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4
    move-object v3, p1

    goto :goto_0
.end method


# virtual methods
.method public yQ(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/x;->FC(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "XMPassportInfo"

    const-string/jumbo v1, "no xiaomi account"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/passport/servicetoken/d;

    invoke-virtual {p0}, Lcom/xiaomi/passport/data/c;->UW()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/passport/servicetoken/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/data/c;->UX()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/passport/servicetoken/d;->LQ(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/passport/data/c;->UV()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/passport/servicetoken/d;->LR(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/passport/servicetoken/d;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/xiaomi/passport/accountmanager/f;->Cc(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/passport/servicetoken/b;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    invoke-virtual {p0}, Lcom/xiaomi/passport/data/c;->UW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/passport/accountmanager/f;->BZ(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/b;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "XMPassportInfo"

    const-string/jumbo v1, "service token result is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    sget-object v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->HP:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-eq v1, v2, :cond_2

    const-string/jumbo v1, "XMPassportInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "service token result error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/data/c;->Va(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/data/c;->UZ(Ljava/lang/String;)V

    return-void
.end method
