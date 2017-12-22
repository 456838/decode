.class public Lcom/xiaomi/passport/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/a/a;


# instance fields
.field private final HA:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/a/b;->HA:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public rq()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/xiaomi/passport/a/b;->HA:Landroid/content/Context;

    const-class v2, Lcom/xiaomi/passport/ui/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public rr()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/xiaomi/passport/a/b;->HA:Landroid/content/Context;

    const-class v2, Lcom/xiaomi/passport/ui/QuickLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public rs()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/xiaomi/passport/a/b;->HA:Landroid/content/Context;

    const-class v2, Lcom/xiaomi/passport/ui/NotificationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method
