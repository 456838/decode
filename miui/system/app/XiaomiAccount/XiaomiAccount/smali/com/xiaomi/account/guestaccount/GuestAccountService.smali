.class public Lcom/xiaomi/account/guestaccount/GuestAccountService;
.super Landroid/app/Service;
.source ""


# static fields
.field private static hS:Lcom/xiaomi/accountsdk/guestaccount/h;

.field private static final hT:Ljava/util/concurrent/CountDownLatch;

.field private static final synthetic hV:[I


# instance fields
.field private final hU:Lcom/xiaomi/account/guestaccount/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountService;->hT:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/xiaomi/account/guestaccount/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/account/guestaccount/b;-><init>(Lcom/xiaomi/account/guestaccount/GuestAccountService;Lcom/xiaomi/account/guestaccount/b;)V

    iput-object v0, p0, Lcom/xiaomi/account/guestaccount/GuestAccountService;->hU:Lcom/xiaomi/account/guestaccount/b;

    return-void
.end method

.method private ja(Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jb()Lcom/xiaomi/passport/appwhitelist/a;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    sget-object v4, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$SidCategory;->Ks:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$SidCategory;

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/passport/appwhitelist/a;->NT(Landroid/content/Context;ILjava/lang/String;Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$SidCategory;Z)Lcom/xiaomi/passport/appwhitelist/b;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jo()[I

    move-result-object v1

    iget-object v3, v0, Lcom/xiaomi/passport/appwhitelist/b;->KC:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-virtual {v3}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unknown enum checkResult"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission for guest account service."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "should not return DENIED_QUERY_TOO_FREQUENTLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid signature for app for uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    return-void

    :pswitch_4
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/passport/appwhitelist/b;->NZ()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, p1, v5}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->ja(Ljava/lang/String;Z)V

    :cond_0
    new-instance v0, Lcom/xiaomi/account/guestaccount/GuestAccountService$CannotJudgePermissionException;

    const-string/jumbo v1, "pending online white list"

    invoke-direct {v0, v1}, Lcom/xiaomi/account/guestaccount/GuestAccountService$CannotJudgePermissionException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GuestAccountService"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "io exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    new-instance v0, Lcom/xiaomi/account/guestaccount/GuestAccountService$CannotJudgePermissionException;

    const-string/jumbo v1, "unknown exception"

    invoke-direct {v0, v1}, Lcom/xiaomi/account/guestaccount/GuestAccountService$CannotJudgePermissionException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private jd(Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;Landroid/os/Bundle;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Landroid/os/Bundle;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x7

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/j;->Oo:Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->TQ()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    invoke-virtual {v0, v7}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->setErrorCode(I)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    const-string/jumbo v1, "\u672c\u5730\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Tn(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->TQ()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-direct {v0, p2}, Lcom/xiaomi/accountsdk/guestaccount/data/f;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    invoke-virtual {v0, v7}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->setErrorCode(I)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    const-string/jumbo v1, "sdk\u7248\u672c\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Tn(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->TQ()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v2, "0.0.4"

    const-string/jumbo v2, "GuestAccountService"

    const-string/jumbo v3, "Service(Ver=%s) called from Manager(Ver=%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "0.0.4"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    invoke-virtual {v0, v7}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->setErrorCode(I)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    const-string/jumbo v1, "sid\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Tn(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->TQ()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TM()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->ja(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/xiaomi/account/guestaccount/GuestAccountService$CannotJudgePermissionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;->hW:Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->je()Lcom/xiaomi/accountsdk/guestaccount/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TM()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "passport_visitor"

    invoke-interface {v1, p0, v0, v2}, Lcom/xiaomi/accountsdk/guestaccount/h;->TX(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->get()Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_6

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/j;->Ot:Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->TQ()Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GuestAccountService"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/j;->Oq:Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->TQ()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->ji(Ljava/lang/RuntimeException;)V

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/j;->Ot:Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->TQ()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    const-string/jumbo v1, "GuestAccountService"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/j;->Ol:Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->TQ()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_4
    :try_start_2
    sget-object v1, Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;->hX:Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->je()Lcom/xiaomi/accountsdk/guestaccount/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TM()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/xiaomi/accountsdk/guestaccount/h;->Uc(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->get()Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->ji(Ljava/lang/RuntimeException;)V

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/j;->Ot:Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->TQ()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Tl()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->je()Lcom/xiaomi/accountsdk/guestaccount/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/accountsdk/guestaccount/h;->Ue()V

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->Tk()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Tm(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    :cond_7
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->TQ()Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v0

    return-object v0

    :catch_4
    move-exception v0

    const-string/jumbo v1, "GuestAccountService"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/j;->Op:Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->TQ()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static jf(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;
    .locals 1

    new-instance v0, Lcom/xiaomi/account/guestaccount/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/guestaccount/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/xiaomi/account/guestaccount/a;->iY()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->NO:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->NN:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    goto :goto_0
.end method

.method private static declared-synchronized jg(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/h;
    .locals 3

    const-class v1, Lcom/xiaomi/account/guestaccount/GuestAccountService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountService;->hS:Lcom/xiaomi/accountsdk/guestaccount/h;

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;->Oc:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    invoke-static {p0}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jf(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/xiaomi/accountsdk/guestaccount/k;->Uf(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)Lcom/xiaomi/accountsdk/guestaccount/h;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountService;->hS:Lcom/xiaomi/accountsdk/guestaccount/h;

    :cond_0
    sget-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountService;->hS:Lcom/xiaomi/accountsdk/guestaccount/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private jh()Landroid/os/Bundle;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jg(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/guestaccount/h;->TY()Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->get()Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->TQ()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GuestAccountService"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method private ji(Ljava/lang/RuntimeException;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/account/guestaccount/g;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/account/guestaccount/g;-><init>(Lcom/xiaomi/account/guestaccount/GuestAccountService;Ljava/lang/RuntimeException;)V

    invoke-virtual {v0}, Lcom/xiaomi/account/guestaccount/g;->start()V

    return-void
.end method

.method private jj(Landroid/os/Bundle;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;->hX:Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jd(Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;Landroid/os/Bundle;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static jk(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jg(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/h;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/guestaccount/a;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/guestaccount/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/h;->Ua(Lcom/xiaomi/accountsdk/guestaccount/b;)V

    new-instance v1, Lcom/xiaomi/account/guestaccount/c;

    invoke-direct {v1}, Lcom/xiaomi/account/guestaccount/c;-><init>()V

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/h;->Ub(Lcom/xiaomi/accountsdk/guestaccount/d;)V

    new-instance v1, Lcom/xiaomi/account/guestaccount/d;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/guestaccount/d;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/h;->TZ(Lcom/xiaomi/accountsdk/guestaccount/f;)V

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/account/guestaccount/f;

    invoke-direct {v2, v0}, Lcom/xiaomi/account/guestaccount/f;-><init>(Lcom/xiaomi/accountsdk/guestaccount/h;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic jl()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountService;->hT:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic jm(Lcom/xiaomi/account/guestaccount/GuestAccountService;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jh()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic jn(Lcom/xiaomi/account/guestaccount/GuestAccountService;Landroid/os/Bundle;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jj(Landroid/os/Bundle;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic jo()[I
    .locals 3

    sget-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountService;->hV:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountService;->hV:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->values()[Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KR:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KS:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KT:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KU:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KV:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KW:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KX:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountService;->hV:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method jb()Lcom/xiaomi/passport/appwhitelist/a;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/appwhitelist/a;->NW(Landroid/content/Context;)Lcom/xiaomi/passport/appwhitelist/a;

    move-result-object v0

    return-object v0
.end method

.method jc(Landroid/os/Bundle;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;->hW:Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jd(Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;Landroid/os/Bundle;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method je()Lcom/xiaomi/accountsdk/guestaccount/h;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jg(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/h;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/guestaccount/GuestAccountService;->hU:Lcom/xiaomi/account/guestaccount/b;

    return-object v0
.end method
