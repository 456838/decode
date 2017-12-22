.class public Lcom/xiaomi/phonenum/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private aoB(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.xiaomi.simactivate.service.ACTION_BIND_SYSTEM_PHONE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public aoA(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/phonenum/a;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/phonenum/utils/z;->ana()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/phonenum/utils/z;

    invoke-direct {v0, p1}, Lcom/xiaomi/phonenum/utils/z;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaomi/phonenum/c;->aoB(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    new-instance v2, Lcom/xiaomi/phonenum/f;

    invoke-direct {v2, v1, p2, v0}, Lcom/xiaomi/phonenum/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/phonenum/utils/a;)V

    return-object v2

    :cond_1
    new-instance v0, Lcom/xiaomi/phonenum/b/a;

    invoke-direct {v0, p1}, Lcom/xiaomi/phonenum/b/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "com.xiaomi.permission.CLOUD_MANAGER"

    invoke-interface {v0, v2}, Lcom/xiaomi/phonenum/utils/a;->alX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/xiaomi/phonenum/d;

    invoke-direct {v2, v1, p2, v0}, Lcom/xiaomi/phonenum/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/phonenum/utils/a;)V

    return-object v2
.end method
