.class final Lcom/xiaomi/passport/ui/L;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/v2/utils/g;


# instance fields
.field final synthetic tf:Lcom/xiaomi/passport/ui/K;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/K;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/L;->tf:Lcom/xiaomi/passport/ui/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public yl(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/L;->tf:Lcom/xiaomi/passport/ui/K;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/K;->td:Lcom/xiaomi/passport/ui/J;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/J;->sZ:Lcom/xiaomi/passport/ui/e;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vt()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/passport/ui/e;->tR(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Z)V

    return-void
.end method
