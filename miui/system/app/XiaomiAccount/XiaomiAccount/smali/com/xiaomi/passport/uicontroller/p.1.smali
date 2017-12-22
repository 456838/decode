.class final Lcom/xiaomi/passport/uicontroller/p;
.super Lcom/xiaomi/passport/uicontroller/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/o",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/MiLoginResult;",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic IN:Lcom/xiaomi/passport/uicontroller/n;

.field final synthetic IO:Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/accountsdk/a/a;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/p;->IN:Lcom/xiaomi/passport/uicontroller/n;

    iput-object p4, p0, Lcom/xiaomi/passport/uicontroller/p;->IO:Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    invoke-direct {p0, p1, p3}, Lcom/xiaomi/passport/uicontroller/o;-><init>(Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/accountsdk/a/a;)V

    return-void
.end method


# virtual methods
.method public Nn()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/p;->ajJ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/p;->IO:Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;->Nq(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Nn()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/p;->Nn()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0
.end method
