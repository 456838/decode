.class public Lcom/xiaomi/account/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static nR:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static nS:Lcom/xiaomi/accountsdk/account/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/account/g;->nR:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static rD(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/xiaomi/account/g;->rF(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/account/g;->rE()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/a/a;->aaj(Lcom/xiaomi/accountsdk/account/a/a;)V

    sget-object v0, Lcom/xiaomi/account/g;->nR:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "2882303761517309296"

    const-string/jumbo v1, "5281730962296"

    const-string/jumbo v2, "miui"

    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/b;->asW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-static {v3, v0, v1}, Lcom/xiaomi/mistatistic/sdk/b;->asY(IJ)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/c;->atk()Z

    new-instance v0, Lcom/xiaomi/account/x;

    invoke-direct {v0}, Lcom/xiaomi/account/x;-><init>()V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/c;->atl(Lcom/xiaomi/mistatistic/sdk/a/a;)V

    :cond_2
    return-void
.end method

.method public static rE()Lcom/xiaomi/accountsdk/account/a/a;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/g;->nS:Lcom/xiaomi/accountsdk/account/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/account/y;

    invoke-direct {v0}, Lcom/xiaomi/account/y;-><init>()V

    sput-object v0, Lcom/xiaomi/account/g;->nS:Lcom/xiaomi/accountsdk/account/a/a;

    :cond_0
    sget-object v0, Lcom/xiaomi/account/g;->nS:Lcom/xiaomi/accountsdk/account/a/a;

    return-object v0
.end method

.method static rF(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/account/utils/p;->ou(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
