.class public Lcom/xiaomi/account/utils/u;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final mH:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/xiaomi/account/utils/e;->lL:Landroid/os/UserHandle;

    sput-object v0, Lcom/xiaomi/account/utils/u;->mH:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pq()I
    .locals 1

    invoke-static {}, Lcom/xiaomi/account/utils/e;->nr()I

    move-result v0

    return v0
.end method

.method public static pr()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/xiaomi/account/utils/u;->pq()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static ps(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/utils/u;->mH:Landroid/os/UserHandle;

    invoke-static {p0, v0}, Lcom/xiaomi/account/utils/e;->np(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public static pt(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/passport/utils/x;->FC(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/account/utils/e;->nq(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Collections;->frequency(Ljava/util/Collection;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
