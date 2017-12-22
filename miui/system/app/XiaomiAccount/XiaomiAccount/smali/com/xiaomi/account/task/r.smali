.class public Lcom/xiaomi/account/task/r;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private jE:Z

.field private jF:Ljava/lang/String;

.field private jG:Ljava/lang/Runnable;

.field private jH:Landroid/app/FragmentManager;

.field private jI:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/account/task/r;->jE:Z

    return-void
.end method

.method static synthetic kH(Lcom/xiaomi/account/task/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/account/task/r;->jE:Z

    return v0
.end method

.method static synthetic kI(Lcom/xiaomi/account/task/r;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/task/r;->jF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic kJ(Lcom/xiaomi/account/task/r;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/task/r;->jG:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic kK(Lcom/xiaomi/account/task/r;)Landroid/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/task/r;->jH:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic kL(Lcom/xiaomi/account/task/r;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/task/r;->jI:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/xiaomi/account/task/q;
    .locals 2

    new-instance v0, Lcom/xiaomi/account/task/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/account/task/q;-><init>(Lcom/xiaomi/account/task/r;Lcom/xiaomi/account/task/q;)V

    return-object v0
.end method

.method public kD(Ljava/lang/Runnable;)Lcom/xiaomi/account/task/r;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/task/r;->jI:Ljava/lang/Runnable;

    return-object p0
.end method

.method public kE(Ljava/lang/Runnable;)Lcom/xiaomi/account/task/r;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/task/r;->jG:Ljava/lang/Runnable;

    return-object p0
.end method

.method public kF(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/xiaomi/account/task/r;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/task/r;->jH:Landroid/app/FragmentManager;

    iput-object p2, p0, Lcom/xiaomi/account/task/r;->jF:Ljava/lang/String;

    return-object p0
.end method

.method public kG(Z)Lcom/xiaomi/account/task/r;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/account/task/r;->jE:Z

    return-object p0
.end method
