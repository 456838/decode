.class public Lcom/xiaomi/passport/uicontroller/f;
.super Lcom/xiaomi/passport/uicontroller/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/b",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;",
        "Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/uicontroller/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/m",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/uicontroller/b;-><init>(Lcom/xiaomi/passport/uicontroller/m;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic Na(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/uicontroller/f;->Nb(Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    move-result-object v0

    return-object v0
.end method

.method protected Nb(Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;
    .locals 0

    return-object p1
.end method
