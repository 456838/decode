.class Lcom/xiaomi/accountsdk/activate/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aaz:Ljava/lang/String;

.field private static executor:Ljava/util/concurrent/Executor;


# instance fields
.field private aay:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "com.xiaomi.simactivate.service"

    sput-object v0, Lcom/xiaomi/accountsdk/activate/c;->aaz:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/activate/c;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/activate/c;->aay:Landroid/content/Context;

    return-void
.end method

.method private static ajX(Landroid/content/Intent;Landroid/content/Context;Lcom/xiaomi/accountsdk/activate/ActivateSdkHelper$IntentType;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/accountsdk/activate/c;->aaz:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ActivateManager.sActivateServiceHostPackage == null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v2, Lcom/xiaomi/accountsdk/activate/c;->aaz:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/accountsdk/activate/ActivateSdkHelper$IntentType;->abi:Lcom/xiaomi/accountsdk/activate/ActivateSdkHelper$IntentType;

    if-ne p2, v3, :cond_4

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const-string/jumbo v0, "ActivateSdkHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fallabck to com.xiaomi.xmsf,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.xiaomi.xmsf"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method static synthetic aka()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/activate/c;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic akb(Lcom/xiaomi/accountsdk/activate/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/activate/c;->aay:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic akc(Landroid/content/Intent;Landroid/content/Context;Lcom/xiaomi/accountsdk/activate/ActivateSdkHelper$IntentType;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/accountsdk/activate/c;->ajX(Landroid/content/Intent;Landroid/content/Context;Lcom/xiaomi/accountsdk/activate/ActivateSdkHelper$IntentType;)V

    return-void
.end method


# virtual methods
.method ajW(IIIZ)Lcom/xiaomi/accountsdk/activate/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ)",
            "Lcom/xiaomi/accountsdk/activate/b",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/activate/h;

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/accountsdk/activate/h;-><init>(Lcom/xiaomi/accountsdk/activate/c;Lcom/xiaomi/accountsdk/activate/c;IIIZ)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/activate/h;->akC()Lcom/xiaomi/accountsdk/activate/b;

    move-result-object v0

    return-object v0
.end method

.method ajY(I)Lcom/xiaomi/accountsdk/activate/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/xiaomi/accountsdk/activate/b",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/activate/k;

    invoke-direct {v0, p0, p0, p1}, Lcom/xiaomi/accountsdk/activate/k;-><init>(Lcom/xiaomi/accountsdk/activate/c;Lcom/xiaomi/accountsdk/activate/c;I)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/activate/k;->akC()Lcom/xiaomi/accountsdk/activate/b;

    move-result-object v0

    return-object v0
.end method

.method ajZ(I)Lcom/xiaomi/accountsdk/activate/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/xiaomi/accountsdk/activate/b",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/activate/e;

    invoke-direct {v0, p0, p0, p1}, Lcom/xiaomi/accountsdk/activate/e;-><init>(Lcom/xiaomi/accountsdk/activate/c;Lcom/xiaomi/accountsdk/activate/c;I)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/activate/e;->akC()Lcom/xiaomi/accountsdk/activate/b;

    move-result-object v0

    return-object v0
.end method
