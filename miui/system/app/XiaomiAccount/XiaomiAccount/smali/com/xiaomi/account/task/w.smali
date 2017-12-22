.class public Lcom/xiaomi/account/task/w;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private jU:Landroid/app/Activity;

.field private jV:Lcom/xiaomi/account/task/x;

.field private jW:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/account/task/w;->jU:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public build()Lcom/xiaomi/account/task/v;
    .locals 5

    new-instance v0, Lcom/xiaomi/account/task/v;

    iget-object v1, p0, Lcom/xiaomi/account/task/w;->jU:Landroid/app/Activity;

    iget-object v2, p0, Lcom/xiaomi/account/task/w;->jV:Lcom/xiaomi/account/task/x;

    iget-object v3, p0, Lcom/xiaomi/account/task/w;->jW:Ljava/lang/Runnable;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/account/task/v;-><init>(Landroid/app/Activity;Lcom/xiaomi/account/task/x;Ljava/lang/Runnable;Lcom/xiaomi/account/task/v;)V

    return-object v0
.end method

.method public kV(Lcom/xiaomi/account/task/x;)Lcom/xiaomi/account/task/w;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/task/w;->jV:Lcom/xiaomi/account/task/x;

    return-object p0
.end method

.method public kW(Ljava/lang/Runnable;)Lcom/xiaomi/account/task/w;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/task/w;->jW:Ljava/lang/Runnable;

    return-object p0
.end method
