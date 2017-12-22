.class public final Lcom/xiaomi/passport/servicetoken/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private HY:Ljava/lang/String;

.field private HZ:Ljava/lang/String;

.field private Ia:Ljava/lang/String;

.field private Ib:Landroid/content/Intent;

.field private Ic:Z

.field private Id:Ljava/lang/String;

.field private Ie:Ljava/lang/String;

.field private If:Ljava/lang/String;

.field private final Ig:Ljava/lang/String;

.field private Ih:Ljava/lang/String;

.field private Ii:Z

.field private errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->HP:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/d;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/d;->Ig:Ljava/lang/String;

    return-void
.end method

.method public static LZ(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/d;
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/servicetoken/d;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LQ(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LR(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LP(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LS(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LT(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HB:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LY(Landroid/content/Intent;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LW(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LX(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LV(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HH:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LU(Z)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->LO(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->Ma(Z)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Mb(Lcom/xiaomi/passport/servicetoken/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/d;->HY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Mc(Lcom/xiaomi/passport/servicetoken/d;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/d;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    return-object v0
.end method

.method static synthetic Md(Lcom/xiaomi/passport/servicetoken/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/d;->HZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Me(Lcom/xiaomi/passport/servicetoken/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/d;->Ia:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Mf(Lcom/xiaomi/passport/servicetoken/d;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/d;->Ib:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic Mg(Lcom/xiaomi/passport/servicetoken/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/d;->Ic:Z

    return v0
.end method

.method static synthetic Mh(Lcom/xiaomi/passport/servicetoken/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/d;->Id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Mi(Lcom/xiaomi/passport/servicetoken/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/d;->Ie:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Mj(Lcom/xiaomi/passport/servicetoken/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/d;->If:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Mk(Lcom/xiaomi/passport/servicetoken/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/d;->Ig:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Ml(Lcom/xiaomi/passport/servicetoken/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/d;->Ih:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Mm(Lcom/xiaomi/passport/servicetoken/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/d;->Ii:Z

    return v0
.end method


# virtual methods
.method public LP(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/d;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/d;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    return-object p0
.end method

.method public LQ(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/d;->If:Ljava/lang/String;

    return-object p0
.end method

.method public LR(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/d;->Ie:Ljava/lang/String;

    return-object p0
.end method

.method public LS(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/d;->HZ:Ljava/lang/String;

    return-object p0
.end method

.method public LT(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/d;->Ia:Ljava/lang/String;

    return-object p0
.end method

.method public LU(Z)Lcom/xiaomi/passport/servicetoken/d;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/passport/servicetoken/d;->Ic:Z

    return-object p0
.end method

.method public LV(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/d;->HY:Ljava/lang/String;

    return-object p0
.end method

.method public LW(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/d;->Ih:Ljava/lang/String;

    return-object p0
.end method

.method public LX(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/d;->Id:Ljava/lang/String;

    return-object p0
.end method

.method public LY(Landroid/content/Intent;)Lcom/xiaomi/passport/servicetoken/d;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/d;->Ib:Landroid/content/Intent;

    return-object p0
.end method

.method public Ma(Z)Lcom/xiaomi/passport/servicetoken/d;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/passport/servicetoken/d;->Ii:Z

    return-object p0
.end method

.method public build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;-><init>(Lcom/xiaomi/passport/servicetoken/d;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V

    return-object v0
.end method
