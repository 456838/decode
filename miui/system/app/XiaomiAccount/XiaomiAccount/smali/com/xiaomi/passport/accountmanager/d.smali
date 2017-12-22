.class public Lcom/xiaomi/passport/accountmanager/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static zi:Lcom/xiaomi/passport/accountmanager/d;


# instance fields
.field private final zj:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/d;->zj:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized Cq(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/d;
    .locals 3

    const-class v1, Lcom/xiaomi/passport/accountmanager/d;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "context cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/passport/accountmanager/d;->zi:Lcom/xiaomi/passport/accountmanager/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/passport/accountmanager/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/passport/accountmanager/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/passport/accountmanager/d;->zi:Lcom/xiaomi/passport/accountmanager/d;

    :cond_1
    sget-object v0, Lcom/xiaomi/passport/accountmanager/d;->zi:Lcom/xiaomi/passport/accountmanager/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method Cr()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/d;->zj:Landroid/content/Context;

    const-string/jumbo v1, "MiAccountManagerSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public Cs()Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/accountmanager/d;->Cr()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "authenticator"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->values()[Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    move-result-object v1

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public Ct(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "accountAuthenticator can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/accountmanager/d;->Cr()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "authenticator"

    invoke-virtual {p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
