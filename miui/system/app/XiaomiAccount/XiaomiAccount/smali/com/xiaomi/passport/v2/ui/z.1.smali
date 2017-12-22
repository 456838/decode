.class final Lcom/xiaomi/passport/v2/ui/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Ee:Lcom/xiaomi/passport/v2/ui/b;

.field final synthetic Ef:Ljava/lang/String;

.field final synthetic Eg:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/b;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/z;->Ee:Lcom/xiaomi/passport/v2/ui/b;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/z;->Ef:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/z;->Eg:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/z;->Ee:Lcom/xiaomi/passport/v2/ui/b;

    const-string/jumbo v1, "recycled_page_click_login_btn"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/b;->Ix(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/n;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/n;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/z;->Ef:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/z;->Eg:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/n;->Xq(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/n;->build()Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/z;->Ee:Lcom/xiaomi/passport/v2/ui/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/v2/ui/b;->IC(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V

    return-void
.end method
