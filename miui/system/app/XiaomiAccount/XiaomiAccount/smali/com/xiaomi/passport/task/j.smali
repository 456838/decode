.class public Lcom/xiaomi/passport/task/j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Ck:Landroid/app/Activity;

.field private Cl:Ljava/lang/Runnable;

.field private Cm:Ljava/lang/Runnable;

.field private Cn:Ljava/lang/String;

.field private Co:Lcom/xiaomi/passport/task/k;

.field private Cp:Ljava/lang/Runnable;

.field private Cq:Lcom/xiaomi/passport/task/l;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/task/j;->Ck:Landroid/app/Activity;

    return-void
.end method

.method static synthetic Hl(Lcom/xiaomi/passport/task/j;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/task/j;->Ck:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic Hm(Lcom/xiaomi/passport/task/j;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/task/j;->Cl:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic Hn(Lcom/xiaomi/passport/task/j;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/task/j;->Cm:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic Ho(Lcom/xiaomi/passport/task/j;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/task/j;->Cn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Hp(Lcom/xiaomi/passport/task/j;)Lcom/xiaomi/passport/task/k;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/task/j;->Co:Lcom/xiaomi/passport/task/k;

    return-object v0
.end method

.method static synthetic Hq(Lcom/xiaomi/passport/task/j;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/task/j;->Cp:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic Hr(Lcom/xiaomi/passport/task/j;)Lcom/xiaomi/passport/task/l;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/task/j;->Cq:Lcom/xiaomi/passport/task/l;

    return-object v0
.end method


# virtual methods
.method public Hf(Ljava/lang/Runnable;)Lcom/xiaomi/passport/task/j;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/task/j;->Cp:Ljava/lang/Runnable;

    return-object p0
.end method

.method public Hg(Lcom/xiaomi/passport/task/k;)Lcom/xiaomi/passport/task/j;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/task/j;->Co:Lcom/xiaomi/passport/task/k;

    return-object p0
.end method

.method public Hh(Ljava/lang/Runnable;)Lcom/xiaomi/passport/task/j;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/task/j;->Cm:Ljava/lang/Runnable;

    return-object p0
.end method

.method public Hi(Ljava/lang/Runnable;)Lcom/xiaomi/passport/task/j;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/task/j;->Cl:Ljava/lang/Runnable;

    return-object p0
.end method

.method public Hj(Ljava/lang/String;)Lcom/xiaomi/passport/task/j;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/task/j;->Cn:Ljava/lang/String;

    return-object p0
.end method

.method public Hk(Lcom/xiaomi/passport/task/l;)Lcom/xiaomi/passport/task/j;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/task/j;->Cq:Lcom/xiaomi/passport/task/l;

    return-object p0
.end method

.method public build()Lcom/xiaomi/passport/task/i;
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/task/i;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/task/i;-><init>(Lcom/xiaomi/passport/task/j;)V

    return-object v0
.end method
