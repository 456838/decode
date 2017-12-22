.class public Lcom/xiaomi/passport/ui/s;
.super Landroid/app/Fragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mCaptchaUrl:Ljava/lang/String;

.field protected volatile mStep1Token:Ljava/lang/String;

.field protected qA:Landroid/widget/ImageView;

.field private qB:Lcom/xiaomi/passport/uicontroller/e;

.field protected qC:Ljava/lang/String;

.field private qD:Landroid/widget/TextView;

.field private qE:Landroid/widget/CheckBox;

.field protected qF:Landroid/widget/EditText;

.field private qG:Z

.field private final qH:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private qh:Landroid/accounts/Account;

.field private qi:Lcom/xiaomi/passport/uicontroller/g;

.field private qj:Landroid/widget/Button;

.field private qk:Landroid/widget/Button;

.field private ql:Landroid/view/View;

.field private qm:Landroid/widget/EditText;

.field private qn:Landroid/widget/ImageView;

.field private qo:Lcom/xiaomi/passport/ui/t;

.field protected qp:Landroid/widget/TextView;

.field private volatile qq:Ljava/lang/String;

.field private qr:Landroid/view/View;

.field private qs:Landroid/view/View;

.field protected volatile qt:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

.field private qu:Lcom/xiaomi/passport/uicontroller/c;

.field protected qv:Lcom/xiaomi/passport/ui/PassportGroupEditText;

.field private qw:Lcom/xiaomi/passport/ui/C;

.field private qx:Z

.field protected qy:Ljava/lang/String;

