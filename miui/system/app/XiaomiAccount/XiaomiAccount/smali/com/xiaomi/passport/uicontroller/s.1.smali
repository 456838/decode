.class final Lcom/xiaomi/passport/uicontroller/s;
.super Lcom/xiaomi/passport/uicontroller/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/o",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic IT:Lcom/xiaomi/passport/uicontroller/n;

.field final synthetic IU:Lcom/xiaomi/accountsdk/account/data/AccountInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/accountsdk/a/a;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/s;->IT:Lcom/xiaomi/passport/uicontroller/n;

    iput-object p4, p0, Lcom/xiaomi/passport/uicontroller/s;->IU:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-direct {p0, p1, p3}, Lcom/xiaomi/passport/uicontroller/o;-><init>(Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/accountsdk/a/a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic Nn()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/s;->Nn()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public Nn()Ljava/lang/Void;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/s;->ajJ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/s;->IU:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;->Np(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    const/4 v0, 0x0

    return-object v0
.end method
