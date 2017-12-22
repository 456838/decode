.class final Lcom/xiaomi/passport/uicontroller/G;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Jp:Lcom/xiaomi/passport/uicontroller/y;

.field final synthetic Jq:Lcom/xiaomi/accountsdk/account/data/r;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/accountsdk/account/data/r;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/G;->Jp:Lcom/xiaomi/passport/uicontroller/y;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/G;->Jq:Lcom/xiaomi/accountsdk/account/data/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/G;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/G;->Jq:Lcom/xiaomi/accountsdk/account/data/r;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/b;->abu(Lcom/xiaomi/accountsdk/account/data/r;)V

    const/4 v0, 0x0

    return-object v0
.end method
