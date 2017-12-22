.class final Lcom/xiaomi/passport/uicontroller/q;
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
.field final synthetic IP:Lcom/xiaomi/passport/uicontroller/n;

.field final synthetic IQ:Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/accountsdk/a/a;Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/q;->IP:Lcom/xiaomi/passport/uicontroller/n;

    iput-object p4, p0, Lcom/xiaomi/passport/uicontroller/q;->IQ:Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;

    invoke-direct {p0, p1, p3}, Lcom/xiaomi/passport/uicontroller/o;-><init>(Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/accountsdk/a/a;)V

    return-void
.end method


# virtual methods
.method public Nn()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/q;->ajJ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/q;->IQ:Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;->Nt(Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Nn()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/q;->Nn()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0
.end method
