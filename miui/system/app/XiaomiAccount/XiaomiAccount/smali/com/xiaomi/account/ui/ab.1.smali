.class final Lcom/xiaomi/account/ui/ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/x;


# instance fields
.field final synthetic eu:Lcom/xiaomi/account/ui/c;

.field final synthetic ev:I


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/ab;->eu:Lcom/xiaomi/account/ui/c;

    iput p2, p0, Lcom/xiaomi/account/ui/ab;->ev:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ij(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/account/ui/ab;->ev:I

    aget-object v0, v0, v1

    invoke-static {p1, v0, p2}, Lcom/xiaomi/accountsdk/account/b;->abB(Lcom/xiaomi/accountsdk/account/data/a;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;Ljava/lang/String;)V

    return-void
.end method
