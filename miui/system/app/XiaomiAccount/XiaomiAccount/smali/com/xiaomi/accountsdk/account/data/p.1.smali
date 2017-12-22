.class public Lcom/xiaomi/accountsdk/account/data/p;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private SA:Ljava/lang/String;

.field private SB:Ljava/lang/String;

.field private SC:Ljava/lang/String;

.field private Sy:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field private Sz:Z

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic XG(Lcom/xiaomi/accountsdk/account/data/p;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/p;->Sy:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object v0
.end method

.method static synthetic XH(Lcom/xiaomi/accountsdk/account/data/p;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/p;->Sz:Z

    return v0
.end method

.method static synthetic XI(Lcom/xiaomi/accountsdk/account/data/p;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/p;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic XJ(Lcom/xiaomi/accountsdk/account/data/p;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/p;->SA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic XK(Lcom/xiaomi/accountsdk/account/data/p;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/p;->SB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic XL(Lcom/xiaomi/accountsdk/account/data/p;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/p;->SC:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public XD(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/p;
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->Sy:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/p;->Sz:Z

    return-object p0
.end method

.method public XE(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/p;
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->SA:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/p;->SC:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/p;->Sz:Z

    return-object p0
.end method

.method public XF(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/p;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->SB:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;-><init>(Lcom/xiaomi/accountsdk/account/data/p;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)V

    return-object v0
.end method

.method public password(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/p;
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->password:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/p;->Sz:Z

    return-object p0
.end method