.field private qz:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qH:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private finish()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private uO()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->mStep1Token:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qv:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->mCaptchaUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qv:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v1, 0x7f0c0060

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/s;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->mCaptchaUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qm:Landroid/widget/EditText;

    const v1, 0x7f0c0062

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/s;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qh:Landroid/accounts/Account;

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/s;->qq:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/passport/ui/s;->qy:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/passport/ui/s;->uR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qF:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/s;->qE:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qF:Landroid/widget/EditText;

    const v1, 0x7f0c0063

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/s;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/xiaomi/passport/ui/s;->qh:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/s;->qy:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/xiaomi/passport/ui/s;->uS(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private uP()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qw:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qw:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qw:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/s;->qw:Lcom/xiaomi/passport/ui/C;

    :cond_0
    return-void
.end method

.method private uT(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->mStep1Token:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qt:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->mCaptchaUrl:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/s;->qG:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/passport/ui/at;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/ui/at;-><init>(Lcom/xiaomi/passport/ui/s;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/passport/uicontroller/n;->Nf(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/n;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/passport/uicontroller/n;->Ne(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Lcom/xiaomi/passport/uicontroller/l;)Lcom/xiaomi/passport/uicontroller/g;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qi:Lcom/xiaomi/passport/uicontroller/g;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/s;->uU(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    goto :goto_0
.end method

.method private uU(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "QuickLoginFragment"

    const-string/jumbo v2, "login success"

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->VA()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/account/data/u;->Ya(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/u;->Yb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/s;->qh:Landroid/accounts/Account;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vz()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaomi/passport/accountmanager/f;->Ce(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/passport/ui/s;->qh:Landroid/accounts/Account;

    invoke-static {v1, v2, p1}, Lcom/xiaomi/passport/utils/o;->Eo(Lcom/xiaomi/passport/accountmanager/f;Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "authAccount"

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "accountType"

    const-string/jumbo v3, "com.xiaomi"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "authtoken"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "booleanResult"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/s;->qx:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "sts_url_result"

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/s;->uQ(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private uW(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/passport/widget/f;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/widget/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c0087

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/f;->setTitle(I)Lcom/xiaomi/passport/widget/f;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/f;->zw(Ljava/lang/CharSequence;)Lcom/xiaomi/passport/widget/f;

    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/widget/f;->zy(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/passport/widget/f;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/f;->zC()Lcom/xiaomi/passport/widget/e;

    return-void

    :cond_0
    const v1, 0x7f0c0085

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/f;->setTitle(I)Lcom/xiaomi/passport/widget/f;

    goto :goto_0
.end method

.method private uX()V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    const v1, 0x7f0c0071

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/s;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qw:Lcom/xiaomi/passport/ui/C;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qw:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "LoginProgress"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private uY()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qo:Lcom/xiaomi/passport/ui/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qo:Lcom/xiaomi/passport/ui/t;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/t;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/ui/t;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/s;->mCaptchaUrl:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/passport/ui/t;-><init>(Lcom/xiaomi/passport/ui/s;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qo:Lcom/xiaomi/passport/ui/t;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qo:Lcom/xiaomi/passport/ui/t;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/t;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private va()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qv:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/s;->qA:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/xiaomi/passport/ui/s;->qz:Z

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/passport/utils/r;->EJ(Lcom/xiaomi/passport/ui/PassportGroupEditText;Landroid/widget/ImageView;ZLandroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic vb(Lcom/xiaomi/passport/ui/s;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qh:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic vc(Lcom/xiaomi/passport/ui/s;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->ql:Landroid/view/View;

    return-object v0
.end method

.method static synthetic vd(Lcom/xiaomi/passport/ui/s;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic ve(Lcom/xiaomi/passport/ui/s;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/s;->qG:Z

    return v0
.end method

.method static synthetic vf(Lcom/xiaomi/passport/ui/s;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/s;->qq:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic vg(Lcom/xiaomi/passport/ui/s;Lcom/xiaomi/passport/uicontroller/c;)Lcom/xiaomi/passport/uicontroller/c;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/s;->qu:Lcom/xiaomi/passport/uicontroller/c;

    return-object p1
.end method

.method static synthetic vh(Lcom/xiaomi/passport/ui/s;Lcom/xiaomi/passport/uicontroller/e;)Lcom/xiaomi/passport/uicontroller/e;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/s;->qB:Lcom/xiaomi/passport/uicontroller/e;

    return-object p1
.end method

.method static synthetic vi(Lcom/xiaomi/passport/ui/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/s;->uP()V

    return-void
.end method

.method static synthetic vj(Lcom/xiaomi/passport/ui/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/s;->finish()V

    return-void
.end method

.method static synthetic vk(Lcom/xiaomi/passport/ui/s;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/s;->uT(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    return-void
.end method

.method static synthetic vl(Lcom/xiaomi/passport/ui/s;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/s;->uU(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    return-void
.end method

.method static synthetic vm(Lcom/xiaomi/passport/ui/s;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/s;->uW(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v2, :cond_0

    const-string/jumbo v0, "QuickLoginFragment"

    const-string/jumbo v1, "notification completed"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/s;->finish()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0c009c

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/s;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/s;->uW(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qj:Landroid/widget/Button;

    if-ne v0, p1, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/s;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qk:Landroid/widget/Button;

    if-ne v0, p1, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/s;->uO()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qp:Landroid/widget/TextView;

    if-ne v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/ui/q;->uI(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qA:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_5

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/s;->qz:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/s;->qz:Z

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/s;->va()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qn:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->mCaptchaUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/s;->uY()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/s;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const v0, 0x7f03004a

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f10009d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qj:Landroid/widget/Button;

    const v0, 0x7f10009e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qk:Landroid/widget/Button;

    const v0, 0x7f100082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qv:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qv:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    sget-object v2, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sC:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xS(Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;)V

    const v0, 0x7f10009a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qp:Landroid/widget/TextView;

    const v0, 0x7f100084

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qA:Landroid/widget/ImageView;

    const v0, 0x7f10001f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->ql:Landroid/view/View;

    const v0, 0x7f100061

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qm:Landroid/widget/EditText;

    const v0, 0x7f100062

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qn:Landroid/widget/ImageView;

    const v0, 0x7f100097

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qs:Landroid/view/View;

    const v0, 0x7f10009b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qr:Landroid/view/View;

    const v0, 0x7f10008e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qF:Landroid/widget/EditText;

    const v0, 0x7f10006f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qE:Landroid/widget/CheckBox;

    const v0, 0x1020016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qD:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qj:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qp:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qA:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v6, p0, Lcom/xiaomi/passport/ui/s;->qz:Z

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/s;->va()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/s;->finish()V

    return-object v1

    :cond_0
    const-string/jumbo v0, "verify_only"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/s;->qG:Z

    const-string/jumbo v0, "service_id"

    const-string/jumbo v3, "passportapi"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qy:Ljava/lang/String;

    const-string/jumbo v0, "extra_step1_token"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->mStep1Token:Ljava/lang/String;

    const-string/jumbo v0, "return_sts_url"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/s;->qx:Z

    const-string/jumbo v0, "extra_sign"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "extra_qs"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "extra_callback"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    new-instance v5, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-direct {v5, v0, v3, v4}, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/xiaomi/passport/ui/s;->qt:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    :cond_1
    const-string/jumbo v0, "title"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const v0, 0x7f0c004a

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/s;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qC:Ljava/lang/String;

    const-string/jumbo v0, "captcha_url"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/s;->uN(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/x;->FC(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qh:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qh:Landroid/accounts/Account;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/s;->finish()V

    return-object v1

    :cond_3
    const-string/jumbo v0, "title"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const v0, 0x7f100099

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/s;->qh:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v6

    const v3, 0x7f0c0050

    invoke-virtual {p0, v3, v2}, Lcom/xiaomi/passport/ui/s;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->uZ()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->uV()V

    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/xiaomi/passport/ui/q;->uG()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qo:Lcom/xiaomi/passport/ui/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qo:Lcom/xiaomi/passport/ui/t;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/ui/t;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/ui/s;->qo:Lcom/xiaomi/passport/ui/t;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qu:Lcom/xiaomi/passport/uicontroller/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qu:Lcom/xiaomi/passport/uicontroller/c;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/uicontroller/c;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/ui/s;->qu:Lcom/xiaomi/passport/uicontroller/c;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qB:Lcom/xiaomi/passport/uicontroller/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qB:Lcom/xiaomi/passport/uicontroller/e;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/uicontroller/e;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/ui/s;->qB:Lcom/xiaomi/passport/uicontroller/e;

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qi:Lcom/xiaomi/passport/uicontroller/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qi:Lcom/xiaomi/passport/uicontroller/g;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/uicontroller/g;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/ui/s;->qi:Lcom/xiaomi/passport/uicontroller/g;

    :cond_3
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public onStop()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v0, "com.xiaomi.account"

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->mStep1Token:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "service_id"

    iget-object v2, p0, Lcom/xiaomi/passport/ui/s;->qy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_step1_token"

    iget-object v2, p0, Lcom/xiaomi/passport/ui/s;->mStep1Token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_sign"

    iget-object v2, p0, Lcom/xiaomi/passport/ui/s;->qt:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->ST:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_qs"

    iget-object v2, p0, Lcom/xiaomi/passport/ui/s;->qt:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->SU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_callback"

    iget-object v2, p0, Lcom/xiaomi/passport/ui/s;->qt:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->SV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x108008a

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0c004f

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/s;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0c0058

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/s;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method protected uN(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->mCaptchaUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/passport/ui/s;->mCaptchaUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qm:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->mCaptchaUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->ql:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/s;->uY()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->ql:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected uQ(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qH:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v1, "need_retry_on_authenticator_response_result"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "retry"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    const-string/jumbo v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/passport/utils/o;->Ej(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    return-void
.end method

.method protected uR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qu:Lcom/xiaomi/passport/uicontroller/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qu:Lcom/xiaomi/passport/uicontroller/c;

    invoke-virtual {v0}, Lcom/xiaomi/passport/uicontroller/c;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/s;->uX()V

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/v;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/v;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/v;->Yd(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xiaomi/accountsdk/account/data/v;->Yg(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/s;->qq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/v;->Yh(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/account/data/v;->Ye(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/xiaomi/accountsdk/account/data/v;->Yi(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/passport/ui/s;->qx:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/v;->Yl(Z)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/v;->build()Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/ar;

    invoke-direct {v1, p0, p5}, Lcom/xiaomi/passport/ui/ar;-><init>(Lcom/xiaomi/passport/ui/s;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/passport/uicontroller/n;->Nf(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/n;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/passport/uicontroller/n;->Ng(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;Lcom/xiaomi/passport/uicontroller/h;)Lcom/xiaomi/passport/uicontroller/c;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qu:Lcom/xiaomi/passport/uicontroller/c;

    return-void

    :cond_1
    const-string/jumbo v0, "QuickLoginFragment"

    const-string/jumbo v1, "password login has not finished"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected uS(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qB:Lcom/xiaomi/passport/uicontroller/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qB:Lcom/xiaomi/passport/uicontroller/e;

    invoke-virtual {v0}, Lcom/xiaomi/passport/uicontroller/e;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/s;->uX()V

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/x;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/x;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/x;->YF(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/x;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/xiaomi/accountsdk/account/data/x;->YB(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/x;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/s;->mStep1Token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/x;->YC(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/x;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/s;->qt:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/x;->YA(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)Lcom/xiaomi/accountsdk/account/data/x;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xiaomi/accountsdk/account/data/x;->YE(Z)Lcom/xiaomi/accountsdk/account/data/x;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/account/data/x;->YD(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/x;->build()Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/as;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/as;-><init>(Lcom/xiaomi/passport/ui/s;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/passport/uicontroller/n;->Nf(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/n;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/passport/uicontroller/n;->Nh(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;Lcom/xiaomi/passport/uicontroller/j;)Lcom/xiaomi/passport/uicontroller/e;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/s;->qB:Lcom/xiaomi/passport/uicontroller/e;

    return-void

    :cond_1
    const-string/jumbo v0, "QuickLoginFragment"

    const-string/jumbo v1, "step2 login has not finished"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public uV()V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/g;->ahu()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/s;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method

.method protected uZ()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->mStep1Token:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qr:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qs:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qD:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/s;->qC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qs:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qr:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/s;->qD:Landroid/widget/TextView;

    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
