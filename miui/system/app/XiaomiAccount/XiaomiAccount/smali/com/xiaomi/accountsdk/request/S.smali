.class public Lcom/xiaomi/accountsdk/request/S;
.super Lcom/xiaomi/accountsdk/request/x;
.source ""


# instance fields
.field private final Zg:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

.field private final Zh:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/R;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/x;-><init>(Lcom/xiaomi/accountsdk/request/R;)V

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/S;->userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/request/S;->Zh:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/request/S;->Zg:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    return-void
.end method

.method static synthetic agX(Lcom/xiaomi/accountsdk/request/S;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/S;->Zg:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    return-object v0
.end method

.method static synthetic agY(Lcom/xiaomi/accountsdk/request/S;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/S;->Zh:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic agZ(Lcom/xiaomi/accountsdk/request/S;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/S;->userId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected afC(Lcom/xiaomi/accountsdk/account/d;Lcom/xiaomi/accountsdk/request/R;)Lcom/xiaomi/accountsdk/request/O;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/request/P;

    invoke-direct {v0, p2}, Lcom/xiaomi/accountsdk/request/P;-><init>(Lcom/xiaomi/accountsdk/request/R;)V

    new-instance v1, Lcom/xiaomi/accountsdk/request/O;

    invoke-direct {v1, v0, p1}, Lcom/xiaomi/accountsdk/request/O;-><init>(Lcom/xiaomi/accountsdk/request/M;Lcom/xiaomi/accountsdk/account/d;)V

    return-object v1
.end method

.method protected afD(Lcom/xiaomi/accountsdk/request/R;)Lcom/xiaomi/accountsdk/request/M;
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/request/T;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/accountsdk/request/T;-><init>(Lcom/xiaomi/accountsdk/request/S;Lcom/xiaomi/accountsdk/request/R;)V

    return-object v0
.end method

.method protected afz()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "byPassword"

    return-object v0
.end method
