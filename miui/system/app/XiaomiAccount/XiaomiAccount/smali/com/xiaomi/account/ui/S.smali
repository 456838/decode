.class public Lcom/xiaomi/account/ui/S;
.super Landroid/app/Fragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private dY:Landroid/widget/TextView;

.field private dZ:Lcom/xiaomi/passport/ui/h;

.field private ea:Ljava/lang/String;

.field private eb:Landroid/widget/TextView;

.field private ec:Lcom/xiaomi/account/ui/T;

.field private ed:Landroid/widget/Button;

.field private ee:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic hA(Lcom/xiaomi/account/ui/S;)Lcom/xiaomi/passport/ui/h;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/S;->dZ:Lcom/xiaomi/passport/ui/h;

    return-object v0
.end method

.method static synthetic hB(Lcom/xiaomi/account/ui/S;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/S;->ea:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic hC(Lcom/xiaomi/account/ui/S;Lcom/xiaomi/account/ui/T;)Lcom/xiaomi/account/ui/T;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/S;->ec:Lcom/xiaomi/account/ui/T;

    return-object p1
.end method

.method static synthetic hD(Lcom/xiaomi/account/ui/S;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/S;->hw(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic hE(Lcom/xiaomi/account/ui/S;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/S;->hx(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic hF(Lcom/xiaomi/account/ui/S;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/S;->hz()V

    return-void
.end method

.method public static hv(Ljava/lang/String;)Lcom/xiaomi/account/ui/S;
    .locals 3

    new-instance v0, Lcom/xiaomi/account/ui/S;

    invoke-direct {v0}, Lcom/xiaomi/account/ui/S;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "extra_email_address"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/S;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private hw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/account/ui/S;->ec:Lcom/xiaomi/account/ui/T;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/S;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "UnactivatedEmailFragmen"

    const-string/jumbo v2, "no xiaomi account"

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/S;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/S;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string/jumbo v2, "identity_auth_token"

    invoke-virtual {v1, v0, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/xiaomi/account/ui/T;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/S;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/account/ui/S;->ea:Ljava/lang/String;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/account/ui/T;-><init>(Lcom/xiaomi/account/ui/S;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/S;->ec:Lcom/xiaomi/account/ui/T;

    iget-object v0, p0, Lcom/xiaomi/account/ui/S;->ec:Lcom/xiaomi/account/ui/T;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/ui/T;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private hx(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/S;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "UnactivatedEmailFragmen"

    const-string/jumbo v2, "no xiaomi account"

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/S;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/S;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "unactivated_email_address"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "unactivated_email_time_stamp"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private hy()V
    .locals 6

    const/16 v5, 0x21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c012f

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/S;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c0130

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/S;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/xiaomi/account/ui/cm;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/cm;-><init>(Lcom/xiaomi/account/ui/S;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0x24

    invoke-direct {v1, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/S;->dY:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/S;->dY:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private hz()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/S;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0134

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    const v1, 0x7f0c0135

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/S;->ed:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    invoke-direct {p0, v1, v1}, Lcom/xiaomi/account/ui/S;->hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/S;->ee:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/S;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/S;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "extra_email_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/S;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string/jumbo v1, "extra_email_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/S;->ea:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/passport/ui/h;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/S;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/account/ui/cl;

    invoke-direct {v2, p0}, Lcom/xiaomi/account/ui/cl;-><init>(Lcom/xiaomi/account/ui/S;)V

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/ui/h;-><init>(Landroid/app/Activity;Lcom/xiaomi/passport/ui/i;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/S;->dZ:Lcom/xiaomi/passport/ui/h;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f030058

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f100015

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/S;->eb:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/account/ui/S;->eb:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xiaomi/account/ui/S;->ea:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f1000b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/S;->dY:Landroid/widget/TextView;

    const v0, 0x7f1000ba

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/account/ui/S;->ed:Landroid/widget/Button;

    const v0, 0x7f1000b9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/account/ui/S;->ee:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/account/ui/S;->ed:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/S;->ee:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/S;->hy()V

    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/S;->ec:Lcom/xiaomi/account/ui/T;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/S;->ec:Lcom/xiaomi/account/ui/T;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/T;->cancel(Z)Z

    iput-object v2, p0, Lcom/xiaomi/account/ui/S;->ec:Lcom/xiaomi/account/ui/T;

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/S;->eb:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/S;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/S;->eb:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/utils/r;->EI(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/S;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/S;->eb:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/utils/r;->EI(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method
