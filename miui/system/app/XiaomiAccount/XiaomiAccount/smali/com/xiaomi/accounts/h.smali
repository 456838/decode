.class public Lcom/xiaomi/accounts/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile MO:Lcom/xiaomi/accounts/h;


# instance fields
.field private final MJ:Landroid/content/BroadcastReceiver;

.field private final MK:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/OnAccountsUpdateListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final ML:Landroid/content/Context;

.field private final MM:Landroid/os/Handler;

.field private MN:Lcom/xiaomi/accounts/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/a/b;->atO()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accounts/h;->MK:Ljava/util/HashMap;

    new-instance v0, Lcom/xiaomi/accounts/w;

    invoke-direct {v0, p0}, Lcom/xiaomi/accounts/w;-><init>(Lcom/xiaomi/accounts/h;)V

    iput-object v0, p0, Lcom/xiaomi/accounts/h;->MJ:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/xiaomi/accounts/h;->ML:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/accounts/h;->ML:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/accounts/h;->MM:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/accounts/a;

    invoke-direct {v0, p1}, Lcom/xiaomi/accounts/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/accounts/h;->MN:Lcom/xiaomi/accounts/a;

    return-void
.end method

.method public static RW(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    if-eqz p0, :cond_0

    const-string/jumbo v0, "authtoken"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "authtoken"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v1, "authtoken"

    const-string/jumbo v2, "<omitted for logging purposes>"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static RX(Landroid/content/Context;)Lcom/xiaomi/accounts/h;
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/xiaomi/accounts/h;->MO:Lcom/xiaomi/accounts/h;

    if-nez v0, :cond_2

    const-class v1, Lcom/xiaomi/accounts/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/accounts/h;->MO:Lcom/xiaomi/accounts/h;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/accounts/h;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/accounts/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/accounts/h;->MO:Lcom/xiaomi/accounts/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    :cond_2
    sget-object v0, Lcom/xiaomi/accounts/h;->MO:Lcom/xiaomi/accounts/h;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private Sk(ILjava/lang/String;)Ljava/lang/Exception;
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/accounts/AuthenticatorException;

    invoke-direct {v0, p2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v0, Landroid/accounts/AuthenticatorException;

    invoke-direct {v0, p2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private Sl()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accounts/h;->ML:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "AccountManager"

    const-string/jumbo v2, "calling this from your main thread can lead to deadlock and/or ANRs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/xiaomi/accounts/h;->ML:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    throw v0

    :cond_0
    return-void
.end method

.method private Sm(Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/accounts/h;->MM:Landroid/os/Handler;

    :cond_0
    new-instance v0, Lcom/xiaomi/accounts/y;

    invoke-direct {v0, p0, p2, p3}, Lcom/xiaomi/accounts/y;-><init>(Lcom/xiaomi/accounts/h;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private Sn(Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .locals 3

    const/4 v2, 0x0

    array-length v0, p3

    new-array v0, v0, [Landroid/accounts/Account;

    array-length v1, v0

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/accounts/h;->MM:Landroid/os/Handler;

    :cond_0
    new-instance v1, Lcom/xiaomi/accounts/z;

    invoke-direct {v1, p0, p2, v0}, Lcom/xiaomi/accounts/z;-><init>(Lcom/xiaomi/accounts/h;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic So(Lcom/xiaomi/accounts/h;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accounts/h;->MK:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic Sp(Lcom/xiaomi/accounts/h;)Lcom/xiaomi/accounts/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accounts/h;->MN:Lcom/xiaomi/accounts/a;

    return-object v0
.end method

.method static synthetic Sq(Lcom/xiaomi/accounts/h;ILjava/lang/String;)Ljava/lang/Exception;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accounts/h;->Sk(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Sr(Lcom/xiaomi/accounts/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accounts/h;->Sl()V

    return-void
.end method

.method static synthetic Ss(Lcom/xiaomi/accounts/h;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/accounts/h;->Sm(Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method

.method static synthetic St(Lcom/xiaomi/accounts/h;Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/accounts/h;->Sn(Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V

    return-void
.end method


# virtual methods
.method public RY(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accounts/h;->MN:Lcom/xiaomi/accounts/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accounts/a;->Qw(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public RZ(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accounts/h;->MN:Lcom/xiaomi/accounts/a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accounts/a;->QA(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Sa()[Landroid/accounts/Account;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accounts/h;->MN:Lcom/xiaomi/accounts/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accounts/a;->Qr(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public Sb(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accounts/h;->MN:Lcom/xiaomi/accounts/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accounts/a;->Qr(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public Sc(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accounts/h;->MN:Lcom/xiaomi/accounts/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/accounts/a;->Qe(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public Sd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/accounts/h;->MN:Lcom/xiaomi/accounts/a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accounts/a;->QI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public Se(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accounts/h;->MN:Lcom/xiaomi/accounts/a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accounts/a;->QL(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Sf(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accounts/h;->MN:Lcom/xiaomi/accounts/a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accounts/a;->QX(Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public Sg(Landroid/accounts/Account;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accounts/h;->MN:Lcom/xiaomi/accounts/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accounts/a;->Qo(Landroid/accounts/Account;)V

    return-void
.end method

.method public Sh(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accounts/h;->MN:Lcom/xiaomi/accounts/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/accounts/a;->QZ(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Si(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accounts/h;->MN:Lcom/xiaomi/accounts/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/accounts/a;->QW(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Sj(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_2

    invoke-virtual {v8, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2
    const-string/jumbo v0, "androidPackageName"

    iget-object v1, p0, Lcom/xiaomi/accounts/h;->ML:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/accounts/x;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p6

    move-object v5, p5

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/accounts/x;-><init>(Lcom/xiaomi/accounts/h;Lcom/xiaomi/accounts/h;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/xiaomi/accounts/x;->Sx()Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method
