.class public Lcom/xiaomi/account/data/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private lo:Ljava/lang/String;

.field private lp:Ljava/lang/String;

.field private lq:Z

.field private lr:Ljava/lang/String;

.field private final ls:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

.field private lt:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/account/data/i;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/account/data/i;->ls:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    return-void
.end method

.method static synthetic mr(Lcom/xiaomi/account/data/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/i;->lo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ms(Lcom/xiaomi/account/data/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/i;->lp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic mt(Lcom/xiaomi/account/data/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/account/data/i;->lq:Z

    return v0
.end method

.method static synthetic mu(Lcom/xiaomi/account/data/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/i;->lr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic mv(Lcom/xiaomi/account/data/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/i;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic mw(Lcom/xiaomi/account/data/i;)Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/i;->ls:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    return-object v0
.end method

.method static synthetic mx(Lcom/xiaomi/account/data/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/i;->lt:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/xiaomi/account/data/LockedDeviceInfo;
    .locals 2

    new-instance v0, Lcom/xiaomi/account/data/LockedDeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/account/data/LockedDeviceInfo;-><init>(Lcom/xiaomi/account/data/i;Lcom/xiaomi/account/data/LockedDeviceInfo;)V

    return-object v0
.end method

.method public mm(Ljava/lang/String;)Lcom/xiaomi/account/data/i;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/data/i;->lp:Ljava/lang/String;

    return-object p0
.end method

.method public mn(Z)Lcom/xiaomi/account/data/i;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/account/data/i;->lq:Z

    return-object p0
.end method

.method public mo(Ljava/lang/String;)Lcom/xiaomi/account/data/i;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/data/i;->lt:Ljava/lang/String;

    return-object p0
.end method

.method public mp(Ljava/lang/String;)Lcom/xiaomi/account/data/i;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/data/i;->lo:Ljava/lang/String;

    return-object p0
.end method

.method public mq(Ljava/lang/String;)Lcom/xiaomi/account/data/i;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/data/i;->lr:Ljava/lang/String;

    return-object p0
.end method
