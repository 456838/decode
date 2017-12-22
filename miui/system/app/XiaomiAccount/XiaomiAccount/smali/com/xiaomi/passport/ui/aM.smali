.class final Lcom/xiaomi/passport/ui/aM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/task/h;


# instance fields
.field final synthetic uP:Lcom/xiaomi/passport/ui/w;

.field final synthetic uQ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/w;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aM;->uP:Lcom/xiaomi/passport/ui/w;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/aM;->uQ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public yA(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 4

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/p;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/p;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aM;->uQ:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/p;->XE(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/p;->build()Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qu:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/aM;->uP:Lcom/xiaomi/passport/ui/w;

    invoke-virtual {v2}, Lcom/xiaomi/passport/ui/w;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/passport/ui/aM;->uP:Lcom/xiaomi/passport/ui/w;

    iget-object v3, v3, Lcom/xiaomi/passport/ui/w;->pz:Lcom/xiaomi/passport/ui/m;

    invoke-static {v1, v0, v2, v3}, Lcom/xiaomi/passport/ui/u;->vp(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/ui/u;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aM;->uP:Lcom/xiaomi/passport/ui/w;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/w;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method
