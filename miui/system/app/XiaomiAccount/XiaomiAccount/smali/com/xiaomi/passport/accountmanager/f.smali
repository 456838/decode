.class public Lcom/xiaomi/passport/accountmanager/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/accountmanager/g;


# static fields
.field private static volatile zt:Lcom/xiaomi/passport/accountmanager/f;

.field private static final synthetic zu:[I


# instance fields
.field private zm:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

.field private zn:Z

.field private zo:Z

.field private final zp:Landroid/content/Context;

.field private zq:Lcom/xiaomi/passport/accountmanager/b;

.field private zr:Lcom/xiaomi/passport/accountmanager/j;

.field private zs:Lcom/xiaomi/passport/accountmanager/g;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zp:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zp:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/e;->acH(Landroid/app/Application;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/e;->acJ(Z)V

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/accountmanager/f;->CI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zo:Z

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/accountmanager/f;->CJ(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zn:Z

    invoke-direct {p0}, Lcom/xiaomi/passport/accountmanager/f;->CK()V

    return-void
.end method

.method public static CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/xiaomi/passport/accountmanager/f;->zt:Lcom/xiaomi/passport/accountmanager/f;

    if-nez v0, :cond_2

    const-class v1, Lcom/xiaomi/passport/accountmanager/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/passport/accountmanager/f;->zt:Lcom/xiaomi/passport/accountmanager/f;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/passport/accountmanager/f;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/accountmanager/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/passport/accountmanager/f;->zt:Lcom/xiaomi/passport/accountmanager/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    :cond_2
    sget-object v0, Lcom/xiaomi/passport/accountmanager/f;->zt:Lcom/xiaomi/passport/accountmanager/f;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private CI(Landroid/content/Context;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    iget-object v5, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string/jumbo v6, "com.xiaomi"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, v4, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "com.miui.miuilite"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private CJ(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.xiaomi.account.action.SERVICE_TOKEN_OP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.xiaomi.account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private CK()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zp:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/passport/accountmanager/d;->Cq(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/accountmanager/d;->Cs()Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->zx:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/passport/accountmanager/f;->CM(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V

    return-void
.end method

.method private CL(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/passport/accountmanager/f;->CO()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zo:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->zx:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zm:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    :goto_0
    invoke-static {}, Lcom/xiaomi/passport/accountmanager/f;->CO()[I

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/accountmanager/f;->zm:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    invoke-virtual {v1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->zw:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zm:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->zw:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zm:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zr:Lcom/xiaomi/passport/accountmanager/j;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/passport/accountmanager/j;

    iget-object v1, p0, Lcom/xiaomi/passport/accountmanager/f;->zp:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/accountmanager/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zr:Lcom/xiaomi/passport/accountmanager/j;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zr:Lcom/xiaomi/passport/accountmanager/j;

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zs:Lcom/xiaomi/passport/accountmanager/g;

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zp:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/passport/accountmanager/d;->Cq(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/accountmanager/f;->zm:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/accountmanager/d;->Ct(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zq:Lcom/xiaomi/passport/accountmanager/b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/xiaomi/passport/accountmanager/b;

    iget-object v1, p0, Lcom/xiaomi/passport/accountmanager/f;->zp:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/accountmanager/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zq:Lcom/xiaomi/passport/accountmanager/b;

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zq:Lcom/xiaomi/passport/accountmanager/b;

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zs:Lcom/xiaomi/passport/accountmanager/g;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private CM(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/accountmanager/f;->CN(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/accountmanager/f;->CL(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V

    return-void
.end method

.method private CN(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/passport/accountmanager/f;->CO()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {}, Lcom/xiaomi/passport/utils/z;->Gd()Lcom/xiaomi/passport/utils/z;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;->AW:Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/utils/z;->Ge(Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;)V

    :goto_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/xiaomi/passport/utils/z;->Gd()Lcom/xiaomi/passport/utils/z;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;->AV:Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/utils/z;->Ge(Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic CO()[I
    .locals 3

    sget-object v0, Lcom/xiaomi/passport/accountmanager/f;->zu:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/accountmanager/f;->zu:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->values()[Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->zw:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    invoke-virtual {v1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->zx:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    invoke-virtual {v1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/xiaomi/passport/accountmanager/f;->zu:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public BU(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zs:Lcom/xiaomi/passport/accountmanager/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/passport/accountmanager/g;->BU(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public BV(Landroid/accounts/Account;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zs:Lcom/xiaomi/passport/accountmanager/g;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/accountmanager/g;->BV(Landroid/accounts/Account;)V

    return-void
.end method

.method public BW(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zs:Lcom/xiaomi/passport/accountmanager/g;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/accountmanager/g;->BW(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public BX(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 7
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

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zs:Lcom/xiaomi/passport/accountmanager/g;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/xiaomi/passport/accountmanager/g;->BX(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public BY(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zs:Lcom/xiaomi/passport/accountmanager/g;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/accountmanager/g;->BY(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public BZ(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zs:Lcom/xiaomi/passport/accountmanager/g;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/accountmanager/g;->BZ(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/b;

    move-result-object v0

    return-object v0
.end method

.method public CH()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zm:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    sget-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->zx:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ca(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zs:Lcom/xiaomi/passport/accountmanager/g;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/accountmanager/g;->Ca(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Cb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zs:Lcom/xiaomi/passport/accountmanager/g;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/accountmanager/g;->Cb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Cc(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zs:Lcom/xiaomi/passport/accountmanager/g;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/accountmanager/g;->Cc(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/b;

    move-result-object v0

    return-object v0
.end method

.method public Cd(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zs:Lcom/xiaomi/passport/accountmanager/g;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/accountmanager/g;->Cd(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ce(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zs:Lcom/xiaomi/passport/accountmanager/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/passport/accountmanager/g;->Ce(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Cf(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zs:Lcom/xiaomi/passport/accountmanager/g;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/accountmanager/g;->Cf(Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public Cg(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/f;->zs:Lcom/xiaomi/passport/accountmanager/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/passport/accountmanager/g;->Cg(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
