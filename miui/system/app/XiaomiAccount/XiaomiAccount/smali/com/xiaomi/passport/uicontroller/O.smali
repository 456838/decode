.class final Lcom/xiaomi/passport/uicontroller/O;
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
.field final synthetic JG:Lcom/xiaomi/passport/uicontroller/y;

.field final synthetic JH:Lcom/xiaomi/accountsdk/account/data/a;

.field final synthetic JI:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/O;->JG:Lcom/xiaomi/passport/uicontroller/y;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/O;->JH:Lcom/xiaomi/accountsdk/account/data/a;

    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/O;->JI:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/O;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/O;->JH:Lcom/xiaomi/accountsdk/account/data/a;

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/O;->JI:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/account/b;->abw(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
