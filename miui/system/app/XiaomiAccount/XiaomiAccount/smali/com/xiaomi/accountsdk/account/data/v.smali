.class public Lcom/xiaomi/accountsdk/account/data/v;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private TA:Ljava/lang/String;

.field private TB:Ljava/lang/String;

.field private TC:Ljava/lang/String;

.field private TD:[Ljava/lang/String;

.field private TE:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

.field private TF:Z

.field private TG:Z

.field private TH:Ljava/lang/String;

.field private TI:Ljava/lang/String;

.field private Tz:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field private password:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/v;->TG:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/v;->TF:Z

    return-void
.end method

.method static synthetic Yo(Lcom/xiaomi/accountsdk/account/data/v;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/v;->Tz:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object v0
.end method

.method static synthetic Yp(Lcom/xiaomi/accountsdk/account/data/v;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/v;->TA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Yq(Lcom/xiaomi/accountsdk/account/data/v;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/v;->TB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Yr(Lcom/xiaomi/accountsdk/account/data/v;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/v;->TC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Ys(Lcom/xiaomi/accountsdk/account/data/v;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/v;->TD:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Yt(Lcom/xiaomi/accountsdk/account/data/v;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/v;->TE:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    return-object v0
.end method

.method static synthetic Yu(Lcom/xiaomi/accountsdk/account/data/v;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/v;->TF:Z

    return v0
.end method

.method static synthetic Yv(Lcom/xiaomi/accountsdk/account/data/v;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/v;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Yw(Lcom/xiaomi/accountsdk/account/data/v;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/v;->TG:Z

    return v0
.end method

.method static synthetic Yx(Lcom/xiaomi/accountsdk/account/data/v;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/v;->TH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Yy(Lcom/xiaomi/accountsdk/account/data/v;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/v;->TI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Yz(Lcom/xiaomi/accountsdk/account/data/v;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/v;->userId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public Yd(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/v;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public Ye(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/v;->password:Ljava/lang/String;

    return-object p0
.end method

.method public Yf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/v;->TC:Ljava/lang/String;

    return-object p0
.end method

.method public Yg(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/v;->TA:Ljava/lang/String;

    return-object p0
.end method

.method public Yh(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/v;->TB:Ljava/lang/String;

    return-object p0
.end method

.method public Yi(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/v;->TH:Ljava/lang/String;

    return-object p0
.end method

.method public Yj(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)Lcom/xiaomi/accountsdk/account/data/v;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/v;->TE:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    return-object p0
.end method

.method public Yk(Z)Lcom/xiaomi/accountsdk/account/data/v;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/v;->TF:Z

    return-object p0
.end method

.method public Yl(Z)Lcom/xiaomi/accountsdk/account/data/v;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/v;->TG:Z

    return-object p0
.end method

.method public Ym([Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/v;->TD:[Ljava/lang/String;

    return-object p0
.end method

.method public Yn(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/v;->TI:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;-><init>(Lcom/xiaomi/accountsdk/account/data/v;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)V

    return-object v0
.end method
