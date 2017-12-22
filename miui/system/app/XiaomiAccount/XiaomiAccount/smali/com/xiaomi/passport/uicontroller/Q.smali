.class final Lcom/xiaomi/passport/uicontroller/Q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic JL:Lcom/xiaomi/passport/uicontroller/y;

.field final synthetic JM:Lcom/xiaomi/accountsdk/account/data/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/accountsdk/account/data/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/Q;->JL:Lcom/xiaomi/passport/uicontroller/y;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/Q;->JM:Lcom/xiaomi/accountsdk/account/data/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/Q;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/Q;->JM:Lcom/xiaomi/accountsdk/account/data/e;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/b;->abz(Lcom/xiaomi/accountsdk/account/data/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
