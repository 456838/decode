.class public Lcom/xiaomi/passport/utils/t;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final AA:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/utils/t;->AA:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final EU()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/t;->EX()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "CUserIdUtil#getCUserId() should NOT be called on main thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/t;->EV()Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/accountmanager/f;->BW(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    const-string/jumbo v3, "encrypted_user_id"

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/passport/accountmanager/f;->Ca(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v2

    const-string/jumbo v2, "CUserIdUtil"

    const-string/jumbo v3, "failed to getUserData"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/xiaomi/passport/accountmanager/f;->CH()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not supposed to be here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aget-object v0, v1, v4

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/utils/t;->EW(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method EV()Lcom/xiaomi/passport/accountmanager/f;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/t;->AA:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v0

    return-object v0
.end method

.method EW(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/utils/G;

    iget-object v1, p0, Lcom/xiaomi/passport/utils/t;->AA:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/G;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/utils/G;->ajh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method EX()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
