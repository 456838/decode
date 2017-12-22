.class final Lcom/xiaomi/passport/v2/ui/W;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/v2/ui/p;


# instance fields
.field final synthetic Fi:Lcom/xiaomi/passport/v2/ui/U;

.field final synthetic Fj:Lcom/xiaomi/accountsdk/account/data/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/U;Lcom/xiaomi/accountsdk/account/data/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/W;->Fi:Lcom/xiaomi/passport/v2/ui/U;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/W;->Fj:Lcom/xiaomi/accountsdk/account/data/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public is(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/W;->Fi:Lcom/xiaomi/passport/v2/ui/U;

    iget-object v0, v0, Lcom/xiaomi/passport/v2/ui/U;->Ff:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/W;->Fj:Lcom/xiaomi/accountsdk/account/data/e;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/e;->Qb:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->JE(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
