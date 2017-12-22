.class public Lcom/xiaomi/accountsdk/account/data/z;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private TO:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

.field private TP:Ljava/lang/String;

.field private TQ:Z

.field private TR:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

.field private TS:I

.field private final TT:Ljava/lang/String;

.field private TU:Ljava/lang/String;

.field private notificationUrl:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/z;->userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/z;->TT:Ljava/lang/String;

    return-void
.end method

.method static synthetic YN(Lcom/xiaomi/accountsdk/account/data/z;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/z;->TO:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    return-object v0
.end method

.method static synthetic YO(Lcom/xiaomi/accountsdk/account/data/z;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/z;->TP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic YP(Lcom/xiaomi/accountsdk/account/data/z;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/z;->TQ:Z

    return v0
.end method

.method static synthetic YQ(Lcom/xiaomi/accountsdk/account/data/z;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/z;->TR:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    return-object v0
.end method

.method static synthetic YR(Lcom/xiaomi/accountsdk/account/data/z;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/z;->notificationUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic YS(Lcom/xiaomi/accountsdk/account/data/z;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/accountsdk/account/data/z;->TS:I

    return v0
.end method

.method static synthetic YT(Lcom/xiaomi/accountsdk/account/data/z;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/z;->TT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic YU(Lcom/xiaomi/accountsdk/account/data/z;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/z;->TU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic YV(Lcom/xiaomi/accountsdk/account/data/z;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/z;->userId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public YG(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Lcom/xiaomi/accountsdk/account/data/z;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/z;->TO:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    return-object p0
.end method

.method public YH(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/z;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/z;->TP:Ljava/lang/String;

    return-object p0
.end method

.method public YI(Z)Lcom/xiaomi/accountsdk/account/data/z;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/z;->TQ:Z

    return-object p0
.end method

.method public YJ(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)Lcom/xiaomi/accountsdk/account/data/z;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/z;->TR:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    return-object p0
.end method

.method public YK(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/z;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/z;->notificationUrl:Ljava/lang/String;

    return-object p0
.end method

.method public YL(I)Lcom/xiaomi/accountsdk/account/data/z;
    .locals 0

    iput p1, p0, Lcom/xiaomi/accountsdk/account/data/z;->TS:I

    return-object p0
.end method

.method public YM(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/z;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/z;->TU:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;-><init>(Lcom/xiaomi/accountsdk/account/data/z;Lcom/xiaomi/accountsdk/account/data/MiLoginResult;)V

    return-object v0
.end method
