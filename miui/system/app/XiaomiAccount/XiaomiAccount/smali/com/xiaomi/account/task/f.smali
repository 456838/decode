.class public Lcom/xiaomi/account/task/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private iJ:Landroid/content/Context;

.field private iK:Lcom/xiaomi/account/task/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/task/f;->iJ:Landroid/content/Context;

    return-void
.end method

.method static synthetic jR(Lcom/xiaomi/account/task/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/task/f;->iJ:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic jS(Lcom/xiaomi/account/task/f;)Lcom/xiaomi/account/task/g;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/task/f;->iK:Lcom/xiaomi/account/task/g;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/xiaomi/account/task/e;
    .locals 2

    new-instance v0, Lcom/xiaomi/account/task/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/account/task/e;-><init>(Lcom/xiaomi/account/task/f;Lcom/xiaomi/account/task/e;)V

    return-object v0
.end method

.method public jQ(Lcom/xiaomi/account/task/g;)Lcom/xiaomi/account/task/f;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/task/f;->iK:Lcom/xiaomi/account/task/g;

    return-object p0
.end method
