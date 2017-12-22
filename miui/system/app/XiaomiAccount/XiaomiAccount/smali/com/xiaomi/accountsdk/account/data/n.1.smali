.class public Lcom/xiaomi/accountsdk/account/data/n;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Sj:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field private Sk:Ljava/lang/String;

.field private Sl:[Ljava/lang/String;

.field private Sm:Ljava/lang/String;

.field private Sn:Z

.field private So:Ljava/lang/String;

.field private Sp:Ljava/lang/String;

.field private Sq:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/n;->Sn:Z

    return-void
.end method

.method static synthetic XA(Lcom/xiaomi/accountsdk/account/data/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/n;->Sp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic XB(Lcom/xiaomi/accountsdk/account/data/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/n;->Sq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Xu(Lcom/xiaomi/accountsdk/account/data/n;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/n;->Sj:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object v0
.end method

.method static synthetic Xv(Lcom/xiaomi/accountsdk/account/data/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/n;->Sk:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Xw(Lcom/xiaomi/accountsdk/account/data/n;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/n;->Sl:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Xx(Lcom/xiaomi/accountsdk/account/data/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/n;->Sm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Xy(Lcom/xiaomi/accountsdk/account/data/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/n;->Sn:Z

    return v0
.end method

.method static synthetic Xz(Lcom/xiaomi/accountsdk/account/data/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/n;->So:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public Xn(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/n;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/n;->Sj:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/n;->Sp:Ljava/lang/String;

    return-object p0
.end method

.method public Xo(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/n;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/n;->Sk:Ljava/lang/String;

    return-object p0
.end method

.method public Xp([Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/n;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/n;->Sl:[Ljava/lang/String;

    return-object p0
.end method

.method public Xq(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/n;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/n;->Sm:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/n;->Sq:Ljava/lang/String;

    return-object p0
.end method

.method public Xr(Z)Lcom/xiaomi/accountsdk/account/data/n;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/n;->Sn:Z

    return-object p0
.end method

.method public Xs(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/n;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/n;->So:Ljava/lang/String;

    return-object p0
.end method

.method public Xt(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/n;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/n;->Sj:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object p0
.end method

.method public build()Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;-><init>(Lcom/xiaomi/accountsdk/account/data/n;Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V

    return-object v0
.end method
