.class final Lcom/xiaomi/passport/accountmanager/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/servicetoken/a;
.implements Lcom/xiaomi/passport/servicetoken/c;


# instance fields
.field private final zg:Lcom/xiaomi/passport/servicetoken/g;

.field private final zh:Lcom/xiaomi/passport/servicetoken/a;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/passport/servicetoken/g;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/g;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/c;->zg:Lcom/xiaomi/passport/servicetoken/g;

    invoke-static {}, Lcom/xiaomi/passport/servicetoken/h;->Mz()Lcom/xiaomi/passport/servicetoken/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/servicetoken/h;->Mw(Lcom/xiaomi/passport/servicetoken/c;)Lcom/xiaomi/passport/servicetoken/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/c;->zh:Lcom/xiaomi/passport/servicetoken/a;

    return-void
.end method


# virtual methods
.method public Ch(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v0

    move-object v1, p3

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/passport/accountmanager/f;->BX(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public Ci(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/accountmanager/c;->zg:Lcom/xiaomi/passport/servicetoken/g;

    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/g;->Ms()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/xiaomi/passport/accountmanager/f;->Ca(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Cj(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/accountmanager/c;->zg:Lcom/xiaomi/passport/servicetoken/g;

    invoke-virtual {v1, p2}, Lcom/xiaomi/passport/servicetoken/g;->Mt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/xiaomi/passport/accountmanager/f;->Ca(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ck(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/c;->zh:Lcom/xiaomi/passport/servicetoken/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/a;->Ck(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/b;

    move-result-object v0

    return-object v0
.end method

.method public Cl(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/accountmanager/c;->zg:Lcom/xiaomi/passport/servicetoken/g;

    invoke-virtual {v1, p2}, Lcom/xiaomi/passport/servicetoken/g;->Mu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/xiaomi/passport/accountmanager/f;->Ca(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Cm(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/passport/utils/x;->FC(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public Cn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/accountmanager/c;->zg:Lcom/xiaomi/passport/servicetoken/g;

    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/g;->Mv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/xiaomi/passport/accountmanager/f;->Cb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Co(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/c;->zh:Lcom/xiaomi/passport/servicetoken/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/a;->Co(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/b;

    move-result-object v0

    return-object v0
.end method

.method public Cp(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/xiaomi/passport/accountmanager/f;->Cd(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
