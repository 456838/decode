.class public Lcom/xiaomi/accountsdk/account/data/C;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Ua:Ljava/lang/String;

.field private Ub:Ljava/lang/String;

.field private Uc:Ljava/lang/String;

.field private Ud:Ljava/lang/String;

.field private Ue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic YY(Lcom/xiaomi/accountsdk/account/data/C;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/C;->Ua:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic YZ(Lcom/xiaomi/accountsdk/account/data/C;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/C;->Ub:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Za(Lcom/xiaomi/accountsdk/account/data/C;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/C;->Uc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Zb(Lcom/xiaomi/accountsdk/account/data/C;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/C;->Ud:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Zc(Lcom/xiaomi/accountsdk/account/data/C;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/C;->Ue:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public YW(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/C;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QI:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/C;->Ud:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QJ:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/C;->Ua:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public YX(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/C;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/C;->Uc:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/C;->Ue:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/accountsdk/account/data/B;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/B;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/B;-><init>(Lcom/xiaomi/accountsdk/account/data/C;Lcom/xiaomi/accountsdk/account/data/B;)V

    return-object v0
.end method
