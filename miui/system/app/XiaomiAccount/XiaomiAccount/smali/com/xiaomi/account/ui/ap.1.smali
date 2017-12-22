.class final Lcom/xiaomi/account/ui/ap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/v2/ui/p;


# instance fields
.field final synthetic eV:Lcom/xiaomi/account/ui/an;

.field final synthetic eW:Lcom/xiaomi/accountsdk/account/data/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/an;Lcom/xiaomi/accountsdk/account/data/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/ap;->eV:Lcom/xiaomi/account/ui/an;

    iput-object p2, p0, Lcom/xiaomi/account/ui/ap;->eW:Lcom/xiaomi/accountsdk/account/data/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public is(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/ap;->eV:Lcom/xiaomi/account/ui/an;

    iget-object v0, v0, Lcom/xiaomi/account/ui/an;->eS:Lcom/xiaomi/account/ui/SetPasswordActivity;

    iget-object v1, p0, Lcom/xiaomi/account/ui/ap;->eW:Lcom/xiaomi/accountsdk/account/data/e;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/e;->Qb:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/xiaomi/account/ui/SetPasswordActivity;->ax(Lcom/xiaomi/account/ui/SetPasswordActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
