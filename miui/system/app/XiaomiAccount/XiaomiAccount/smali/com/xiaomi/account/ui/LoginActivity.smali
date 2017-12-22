.class public Lcom/xiaomi/account/ui/LoginActivity;
.super Lcom/xiaomi/account/ui/LoginRegBaseActivity;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/ui/m;


# instance fields
.field private cP:Ljava/lang/String;

.field private cQ:Ljava/lang/String;

.field private cR:Lcom/xiaomi/passport/utils/p;

.field private cS:Ljava/lang/String;

.field private cT:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/xiaomi/account/data/c;",
            ">;"
        }
    .end annotation
.end field

.field private cU:Lcom/xiaomi/account/task/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/account/task/m",
            "<",
            "Lcom/xiaomi/account/data/c;",
            ">;"
        }
    .end annotation
.end field

.field private cV:Z

.field private cW:Z

.field private cX:Z

.field private cY:Landroid/os/Handler;

.field private cZ:Z

.field private da:Z

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cZ:Z

    const-string/jumbo v0, "login_success"

    iput-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cQ:Ljava/lang/String;

    const-string/jumbo v0, "intent_extras"

    iput-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cP:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cY:Landroid/os/Handler;

    return-void
.end method

.method private fB(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/xiaomi/account/data/c;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/account/task/n;

    invoke-direct {v0}, Lcom/xiaomi/account/task/n;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c018b

    invoke-virtual {p0, v2}, Lcom/xiaomi/account/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/n;->kf(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaomi/account/task/n;->ki(Z)Lcom/xiaomi/account/task/n;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/bJ;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/account/ui/bJ;-><init>(Lcom/xiaomi/account/ui/LoginActivity;Ljava/util/concurrent/Future;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/n;->kg(Lcom/xiaomi/account/task/o;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/bK;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/account/ui/bK;-><init>(Lcom/xiaomi/account/ui/LoginActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/n;->kh(Lcom/xiaomi/account/task/p;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/n;->build()Lcom/xiaomi/account/task/m;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cU:Lcom/xiaomi/account/task/m;

    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cU:Lcom/xiaomi/account/task/m;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/m;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private fC()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/account/ui/bG;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/account/ui/bG;-><init>(Lcom/xiaomi/account/ui/LoginActivity;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fD()V
    .locals 1

    new-instance v0, Lcom/xiaomi/account/ui/bD;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/ui/bD;-><init>(Lcom/xiaomi/account/ui/LoginActivity;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/LoginActivity;->fL(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fE()V
    .locals 4

    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "finishAndResult"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->bw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.android.settings"

    iget-object v1, p0, Lcom/xiaomi/account/ui/LoginActivity;->bw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/account/ui/AccountSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/LoginActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->mUserId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/account/ui/LoginActivity;->cS:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/xiaomi/account/ui/LoginActivity;->cZ:Z

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/xiaomi/account/ui/LoginActivity;->dJ(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private fF()Lcom/xiaomi/passport/ui/l;
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/account/ui/LoginActivity;->fG()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/passport/v2/ui/l;

    invoke-direct {v0}, Lcom/xiaomi/passport/v2/ui/l;-><init>()V

    :goto_0
    const-string/jumbo v1, "visit_login_page"

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/LoginActivity;->dN(Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xiaomi/passport/ui/w;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/w;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/xiaomi/passport/v2/ui/a;

    invoke-direct {v0}, Lcom/xiaomi/passport/v2/ui/a;-><init>()V

    goto :goto_0
.end method

.method private fG()Z
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_auto_login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private fH(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/account/utils/u;->pr()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/account/utils/u;->ps(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private fI(Ljava/lang/Runnable;)Lcom/xiaomi/passport/utils/p;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "newLoginRunnableWrapper should only be called from main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cR:Lcom/xiaomi/passport/utils/p;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/xiaomi/account/ui/LoginActivity;->cR:Lcom/xiaomi/passport/utils/p;

    :cond_1
    new-instance v0, Lcom/xiaomi/passport/utils/q;

    invoke-direct {v0}, Lcom/xiaomi/passport/utils/q;-><init>()V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/utils/q;->Et(I)Lcom/xiaomi/passport/utils/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/utils/q;->Eu(Ljava/lang/Runnable;)Lcom/xiaomi/passport/utils/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/utils/q;->Es(Landroid/app/Activity;)Lcom/xiaomi/passport/utils/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/utils/q;->build()Lcom/xiaomi/passport/utils/p;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cR:Lcom/xiaomi/passport/utils/p;

    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cR:Lcom/xiaomi/passport/utils/p;

    return-object v0
.end method

.method private fM(Lcom/xiaomi/account/data/c;Ljava/lang/Runnable;)V
    .locals 8

    const v1, 0x7f0c0065

    if-nez p1, :cond_0

    const v0, 0x7f0c016d

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0c0096

    invoke-virtual {p0, v2}, Lcom/xiaomi/account/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/account/ui/bL;

    invoke-direct {v3, p0, p2}, Lcom/xiaomi/account/ui/bL;-><init>(Lcom/xiaomi/account/ui/LoginActivity;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/xiaomi/account/ui/LoginActivity;->fO(Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/xiaomi/account/data/c;->kF:Lcom/xiaomi/account/data/PassportCheckFindDeviceResult$CheckOperationResult;

    sget-object v2, Lcom/xiaomi/account/data/PassportCheckFindDeviceResult$CheckOperationResult;->kS:Lcom/xiaomi/account/data/PassportCheckFindDeviceResult$CheckOperationResult;

    if-ne v0, v2, :cond_4

    iget-boolean v0, p1, Lcom/xiaomi/account/data/c;->kM:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->bu:Z

    :goto_0
    iget-object v2, p1, Lcom/xiaomi/account/data/c;->kI:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/account/data/c;->kJ:Ljava/lang/String;

    if-eqz v0, :cond_1

    const v1, 0x7f0c0007

    :cond_1
    new-instance v4, Lcom/xiaomi/account/ui/bM;

    invoke-direct {v4, p0, v0, p2}, Lcom/xiaomi/account/ui/bM;-><init>(Lcom/xiaomi/account/ui/LoginActivity;ZLjava/lang/Runnable;)V

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/xiaomi/account/ui/LoginActivity;->fO(Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/xiaomi/account/data/c;->kF:Lcom/xiaomi/account/data/PassportCheckFindDeviceResult$CheckOperationResult;

    sget-object v1, Lcom/xiaomi/account/data/PassportCheckFindDeviceResult$CheckOperationResult;->kT:Lcom/xiaomi/account/data/PassportCheckFindDeviceResult$CheckOperationResult;

    if-ne v0, v1, :cond_7

    const-string/jumbo v0, "check_find_device_status_success"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/LoginActivity;->dN(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/xiaomi/account/data/c;->kL:Z

    iput-boolean v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cW:Z

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->bu:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lcom/xiaomi/account/data/c;->kR:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/LoginActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginActivity;->finish()V

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cW:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "service_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/xiaomi/account/data/c;->kQ:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/xiaomi/account/ui/LoginActivity;->bu:Z

    iget-object v3, p1, Lcom/xiaomi/account/data/c;->kG:Ljava/lang/String;

    iget-object v4, p1, Lcom/xiaomi/account/data/c;->kP:Ljava/lang/String;

    iget-object v5, p1, Lcom/xiaomi/account/data/c;->kH:Ljava/lang/String;

    iget-object v6, p1, Lcom/xiaomi/account/data/c;->kN:Ljava/lang/String;

    iget-object v7, p1, Lcom/xiaomi/account/data/c;->kO:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/account/ui/E;->eo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/account/ui/E;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/account/ui/E;->tQ(Lcom/xiaomi/passport/ui/m;)V

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Normally not reachable. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "online login success"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/xiaomi/account/ui/LoginActivity;->mUserId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/account/ui/LoginActivity;->cS:Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qr(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/LoginActivity;->fH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/account/ui/LoginActivity;->fP()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->da:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/account/ui/LoginActivity;->fR()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/account/ui/LoginActivity;->fE()V

    goto :goto_0
.end method

.method private fO(Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/bN;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bN;-><init>(Lcom/xiaomi/account/ui/LoginActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/bO;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bO;-><init>(Lcom/xiaomi/account/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private fP()V
    .locals 5

    const v0, 0x7f0c016f

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c0170

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x10000

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x21

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c016e

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/bE;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bE;-><init>(Lcom/xiaomi/account/ui/LoginActivity;)V

    const v2, 0x7f0c0064

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private fQ()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/xiaomi/account/data/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/account/n;

    invoke-direct {v0}, Lcom/xiaomi/account/n;-><init>()V

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/account/ui/bI;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/account/ui/bI;-><init>(Lcom/xiaomi/account/ui/LoginActivity;Lcom/xiaomi/account/n;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private fR()V
    .locals 3

    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "Sync Settings: start!"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string/jumbo v1, "password_login"

    iget-boolean v2, p0, Lcom/xiaomi/account/ui/LoginActivity;->cZ:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "extra_show_skip_login"

    iget-boolean v2, p0, Lcom/xiaomi/account/ui/LoginActivity;->bu:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "androidPackageName"

    iget-object v2, p0, Lcom/xiaomi/account/ui/LoginActivity;->bw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.xiaomi.action.MICLOUD_SYNC_DATA_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/account/ui/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic fS(Lcom/xiaomi/account/ui/LoginActivity;)Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cT:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method static synthetic fT(Lcom/xiaomi/account/ui/LoginActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cY:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic fU(Lcom/xiaomi/account/ui/LoginActivity;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/LoginActivity;->cT:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic fV(Lcom/xiaomi/account/ui/LoginActivity;)Ljava/util/concurrent/Future;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/account/ui/LoginActivity;->fQ()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method static synthetic fW(Lcom/xiaomi/account/ui/LoginActivity;Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/LoginActivity;->fB(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic fX(Lcom/xiaomi/account/ui/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/LoginActivity;->fE()V

    return-void
.end method

.method static synthetic fY(Lcom/xiaomi/account/ui/LoginActivity;Lcom/xiaomi/account/data/c;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/LoginActivity;->fM(Lcom/xiaomi/account/data/c;Ljava/lang/Runnable;)V

    return-void
.end method

.method private fz()V
    .locals 4

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->bu:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/LoginActivity;->fD()V

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/account/ui/LoginActivity;->fF()Lcom/xiaomi/passport/ui/l;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string/jumbo v2, "extra_build_region_info"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/l;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v2, 0x1020002

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/utils/f;->Dg(Landroid/app/FragmentManager;ILandroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/l;

    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/ui/l;->tQ(Lcom/xiaomi/passport/ui/m;)V

    return-void
.end method


# virtual methods
.method public fA(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/account/n;

    invoke-direct {v0}, Lcom/xiaomi/account/n;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/account/n;->sb()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cT:Ljava/util/concurrent/Future;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/account/ui/LoginActivity;->fQ()Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/account/ui/LoginActivity;->fB(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cT:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public fJ(Lcom/xiaomi/passport/ui/n;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/account/task/f;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/task/f;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/xiaomi/account/ui/bF;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/account/ui/bF;-><init>(Lcom/xiaomi/account/ui/LoginActivity;Lcom/xiaomi/passport/ui/n;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/f;->jQ(Lcom/xiaomi/account/task/g;)Lcom/xiaomi/account/task/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/f;->build()Lcom/xiaomi/account/task/e;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public fK(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-string/jumbo v0, "login_success"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/LoginActivity;->dN(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cX:Z

    iput-boolean p3, p0, Lcom/xiaomi/account/ui/LoginActivity;->cZ:Z

    new-instance v0, Lcom/xiaomi/account/n;

    invoke-direct {v0}, Lcom/xiaomi/account/n;-><init>()V

    iget-boolean v1, p0, Lcom/xiaomi/account/ui/LoginActivity;->cW:Z

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/account/n;->sc(Landroid/content/Context;Z)V

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/LoginActivity;->fN(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fL(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/LoginActivity;->fI(Ljava/lang/Runnable;)Lcom/xiaomi/passport/utils/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/utils/p;->run()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "back from sync activity"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/account/ui/LoginActivity;->fE()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cV:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/account/ui/LoginActivity;->cP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const-string/jumbo v1, "password_login"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/account/ui/LoginActivity;->cZ:Z

    iget-object v1, p0, Lcom/xiaomi/account/ui/LoginActivity;->cQ:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/account/ui/LoginActivity;->cX:Z

    const-string/jumbo v1, "extra_user_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/LoginActivity;->mUserId:Ljava/lang/String;

    const-string/jumbo v1, "extra_authtoken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/LoginActivity;->cS:Ljava/lang/String;

    :cond_2
    const-string/jumbo v1, "show_sync_settings"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/account/ui/LoginActivity;->da:Z

    const-string/jumbo v1, "extra_disable_back_key"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/account/ui/LoginActivity;->cV:Z

    const-string/jumbo v1, "mi_account_settings_open_login_page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/LoginActivity;->fz()V

    invoke-static {v2}, Lcom/xiaomi/passport/data/e;->yY(Lcom/xiaomi/passport/data/f;)V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/LoginActivity;->fC()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cR:Lcom/xiaomi/passport/utils/p;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/xiaomi/account/ui/LoginActivity;->cR:Lcom/xiaomi/passport/utils/p;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cU:Lcom/xiaomi/account/task/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cU:Lcom/xiaomi/account/task/m;

    invoke-virtual {v0}, Lcom/xiaomi/account/task/m;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cU:Lcom/xiaomi/account/task/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/m;->cancel(Z)Z

    iput-object v2, p0, Lcom/xiaomi/account/ui/LoginActivity;->cU:Lcom/xiaomi/account/task/m;

    :cond_1
    invoke-super {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->onPause()V

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/a/a;->sB()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cR:Lcom/xiaomi/passport/utils/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cR:Lcom/xiaomi/passport/utils/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/passport/utils/p;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->onResume()V

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cX:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginActivity;->dH()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    const-string/jumbo v1, "LoginActivity"

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/a/a;->sC(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cP:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginActivity;->cQ:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/xiaomi/account/ui/LoginActivity;->cX:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "password_login"

    iget-boolean v1, p0, Lcom/xiaomi/account/ui/LoginActivity;->cZ:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "extra_user_id"

    iget-object v1, p0, Lcom/xiaomi/account/ui/LoginActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "extra_authtoken"

    iget-object v1, p0, Lcom/xiaomi/account/ui/LoginActivity;->cS:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
