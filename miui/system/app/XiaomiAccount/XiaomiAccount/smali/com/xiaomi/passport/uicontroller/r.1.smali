.class final Lcom/xiaomi/passport/uicontroller/r;
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
.field final synthetic IR:Lcom/xiaomi/passport/uicontroller/n;

.field final synthetic IS:Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/accountsdk/a/a;Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/r;->IR:Lcom/xiaomi/passport/uicontroller/n;

    iput-object p4, p0, Lcom/xiaomi/passport/uicontroller/r;->IS:Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;

    invoke-direct {p0, p1, p3}, Lcom/xiaomi/passport/uicontroller/o;-><init>(Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/accountsdk/a/a;)V

    return-void
.end method


# virtual methods
.method public Nn()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/r;->ajJ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/r;->IS:Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;->Nr(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Nn()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/r;->Nn()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0
.end method
