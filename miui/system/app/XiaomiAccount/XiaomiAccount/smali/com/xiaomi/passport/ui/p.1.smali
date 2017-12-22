.class public abstract Lcom/xiaomi/passport/ui/p;
.super Lcom/xiaomi/passport/ui/l;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected pH:Landroid/widget/Button;

.field protected pI:Landroid/widget/TextView;

.field protected pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

.field protected pK:Landroid/widget/ImageView;

.field protected pL:Landroid/widget/EditText;

.field protected pM:Landroid/widget/ImageView;

.field protected pN:Landroid/view/View;

.field protected pO:Ljava/lang/String;

.field protected pP:Ljava/lang/String;

.field protected pQ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

.field private pR:Z

.field protected pS:Ljava/lang/String;

.field private pT:Lcom/xiaomi/passport/task/m;

.field private pU:Z

.field protected pV:Landroid/widget/TextView;

.field private pW:Lcom/xiaomi/passport/v2/utils/f;

.field protected pX:Landroid/view/View;

.field protected pY:Landroid/widget/EditText;

.field protected pZ:Landroid/widget/TextView;

.field protected qa:Z

.field private qb:Landroid/view/View;

.field private qc:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

.field final qd:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/l;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/p;->pR:Z

    new-instance v0, Lcom/xiaomi/passport/ui/al;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/al;-><init>(Lcom/xiaomi/passport/ui/p;)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/p;->qd:Landroid/text/TextWatcher;

    return-void
.end method

