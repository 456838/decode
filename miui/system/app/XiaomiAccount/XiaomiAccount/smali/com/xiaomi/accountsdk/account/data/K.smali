.class public Lcom/xiaomi/accountsdk/account/data/K;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private UM:Ljava/lang/String;

.field private UN:Ljava/lang/String;

.field private UO:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ZA(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/K;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/K;->UN:Ljava/lang/String;

    return-object p0
.end method

.method public ZB(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/K;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/K;->UO:Ljava/lang/String;

    return-object p0
.end method

.method public ZC(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/K;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/K;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public Zz(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/K;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/K;->UM:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;
    .locals 6

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/K;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/K;->UO:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/K;->UM:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/accountsdk/account/data/K;->UN:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;)V

    return-object v0
.end method
