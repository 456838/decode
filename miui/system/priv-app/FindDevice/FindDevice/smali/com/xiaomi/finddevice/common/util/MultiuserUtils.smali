.class public Lcom/xiaomi/finddevice/common/util/MultiuserUtils;
.super Ljava/lang/Object;
.source "MultiuserUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureRunAsOwnerUser()V
    .locals 5

    .prologue
    .line 18
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->isOwnerUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    const-string/jumbo v1, "must run as the owner user. Current user: %s. "

    .line 19
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 19
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_0
    return-void
.end method

.method public static getUserId()I
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public static isOwnerUser()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static switchToOwnerUser(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 25
    const-string/jumbo v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 28
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->switchUser(I)Z

    .line 24
    :cond_0
    return-void
.end method
