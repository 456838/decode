.class public Lcom/xiaomi/account/task/n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private jg:Z

.field private jh:Ljava/lang/String;

.field private ji:Lcom/xiaomi/account/task/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/account/task/o",
            "<TT;>;"
        }
    .end annotation
.end field

.field private jj:Landroid/app/FragmentManager;

.field private jk:Lcom/xiaomi/account/task/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/account/task/p",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/account/task/n;->jg:Z

    return-void
.end method

.method static synthetic kj(Lcom/xiaomi/account/task/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/account/task/n;->jg:Z

    return v0
.end method

.method static synthetic kk(Lcom/xiaomi/account/task/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/task/n;->jh:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic kl(Lcom/xiaomi/account/task/n;)Lcom/xiaomi/account/task/o;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/task/n;->ji:Lcom/xiaomi/account/task/o;

    return-object v0
.end method

.method static synthetic km(Lcom/xiaomi/account/task/n;)Landroid/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/task/n;->jj:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic kn(Lcom/xiaomi/account/task/n;)Lcom/xiaomi/account/task/p;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/task/n;->jk:Lcom/xiaomi/account/task/p;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/xiaomi/account/task/m;
    .locals 2

    new-instance v0, Lcom/xiaomi/account/task/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/account/task/m;-><init>(Lcom/xiaomi/account/task/n;Lcom/xiaomi/account/task/m;)V

    return-object v0
.end method

.method public kf(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/xiaomi/account/task/n;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/task/n;->jj:Landroid/app/FragmentManager;

    iput-object p2, p0, Lcom/xiaomi/account/task/n;->jh:Ljava/lang/String;

    return-object p0
.end method

.method public kg(Lcom/xiaomi/account/task/o;)Lcom/xiaomi/account/task/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/account/task/o",
            "<TT;>;)",
            "Lcom/xiaomi/account/task/n;"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/account/task/n;->ji:Lcom/xiaomi/account/task/o;

    return-object p0
.end method

.method public kh(Lcom/xiaomi/account/task/p;)Lcom/xiaomi/account/task/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/account/task/p",
            "<TT;>;)",
            "Lcom/xiaomi/account/task/n;"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/account/task/n;->jk:Lcom/xiaomi/account/task/p;

    return-object p0
.end method

.method public ki(Z)Lcom/xiaomi/account/task/n;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/account/task/n;->jg:Z

    return-object p0
.end method
