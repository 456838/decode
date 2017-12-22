.class public Lcom/xiaomi/accountsdk/account/data/N;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private UT:Ljava/lang/String;

.field private UU:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ZM(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/N;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/N;->UT:Ljava/lang/String;

    return-object p0
.end method

.method public ZN(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/N;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/N;->UU:Ljava/lang/String;

    return-object p0
.end method

.method public ZO(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/N;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/N;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;
    .locals 5

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/N;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/N;->UT:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/N;->UU:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;)V

    return-object v0
.end method
