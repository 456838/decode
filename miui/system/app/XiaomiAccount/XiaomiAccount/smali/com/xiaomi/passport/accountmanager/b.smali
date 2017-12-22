.class Lcom/xiaomi/passport/accountmanager/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/accountmanager/g;


# instance fields
.field private ze:Lcom/xiaomi/accounts/h;

.field private final zf:Lcom/xiaomi/passport/servicetoken/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/passport/accountmanager/c;

    invoke-direct {v0}, Lcom/xiaomi/passport/accountmanager/c;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/b;->zf:Lcom/xiaomi/passport/servicetoken/a;

    invoke-static {p1}, Lcom/xiaomi/accounts/h;->RX(Landroid/content/Context;)Lcom/xiaomi/accounts/h;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/b;->ze:Lcom/xiaomi/accounts/h;

    return-void
.end method


# virtual methods
.method public BU(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/b;->ze:Lcom/xiaomi/accounts/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/accounts/h;->Sc(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public BV(Landroid/accounts/Account;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/b;->ze:Lcom/xiaomi/accounts/h;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accounts/h;->Sg(Landroid/accounts/Account;)V

    return-void
.end method

.method public BW(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/b;->ze:Lcom/xiaomi/accounts/h;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accounts/h;->Sb(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public BX(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/b;->ze:Lcom/xiaomi/accounts/h;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/accounts/h;->Sj(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public BY(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/b;->ze:Lcom/xiaomi/accounts/h;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accounts/h;->RY(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public BZ(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/b;->zf:Lcom/xiaomi/passport/servicetoken/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/a;->Ck(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/b;

    move-result-object v0

    return-object v0
.end method

.method public Ca(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/b;->ze:Lcom/xiaomi/accounts/h;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accounts/h;->RZ(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Cb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/b;->ze:Lcom/xiaomi/accounts/h;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accounts/h;->Sd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Cc(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/b;->zf:Lcom/xiaomi/passport/servicetoken/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/a;->Co(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/b;

    move-result-object v0

    return-object v0
.end method

.method public Cd(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/b;->ze:Lcom/xiaomi/accounts/h;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accounts/h;->Se(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ce(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/b;->ze:Lcom/xiaomi/accounts/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/accounts/h;->Si(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Cf(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/b;->ze:Lcom/xiaomi/accounts/h;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accounts/h;->Sf(Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public Cg(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/b;->ze:Lcom/xiaomi/accounts/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/accounts/h;->Sh(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
