.class public Lcom/xiaomi/accountsdk/account/data/J;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private UF:Ljava/lang/String;

.field private UG:Ljava/lang/String;

.field private UH:Ljava/lang/String;

.field private UI:Ljava/lang/String;

.field private UJ:Ljava/lang/String;

.field private UK:Ljava/lang/String;

.field private UL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic Zs(Lcom/xiaomi/accountsdk/account/data/J;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/J;->UF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Zt(Lcom/xiaomi/accountsdk/account/data/J;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/J;->UG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Zu(Lcom/xiaomi/accountsdk/account/data/J;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/J;->UH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Zv(Lcom/xiaomi/accountsdk/account/data/J;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/J;->UI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Zw(Lcom/xiaomi/accountsdk/account/data/J;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/J;->UJ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Zx(Lcom/xiaomi/accountsdk/account/data/J;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/J;->UK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Zy(Lcom/xiaomi/accountsdk/account/data/J;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/J;->UL:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public Zn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/J;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/J;->UG:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/J;->UK:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/J;->UL:Ljava/lang/String;

    return-object p0
.end method

.method public Zo(Landroid/app/Application;)Lcom/xiaomi/accountsdk/account/data/J;
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/e;->acD(Landroid/app/Application;)V

    return-object p0
.end method

.method public Zp(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/J;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/J;->UF:Ljava/lang/String;

    return-object p0
.end method

.method public Zq(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/J;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/J;->UH:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/J;->UJ:Ljava/lang/String;

    return-object p0
.end method

.method public Zr(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/J;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/J;->UI:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/accountsdk/account/data/F;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/F;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/F;-><init>(Lcom/xiaomi/accountsdk/account/data/J;Lcom/xiaomi/accountsdk/account/data/F;)V

    return-object v0
.end method
