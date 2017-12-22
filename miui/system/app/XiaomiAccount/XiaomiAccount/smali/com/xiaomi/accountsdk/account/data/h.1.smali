.class public Lcom/xiaomi/accountsdk/account/data/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private QB:Ljava/lang/String;

.field private QC:Z

.field private QD:Ljava/lang/String;

.field private QE:Ljava/lang/String;

.field private final QF:I

.field private QG:Ljava/lang/String;

.field private QH:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/accountsdk/account/data/h;->QF:I

    return-void
.end method

.method static synthetic WC(Lcom/xiaomi/accountsdk/account/data/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/h;->QB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic WD(Lcom/xiaomi/accountsdk/account/data/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/h;->QC:Z

    return v0
.end method

.method static synthetic WE(Lcom/xiaomi/accountsdk/account/data/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/h;->QD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic WF(Lcom/xiaomi/accountsdk/account/data/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/h;->QE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic WG(Lcom/xiaomi/accountsdk/account/data/h;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/accountsdk/account/data/h;->QF:I

    return v0
.end method

.method static synthetic WH(Lcom/xiaomi/accountsdk/account/data/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/h;->QG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic WI(Lcom/xiaomi/accountsdk/account/data/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/h;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic WJ(Lcom/xiaomi/accountsdk/account/data/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/h;->QH:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public WA(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/h;->QD:Ljava/lang/String;

    return-object p0
.end method

.method public WB(Z)Lcom/xiaomi/accountsdk/account/data/h;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/h;->QC:Z

    return-object p0
.end method

.method public Wv(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/h;->QE:Ljava/lang/String;

    return-object p0
.end method

.method public Ww(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/h;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public Wx(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/h;->QH:Ljava/lang/String;

    return-object p0
.end method

.method public Wy(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/h;->QB:Ljava/lang/String;

    return-object p0
.end method

.method public Wz(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/h;->QG:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/h;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    return-object v0
.end method
