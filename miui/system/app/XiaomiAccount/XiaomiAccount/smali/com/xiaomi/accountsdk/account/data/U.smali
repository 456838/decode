.class public Lcom/xiaomi/accountsdk/account/data/U;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Ve:Ljava/lang/String;

.field private Vf:Z

.field private Vg:Ljava/lang/String;

.field private final Vh:Ljava/lang/String;

.field private Vi:Z

.field private final Vj:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/U;->Vi:Z

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/U;->Vf:Z

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/U;->userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/U;->Vh:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/U;->Vj:Ljava/lang/String;

    return-void
.end method

.method static synthetic ZT(Lcom/xiaomi/accountsdk/account/data/U;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/U;->Ve:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ZU(Lcom/xiaomi/accountsdk/account/data/U;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/U;->Vf:Z

    return v0
.end method

.method static synthetic ZV(Lcom/xiaomi/accountsdk/account/data/U;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/U;->Vg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ZW(Lcom/xiaomi/accountsdk/account/data/U;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/U;->Vh:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ZX(Lcom/xiaomi/accountsdk/account/data/U;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/U;->Vi:Z

    return v0
.end method

.method static synthetic ZY(Lcom/xiaomi/accountsdk/account/data/U;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/U;->Vj:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ZZ(Lcom/xiaomi/accountsdk/account/data/U;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/U;->userId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public ZP(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/U;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/U;->Ve:Ljava/lang/String;

    return-object p0
.end method

.method public ZQ(Z)Lcom/xiaomi/accountsdk/account/data/U;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/U;->Vf:Z

    return-object p0
.end method

.method public ZR(Z)Lcom/xiaomi/accountsdk/account/data/U;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/U;->Vi:Z

    return-object p0
.end method

.method public ZS(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/U;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/U;->Vg:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/accountsdk/account/data/H;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/H;-><init>(Lcom/xiaomi/accountsdk/account/data/U;Lcom/xiaomi/accountsdk/account/data/H;)V

    return-object v0
.end method
