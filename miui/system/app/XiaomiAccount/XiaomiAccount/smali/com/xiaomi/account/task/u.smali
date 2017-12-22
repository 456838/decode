.class public Lcom/xiaomi/account/task/u;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private jO:Lcom/xiaomi/account/data/d;

.field final synthetic jP:Lcom/xiaomi/account/task/s;

.field private notificationUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/task/s;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/account/task/u;->jP:Lcom/xiaomi/account/task/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/account/data/d;

    invoke-direct {v0, p3}, Lcom/xiaomi/account/data/d;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/account/task/u;->jO:Lcom/xiaomi/account/data/d;

    iput-object p2, p0, Lcom/xiaomi/account/task/u;->notificationUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public kO()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/task/u;->jO:Lcom/xiaomi/account/data/d;

    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lQ()I

    move-result v0

    return v0
.end method

.method public kP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/task/u;->notificationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public kQ()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/task/u;->jO:Lcom/xiaomi/account/data/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/task/u;->jO:Lcom/xiaomi/account/data/d;

    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lP()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
