.class public Lcom/xiaomi/accountsdk/account/data/s;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private SM:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field private SN:Ljava/lang/String;

.field private SO:Ljava/lang/String;

.field private SP:Ljava/lang/String;

.field private SQ:Ljava/lang/String;

.field private SR:Ljava/lang/String;

.field private SS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic XT(Lcom/xiaomi/accountsdk/account/data/s;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/s;->SM:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object v0
.end method

.method static synthetic XU(Lcom/xiaomi/accountsdk/account/data/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/s;->SN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic XV(Lcom/xiaomi/accountsdk/account/data/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/s;->SO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic XW(Lcom/xiaomi/accountsdk/account/data/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/s;->SP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic XX(Lcom/xiaomi/accountsdk/account/data/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/s;->SQ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic XY(Lcom/xiaomi/accountsdk/account/data/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/s;->SR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic XZ(Lcom/xiaomi/accountsdk/account/data/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/s;->SS:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public XN(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/s;->SQ:Ljava/lang/String;

    return-object p0
.end method

.method public XO(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/s;->SP:Ljava/lang/String;

    return-object p0
.end method

.method public XP(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/s;->SN:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/s;->SO:Ljava/lang/String;

    return-object p0
.end method

.method public XQ(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/s;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/s;->SM:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object p0
.end method

.method public XR(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/s;->SR:Ljava/lang/String;

    return-object p0
.end method

.method public XS(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/s;->SS:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/accountsdk/account/data/r;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/r;-><init>(Lcom/xiaomi/accountsdk/account/data/s;Lcom/xiaomi/accountsdk/account/data/r;)V

    return-object v0
.end method
