.class final Lcom/xiaomi/passport/ui/aX;
.super Lcom/xiaomi/passport/uicontroller/l;
.source ""


# instance fields
.field final synthetic vf:Lcom/xiaomi/passport/ui/B;

.field final synthetic vg:Lcom/xiaomi/accountsdk/account/data/AccountInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/B;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aX;->vf:Lcom/xiaomi/passport/ui/B;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/aX;->vg:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected ir(Lcom/xiaomi/passport/uicontroller/g;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aX;->vf:Lcom/xiaomi/passport/ui/B;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/B;->xB(Lcom/xiaomi/passport/ui/B;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aX;->vf:Lcom/xiaomi/passport/ui/B;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/B;->xt(Lcom/xiaomi/passport/ui/B;)Lcom/xiaomi/passport/ui/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aX;->vg:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->VA()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aX;->vg:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vy()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/account/data/u;->Ya(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/u;->Yb()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aX;->vf:Lcom/xiaomi/passport/ui/B;

    invoke-static {v1}, Lcom/xiaomi/passport/ui/B;->xt(Lcom/xiaomi/passport/ui/B;)Lcom/xiaomi/passport/ui/m;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/aX;->vg:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vq()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lcom/xiaomi/passport/ui/m;->fK(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
