.class public final Lcom/xiaomi/accountsdk/account/data/M;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private UP:Ljava/lang/String;

.field private UQ:Ljava/lang/String;

.field private UR:Ljava/lang/String;

.field private US:Ljava/lang/String;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ZH(Lcom/xiaomi/accountsdk/account/data/M;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/M;->UP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ZI(Lcom/xiaomi/accountsdk/account/data/M;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/M;->UQ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ZJ(Lcom/xiaomi/accountsdk/account/data/M;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/M;->UR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ZK(Lcom/xiaomi/accountsdk/account/data/M;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/M;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ZL(Lcom/xiaomi/accountsdk/account/data/M;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/M;->US:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public ZD(Landroid/app/Application;)Lcom/xiaomi/accountsdk/account/data/M;
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/e;->acD(Landroid/app/Application;)V

    return-object p0
.end method

.method public ZE(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/M;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/M;->UP:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/M;->UQ:Ljava/lang/String;

    return-object p0
.end method

.method public ZF(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/M;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/M;->UR:Ljava/lang/String;

    return-object p0
.end method

.method public ZG(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/M;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/M;->US:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/accountsdk/account/data/I;
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/I;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/account/data/I;-><init>(Lcom/xiaomi/accountsdk/account/data/M;)V

    return-object v0
.end method

.method public password(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/M;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/M;->password:Ljava/lang/String;

    return-object p0
.end method
