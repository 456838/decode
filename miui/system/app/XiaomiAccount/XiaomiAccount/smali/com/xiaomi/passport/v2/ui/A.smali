.class final Lcom/xiaomi/passport/v2/ui/A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Eh:Lcom/xiaomi/passport/v2/ui/b;

.field final synthetic Ei:Ljava/lang/String;

.field final synthetic Ej:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/b;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/A;->Eh:Lcom/xiaomi/passport/v2/ui/b;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/A;->Ei:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/A;->Ej:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/A;->Eh:Lcom/xiaomi/passport/v2/ui/b;

    const-string/jumbo v1, "recycled_page_click_reg_btn"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/b;->Ix(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/A;->Ei:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/A;->Ej:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/A;->Eh:Lcom/xiaomi/passport/v2/ui/b;

    invoke-virtual {v2}, Lcom/xiaomi/passport/v2/ui/b;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/passport/v2/ui/A;->Eh:Lcom/xiaomi/passport/v2/ui/b;

    invoke-static {v3}, Lcom/xiaomi/passport/v2/ui/b;->Iq(Lcom/xiaomi/passport/v2/ui/b;)Lcom/xiaomi/passport/ui/m;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/passport/v2/ui/d;->Jj(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/v2/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/A;->Eh:Lcom/xiaomi/passport/v2/ui/b;

    invoke-virtual {v1}, Lcom/xiaomi/passport/v2/ui/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method
