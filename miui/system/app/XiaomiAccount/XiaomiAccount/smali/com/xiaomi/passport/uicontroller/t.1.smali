.class final Lcom/xiaomi/passport/uicontroller/t;
.super Lcom/xiaomi/passport/uicontroller/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/o",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;",
        "Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic IV:Lcom/xiaomi/passport/uicontroller/n;

.field final synthetic IW:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/accountsdk/a/a;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/t;->IV:Lcom/xiaomi/passport/uicontroller/n;

    iput-object p4, p0, Lcom/xiaomi/passport/uicontroller/t;->IW:Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lcom/xiaomi/passport/uicontroller/o;-><init>(Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/accountsdk/a/a;)V

    return-void
.end method


# virtual methods
.method public Nn()Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/t;->ajJ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/t;->IW:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;->Ns(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Nn()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/t;->Nn()Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    move-result-object v0

    return-object v0
.end method
