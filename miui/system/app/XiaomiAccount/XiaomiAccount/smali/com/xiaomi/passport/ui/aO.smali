.class final Lcom/xiaomi/passport/ui/aO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/task/h;


# instance fields
.field final synthetic uT:Lcom/xiaomi/passport/ui/w;

.field final synthetic uU:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/w;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aO;->uT:Lcom/xiaomi/passport/ui/w;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/aO;->uU:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public yA(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aO;->uU:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aO;->uT:Lcom/xiaomi/passport/ui/w;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/w;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/aO;->uT:Lcom/xiaomi/passport/ui/w;

    iget-object v2, v2, Lcom/xiaomi/passport/ui/w;->pz:Lcom/xiaomi/passport/ui/m;

    const/4 v3, 0x1

    invoke-static {v0, p1, v3, v1, v2}, Lcom/xiaomi/passport/ui/o;->uk(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;ZLandroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/ui/o;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aO;->uT:Lcom/xiaomi/passport/ui/w;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/w;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method