.method private uA()V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    const v1, 0x7f0c0085

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/p;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xG(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    const v1, 0x7f0c00ae

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/p;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/ap;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/ap;-><init>(Lcom/xiaomi/passport/ui/p;)V

    const v2, 0x7f0c00af

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/passport/ui/C;->xC(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->xD(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "no password user"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private uC(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/xiaomi/passport/ui/p;->pI:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->qb:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method static synthetic uD(Lcom/xiaomi/passport/ui/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/p;->uy()V

    return-void
.end method

.method static synthetic uE(Lcom/xiaomi/passport/ui/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/p;->uA()V

    return-void
.end method

.method static synthetic uF(Lcom/xiaomi/passport/ui/p;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/p;->uC(Z)V

    return-void
.end method

.method private us()V
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v0, "visit_login_page_from_reg_success"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/p;->uq(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_auto_login_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "extra_auto_login_pwd"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "extra_auto_login"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v4, "extra_auto_login_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v4, "extra_auto_login_pwd"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/xiaomi/passport/ui/p;->pA:Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/passport/ui/p;->up(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private uy()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "passport_login_account"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/p;->pQ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "last_login_account_name"

    iget-object v2, p0, Lcom/xiaomi/passport/ui/p;->pQ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v2}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/passport/ui/p;->pB:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "last_login_country_iso"

    iget-object v2, p0, Lcom/xiaomi/passport/ui/p;->pB:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/passport/ui/p;->pY:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "last_login_phone_num"

    iget-object v2, p0, Lcom/xiaomi/passport/ui/p;->pY:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private uz()V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    const v1, 0x7f0c0034

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/p;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xG(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    const v1, 0x7f0c000a

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/p;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    const v1, 0x7f0c0006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->xD(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/xiaomi/passport/ui/am;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/am;-><init>(Lcom/xiaomi/passport/ui/p;)V

    const v2, 0x7f0c0007

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/passport/ui/C;->xC(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "FindPassword"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected en()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pQ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pL:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pL:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pQ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v1, 0x7f0c005a

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/p;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v1, 0x7f0c0060

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/p;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/xiaomi/passport/ui/p;->pN:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pL:Landroid/widget/EditText;

    const v1, 0x7f0c0062

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/p;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    new-instance v3, Lcom/xiaomi/passport/ui/an;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/xiaomi/passport/ui/an;-><init>(Lcom/xiaomi/passport/ui/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/passport/ui/p;->tW(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected eq()V
    .locals 1

    const-string/jumbo v0, "login_success"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/p;->uq(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pK:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/p;->qa:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/p;->qa:Z

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/p;->qa:Z

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/p;->uo(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pH:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->un()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->en()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pI:Landroid/widget/TextView;

    if-ne p1, v0, :cond_5

    const-string/jumbo v0, "click_forgot_password_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/p;->uq(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/p;->pU:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/p;->uz()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/ui/q;->uI(Landroid/app/Activity;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pM:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/p;->ur(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/l;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/passport/v2/utils/f;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/v2/utils/f;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/p;->pW:Lcom/xiaomi/passport/v2/utils/f;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "extra_ticket_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/p;->pP:Ljava/lang/String;

    const-string/jumbo v1, "extra_auto_login"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/passport/ui/p;->pR:Z

    iget-boolean v1, p0, Lcom/xiaomi/passport/ui/p;->pR:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/p;->us()V

    return-void

    :cond_0
    const-string/jumbo v1, "extra_find_pwd_on_pc"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/p;->pU:Z

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/xiaomi/passport/ui/q;->uG()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pW:Lcom/xiaomi/passport/v2/utils/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pW:Lcom/xiaomi/passport/v2/utils/f;

    invoke-virtual {v0}, Lcom/xiaomi/passport/v2/utils/f;->cancel()V

    iput-object v2, p0, Lcom/xiaomi/passport/ui/p;->pW:Lcom/xiaomi/passport/v2/utils/f;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pT:Lcom/xiaomi/passport/task/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pT:Lcom/xiaomi/passport/task/m;

    invoke-virtual {v0}, Lcom/xiaomi/passport/task/m;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pT:Lcom/xiaomi/passport/task/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/m;->cancel(Z)Z

    iput-object v2, p0, Lcom/xiaomi/passport/ui/p;->pT:Lcom/xiaomi/passport/task/m;

    :cond_1
    invoke-super {p0}, Lcom/xiaomi/passport/ui/l;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/xiaomi/passport/ui/l;->onPause()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->qc:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/p;->qc:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/xiaomi/passport/ui/p;->qc:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/xiaomi/passport/ui/l;->onResume()V

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/p;->px:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    new-instance v2, Lcom/xiaomi/passport/widget/h;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/passport/widget/h;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;-><init>(Lcom/xiaomi/passport/utils/e;)V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/p;->qc:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/p;->qc:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/xiaomi/passport/ui/l;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->uu()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/p;->pQ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/p;->pQ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/p;->pQ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setSelection(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->uB()V

    const v0, 0x7f100083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/p;->qb:Landroid/view/View;

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/p;->px:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->qb:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/p;->uC(Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/p;->qd:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method protected tX()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/passport/ui/l;->tX()V

    const-string/jumbo v0, "provision_click_skip_login_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/p;->uq(Ljava/lang/String;)V

    return-void
.end method

.method protected tY()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/passport/ui/l;->tY()V

    const-string/jumbo v0, "provision_click_confirm_skip_login_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/p;->uq(Ljava/lang/String;)V

    return-void
.end method

.method protected te()I
    .locals 1

    const v0, 0x7f0c0004

    return v0
.end method

.method protected uB()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pV:Landroid/widget/TextView;

    sget-object v1, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->vv:Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/passport/ui/p;->ue(Landroid/widget/TextView;Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pI:Landroid/widget/TextView;

    sget-object v1, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->vt:Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/passport/ui/p;->ue(Landroid/widget/TextView;Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pH:Landroid/widget/Button;

    sget-object v1, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->vu:Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/passport/ui/p;->ue(Landroid/widget/TextView;Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)V

    return-void
.end method

.method protected un()V
    .locals 1

    const-string/jumbo v0, "click_login_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/p;->uq(Ljava/lang/String;)V

    const-string/jumbo v0, "click_login_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/p;->tS(Ljava/lang/String;)V

    return-void
.end method

.method protected uo(Z)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/p;->pK:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/xiaomi/passport/utils/r;->EJ(Lcom/xiaomi/passport/ui/PassportGroupEditText;Landroid/widget/ImageView;ZLandroid/content/res/Resources;)V

    return-void
.end method

.method protected up(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/v;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/v;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/v;->Yd(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xiaomi/accountsdk/account/data/v;->Yg(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/xiaomi/accountsdk/account/data/v;->Yh(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/account/data/v;->Ye(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/xiaomi/accountsdk/account/data/v;->Yi(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/p;->pP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/v;->Yn(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/v;->build()Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/p;->pW:Lcom/xiaomi/passport/v2/utils/f;

    new-instance v2, Lcom/xiaomi/passport/ui/ao;

    invoke-direct {v2, p0}, Lcom/xiaomi/passport/ui/ao;-><init>(Lcom/xiaomi/passport/ui/p;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/passport/v2/utils/f;->LA(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;Lcom/xiaomi/passport/v2/utils/h;)V

    return-void
.end method

.method protected uq(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/p;->px:Z

    iget-object v1, p0, Lcom/xiaomi/passport/ui/p;->py:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/passport/utils/w;->Fz(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method protected ur(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pL:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pN:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/passport/ui/p;->pS:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/p;->ut(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pN:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected ut(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pT:Lcom/xiaomi/passport/task/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pT:Lcom/xiaomi/passport/task/m;

    invoke-virtual {v0}, Lcom/xiaomi/passport/task/m;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "download captcha task is running"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/task/n;

    invoke-direct {v0}, Lcom/xiaomi/passport/task/n;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/task/n;->Hu(Ljava/lang/String;)Lcom/xiaomi/passport/task/n;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/aq;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/aq;-><init>(Lcom/xiaomi/passport/ui/p;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/n;->Hv(Lcom/xiaomi/passport/task/o;)Lcom/xiaomi/passport/task/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/task/n;->build()Lcom/xiaomi/passport/task/m;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/p;->pT:Lcom/xiaomi/passport/task/m;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/p;->pT:Lcom/xiaomi/passport/task/m;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/task/m;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected uu()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "passport_login_account"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "last_login_account_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected uv()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "passport_login_account"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "last_login_country_iso"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected uw()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "passport_login_account"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "last_login_phone_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected ux(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "need_step2"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/p;->uq(Ljava/lang/String;)V

    iget-object v2, p3, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->ST:Ljava/lang/String;

    iget-object v3, p3, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->SU:Ljava/lang/String;

    iget-object v4, p3, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->SV:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/passport/ui/p;->pz:Lcom/xiaomi/passport/ui/m;

    iget-boolean v7, p0, Lcom/xiaomi/passport/ui/p;->px:Z

    move-object v0, p1

    move-object v1, p2

    move-object v5, p4

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/passport/ui/B;->xd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/ui/m;Z)Lcom/xiaomi/passport/ui/B;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/p;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Lcom/xiaomi/passport/utils/r;->Ez(Landroid/app/Activity;Landroid/app/Fragment;ZI)V

    return-void
.end method
