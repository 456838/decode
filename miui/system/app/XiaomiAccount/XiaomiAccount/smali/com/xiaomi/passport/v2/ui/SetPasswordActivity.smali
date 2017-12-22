.class public Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;
.super Lcom/xiaomi/passport/ui/BaseActivity;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/v2/ui/o;
.implements Lcom/xiaomi/passport/v2/ui/f;


# instance fields
.field private CW:Landroid/accounts/Account;

.field private CX:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/xiaomi/accountsdk/account/data/e;",
            ">;"
        }
    .end annotation
.end field

.field private CY:Lcom/xiaomi/passport/ui/C;

.field private CZ:Lcom/xiaomi/passport/uicontroller/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Da:Lcom/xiaomi/passport/uicontroller/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Db:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic JA(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->sQ(I)V

    return-void
.end method

.method static synthetic JB(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;Lcom/xiaomi/accountsdk/account/data/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jr(Lcom/xiaomi/accountsdk/account/data/e;)V

    return-void
.end method

.method static synthetic JC(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Js(II)V

    return-void
.end method

.method static synthetic JD(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jt(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic JE(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Ju(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Jp()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CY:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CY:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CY:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CY:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    iput-object v1, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CY:Lcom/xiaomi/passport/ui/C;

    goto :goto_0
.end method

.method private Jq(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CW:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/accountmanager/f;->BY(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/data/u;->parse(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/u;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/xiaomi/accountsdk/account/data/u;->SW:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method private Jr(Lcom/xiaomi/accountsdk/account/data/e;)V
    .locals 2

    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jt(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/passport/uicontroller/y;

    invoke-direct {v0}, Lcom/xiaomi/passport/uicontroller/y;-><init>()V

    new-instance v1, Lcom/xiaomi/passport/v2/ui/U;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/v2/ui/U;-><init>(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;Lcom/xiaomi/accountsdk/account/data/e;)V

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/passport/uicontroller/y;->NA(Lcom/xiaomi/accountsdk/account/data/e;Lcom/xiaomi/passport/uicontroller/E;)Lcom/xiaomi/passport/uicontroller/v;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Da:Lcom/xiaomi/passport/uicontroller/v;

    return-void
.end method

.method private Js(II)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jp()V

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xG(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->xC(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "detail message"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private Jt(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CY:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jp()V

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CY:Lcom/xiaomi/passport/ui/C;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CY:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "SetPasswordActivity"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private Ju(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2, p1}, Lcom/xiaomi/passport/v2/ui/n;->Kz(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/passport/v2/ui/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method static synthetic Jv(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CW:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic Jw(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Db:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Jx(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;Lcom/xiaomi/passport/uicontroller/v;)Lcom/xiaomi/passport/uicontroller/v;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CZ:Lcom/xiaomi/passport/uicontroller/v;

    return-object p1
.end method

.method static synthetic Jy(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jq(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Jz(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jp()V

    return-void
.end method


# virtual methods
.method public ah(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CX:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CX:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    const-string/jumbo v0, "SetPasswordActivity"

    const-string/jumbo v1, "set pwd params task is running"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Lcom/xiaomi/passport/v2/ui/T;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/xiaomi/passport/v2/ui/T;-><init>(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CX:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CX:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public ai(Lcom/xiaomi/passport/v2/ui/p;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/v2/ui/X;

    invoke-direct {v1, p0, v0, p1}, Lcom/xiaomi/passport/v2/ui/X;-><init>(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;Landroid/content/Context;Lcom/xiaomi/passport/v2/ui/p;)V

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/passport/v2/ui/X;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/xiaomi/passport/utils/x;->FC(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CW:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CW:Landroid/accounts/Account;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/v2/ui/e;

    invoke-direct {v0}, Lcom/xiaomi/passport/v2/ui/e;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/e;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x1020002

    invoke-static {v1, v2, v0}, Lcom/xiaomi/passport/utils/f;->Df(Landroid/app/FragmentManager;ILandroid/app/Fragment;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "service_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Db:Ljava/lang/String;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->finish()V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Da:Lcom/xiaomi/passport/uicontroller/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Da:Lcom/xiaomi/passport/uicontroller/v;

    invoke-virtual {v0}, Lcom/xiaomi/passport/uicontroller/v;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CZ:Lcom/xiaomi/passport/uicontroller/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CZ:Lcom/xiaomi/passport/uicontroller/v;

    invoke-virtual {v0}, Lcom/xiaomi/passport/uicontroller/v;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    invoke-super {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->onDestroy()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Da:Lcom/xiaomi/passport/uicontroller/v;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/v;->cancel(Z)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->CZ:Lcom/xiaomi/passport/uicontroller/v;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/v;->cancel(Z)Z

    goto :goto_1
.end method
