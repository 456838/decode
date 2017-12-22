.class final Lcom/xiaomi/passport/v2/ui/af;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic FC:Lcom/xiaomi/passport/v2/ui/g;

.field final synthetic FD:Ljava/lang/String;

.field final synthetic FE:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/g;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/af;->FC:Lcom/xiaomi/passport/v2/ui/g;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/af;->FD:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/af;->FE:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/af;->FC:Lcom/xiaomi/passport/v2/ui/g;

    const-string/jumbo v1, "recycled_page_click_login_btn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/g;->JP(Lcom/xiaomi/passport/v2/ui/g;Ljava/lang/String;Z)V

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/n;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/n;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/af;->FD:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/af;->FE:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/n;->Xq(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/n;->build()Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/af;->FC:Lcom/xiaomi/passport/v2/ui/g;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/v2/ui/g;->IC(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V

    return-void
.end method
