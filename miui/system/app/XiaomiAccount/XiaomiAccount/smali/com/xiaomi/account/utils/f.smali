.class public final Lcom/xiaomi/account/utils/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final lM:Landroid/os/Handler;


# instance fields
.field private lN:Lcom/xiaomi/account/utils/g;

.field private lO:Lcom/xiaomi/account/task/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/account/task/m",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/account/utils/f;->lM:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private nA(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method private nB(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const v4, 0x104000a

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/account/utils/f;->nC(Landroid/app/Activity;ILjava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private nC(Landroid/app/Activity;ILjava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    if-eq p4, v1, :cond_0

    invoke-virtual {v0, p4, p5}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    :cond_0
    if-eq p6, v1, :cond_1

    invoke-virtual {v0, p6, p7}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private nD(Landroid/content/Context;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lmiui/cloud/finddevice/a;->aGG(Landroid/content/Context;)Lmiui/cloud/finddevice/a;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lmiui/cloud/finddevice/a;->close()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lmiui/cloud/finddevice/a;->aGH()V

    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiui/cloud/c/a;->aHu([Ljava/lang/Object;)V

    const-string/jumbo v2, "LogoutModel"

    const-string/jumbo v3, "failed to turn off find device"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/account/h;

    invoke-direct {v4}, Lcom/xiaomi/account/h;-><init>()V

    invoke-virtual {v4, p1, v0}, Lcom/xiaomi/account/h;->rG(Landroid/content/Context;Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lmiui/cloud/finddevice/a;->aGH()V

    return-object v2

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiui/cloud/c/a;->aHu([Ljava/lang/Object;)V

    const-string/jumbo v2, "LogoutModel"

    const-string/jumbo v3, "failed to turn off find device"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0c016b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Lmiui/cloud/finddevice/a;->aGH()V

    return-object v0

    :catch_2
    move-exception v0

    const/4 v2, 0x1

    :try_start_3
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiui/cloud/c/a;->aHu([Ljava/lang/Object;)V

    const-string/jumbo v2, "LogoutModel"

    const-string/jumbo v3, "failed to turn off find device"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0c0165

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1}, Lmiui/cloud/finddevice/a;->aGH()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lmiui/cloud/finddevice/a;->aGH()V

    throw v0
.end method

.method static synthetic nE()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/utils/f;->lM:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic nF(Lcom/xiaomi/account/utils/f;Landroid/content/Context;)Landroid/util/Pair;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/account/utils/f;->nD(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic nG(Lcom/xiaomi/account/utils/f;Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/account/utils/f;->nv(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic nH(Lcom/xiaomi/account/utils/f;Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/utils/f;->nx(Landroid/content/Context;Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic nI(Lcom/xiaomi/account/utils/f;Landroid/content/Context;Landroid/accounts/Account;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/account/utils/f;->ny(Landroid/content/Context;Landroid/accounts/Account;ZZ)V

    return-void
.end method

.method static synthetic nJ(Lcom/xiaomi/account/utils/f;Landroid/content/Context;Landroid/content/res/Resources;Landroid/app/FragmentManager;Lcom/xiaomi/account/utils/h;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/account/utils/f;->nz(Landroid/content/Context;Landroid/content/res/Resources;Landroid/app/FragmentManager;Lcom/xiaomi/account/utils/h;)V

    return-void
.end method

.method static synthetic nK(Lcom/xiaomi/account/utils/f;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/utils/f;->nA(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic nL(Lcom/xiaomi/account/utils/f;Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/account/utils/f;->nB(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method private nu(Landroid/app/Activity;Landroid/content/res/Resources;Ljava/lang/Runnable;)V
    .locals 8

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/utils/f;->nw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c00d5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/xiaomi/account/utils/y;

    invoke-direct {v5, p0, p3}, Lcom/xiaomi/account/utils/y;-><init>(Lcom/xiaomi/account/utils/f;Ljava/lang/Runnable;)V

    const v2, 0x7f0c00d4

    const v4, 0x104000a

    const/high16 v6, 0x1040000

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/account/utils/f;->nC(Landroid/app/Activity;ILjava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private nv(Landroid/content/Context;)I
    .locals 8

    const/4 v1, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x3

    const-string/jumbo v3, "deviceinfo"

    invoke-static {p1, v3}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v0, "LogoutModel"

    const-string/jumbo v1, "null passportInfo"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v3, 0x5

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_1

    :try_start_0
    invoke-static {v5}, Lcom/xiaomi/account/utils/q;->oD(Lcom/xiaomi/accountsdk/account/data/a;)V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogoutModel"

    const-string/jumbo v2, "illegal device ID when delete device"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xe

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "LogoutModel"

    const-string/jumbo v3, "IOException when delete device"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "LogoutModel"

    const-string/jumbo v3, "cipher error when delete device"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v1, "LogoutModel"

    const-string/jumbo v3, "invalid response when delete device"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_1

    :catch_4
    move-exception v0

    const-string/jumbo v1, "LogoutModel"

    const-string/jumbo v2, "access denied when delete device"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    goto :goto_1

    :catch_5
    move-exception v6

    const-string/jumbo v6, "LogoutModel"

    const-string/jumbo v7, "authentication failure"

    invoke-static {v6, v7}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, p1}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method private nw(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_bank_card_in_ese"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private nx(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "extra_account"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_update_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private ny(Landroid/content/Context;Landroid/accounts/Account;ZZ)V
    .locals 3

    const-string/jumbo v0, "LogoutModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing Xiaomi account, wipe data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "extra_account"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_update_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "extra_wipe_data"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "extra_wipe_synced_data"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "extra_bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.ACTION_IMPORT_SINA_WEIBO_CANCELED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private nz(Landroid/content/Context;Landroid/content/res/Resources;Landroid/app/FragmentManager;Lcom/xiaomi/account/utils/h;)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/account/utils/f;->lN:Lcom/xiaomi/account/utils/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/utils/f;->lN:Lcom/xiaomi/account/utils/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/utils/g;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/xiaomi/account/utils/g;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/account/utils/g;-><init>(Lcom/xiaomi/account/utils/f;Landroid/content/Context;Landroid/content/res/Resources;Landroid/app/FragmentManager;Lcom/xiaomi/account/utils/h;)V

    iput-object v0, p0, Lcom/xiaomi/account/utils/f;->lN:Lcom/xiaomi/account/utils/g;

    iget-object v0, p0, Lcom/xiaomi/account/utils/f;->lN:Lcom/xiaomi/account/utils/g;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/utils/g;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/utils/f;->lO:Lcom/xiaomi/account/task/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/utils/f;->lO:Lcom/xiaomi/account/task/m;

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/task/m;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/utils/f;->lO:Lcom/xiaomi/account/task/m;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/utils/f;->lN:Lcom/xiaomi/account/utils/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/utils/f;->lN:Lcom/xiaomi/account/utils/g;

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/utils/g;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/utils/f;->lN:Lcom/xiaomi/account/utils/g;

    :cond_1
    return-void
.end method

.method public ns(Landroid/app/Activity;Lcom/xiaomi/account/utils/h;)V
    .locals 6

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v2}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LogoutModel"

    const-string/jumbo v1, "no account, and finish"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/account/data/j;->mC(Z)V

    new-instance v0, Lcom/xiaomi/account/utils/x;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/account/utils/x;-><init>(Lcom/xiaomi/account/utils/f;Landroid/content/Context;Landroid/content/res/Resources;Landroid/app/FragmentManager;Lcom/xiaomi/account/utils/h;)V

    invoke-direct {p0, p1, v3, v0}, Lcom/xiaomi/account/utils/f;->nu(Landroid/app/Activity;Landroid/content/res/Resources;Ljava/lang/Runnable;)V

    return-void
.end method

.method public nt(Landroid/app/Activity;ZZZLjava/lang/Runnable;)V
    .locals 9

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/xiaomi/account/utils/f;->lO:Lcom/xiaomi/account/task/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/utils/f;->lO:Lcom/xiaomi/account/task/m;

    invoke-virtual {v0}, Lcom/xiaomi/account/task/m;->kb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/utils/f;->lO:Lcom/xiaomi/account/task/m;

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/task/m;->cancel(Z)Z

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v0, "LogoutModel"

    const-string/jumbo v1, "activity should not be null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v3}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v0, "LogoutModel"

    const-string/jumbo v1, "no account, and finish"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {v2}, Lcom/xiaomi/account/data/j;->mC(Z)V

    new-instance v1, Lcom/xiaomi/account/task/n;

    invoke-direct {v1}, Lcom/xiaomi/account/task/n;-><init>()V

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/task/n;->ki(Z)Lcom/xiaomi/account/task/n;

    move-result-object v1

    const v2, 0x7f0c00d3

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/account/task/n;->kf(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/xiaomi/account/task/n;

    move-result-object v8

    new-instance v0, Lcom/xiaomi/account/utils/z;

    move-object v1, p0

    move v2, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/account/utils/z;-><init>(Lcom/xiaomi/account/utils/f;ZLandroid/content/Context;Landroid/content/res/Resources;Landroid/accounts/Account;ZZ)V

    invoke-virtual {v8, v0}, Lcom/xiaomi/account/task/n;->kg(Lcom/xiaomi/account/task/o;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/utils/A;

    invoke-direct {v1, p0, p1, p5, v4}, Lcom/xiaomi/account/utils/A;-><init>(Lcom/xiaomi/account/utils/f;Landroid/app/Activity;Ljava/lang/Runnable;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/n;->kh(Lcom/xiaomi/account/task/p;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/n;->build()Lcom/xiaomi/account/task/m;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/utils/f;->lO:Lcom/xiaomi/account/task/m;

    iget-object v0, p0, Lcom/xiaomi/account/utils/f;->lO:Lcom/xiaomi/account/task/m;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/m;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
