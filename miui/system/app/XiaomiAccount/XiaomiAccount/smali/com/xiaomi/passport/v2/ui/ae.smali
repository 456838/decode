.class final Lcom/xiaomi/passport/v2/ui/ae;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic FA:Ljava/lang/String;

.field final synthetic FB:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

.field final synthetic Fz:Lcom/xiaomi/passport/v2/ui/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/g;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/ae;->Fz:Lcom/xiaomi/passport/v2/ui/g;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/ae;->FA:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/ae;->FB:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ae;->Fz:Lcom/xiaomi/passport/v2/ui/g;

    const-string/jumbo v1, "recycled_page_click_reg_btn"

    invoke-static {v0, v1, v4}, Lcom/xiaomi/passport/v2/ui/g;->JP(Lcom/xiaomi/passport/v2/ui/g;Ljava/lang/String;Z)V

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/p;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/p;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/ae;->FA:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/ae;->FB:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/p;->XE(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/p;->build()Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/ae;->FA:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/ae;->Fz:Lcom/xiaomi/passport/v2/ui/g;

    invoke-virtual {v2}, Lcom/xiaomi/passport/v2/ui/g;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/passport/v2/ui/ae;->Fz:Lcom/xiaomi/passport/v2/ui/g;

    invoke-static {v3}, Lcom/xiaomi/passport/v2/ui/g;->JM(Lcom/xiaomi/passport/v2/ui/g;)Lcom/xiaomi/passport/ui/m;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/xiaomi/passport/ui/u;->vp(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/ui/u;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/ae;->Fz:Lcom/xiaomi/passport/v2/ui/g;

    invoke-virtual {v1}, Lcom/xiaomi/passport/v2/ui/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v4}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method
