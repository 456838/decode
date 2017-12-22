.class public Lcom/xiaomi/account/ui/SetPasswordActivity;
.super Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/v2/ui/o;
.implements Lcom/xiaomi/passport/v2/ui/f;


# instance fields
.field private B:Landroid/accounts/Account;

.field private C:Landroid/os/AsyncTask;
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

.field private D:Lcom/xiaomi/passport/ui/C;

.field private E:Lcom/xiaomi/passport/uicontroller/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/xiaomi/passport/uicontroller/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;-><init>()V

    return-void
.end method

.method private ac()V
    .locals 4

    const v3, 0x7f0c0112

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->B:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_user_phone"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c01af

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/ak;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/ak;-><init>(Lcom/xiaomi/account/ui/SetPasswordActivity;)V

    invoke-virtual {v0, v3, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/al;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/al;-><init>(Lcom/xiaomi/account/ui/SetPasswordActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private ad()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->D:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->D:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->D:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->D:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    iput-object v1, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->D:Lcom/xiaomi/passport/ui/C;

    goto :goto_0
.end method

.method private ae()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/g;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const-string/jumbo v0, "SetPasswordActivity"

    const-string/jumbo v1, "start to get activate info"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lmiui/telephony/a;->aHD()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-static {v7}, Lcom/xiaomi/accountsdk/activate/a;->ajT(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/activate/a;->ajU(I)Lcom/xiaomi/accountsdk/activate/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SetPasswordActivity"

    const-string/jumbo v2, "getPhoneNumber: Null ActivateManagerFuture."

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x3e8

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Lcom/xiaomi/accountsdk/activate/b;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_1

    const-string/jumbo v0, "SetPasswordActivity"

    const-string/jumbo v2, "getPhoneNumber: Null ActivateManagerFuture bundle."

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/accountsdk/activate/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SetPasswordActivity"

    const-string/jumbo v3, "getPhoneNumber: "

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    :try_start_1
    const-string/jumbo v2, "sim_inserted"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v0, "SetPasswordActivity"

    const-string/jumbo v2, "getPhoneNumber: SIM not inserted"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/xiaomi/accountsdk/activate/OperationCancelledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "SetPasswordActivity"

    const-string/jumbo v3, "getPhoneNumber: "

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    :try_start_2
    const-string/jumbo v2, "activate_phone"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, "SetPasswordActivity"

    const-string/jumbo v2, "phone num is null"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/xiaomi/accountsdk/activate/OperationCancelledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v2, "SetPasswordActivity"

    const-string/jumbo v3, "getPhoneNumber: "

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    :try_start_3
    const-string/jumbo v2, "activate_phone"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "activate_hashed_sim_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Lcom/xiaomi/accountsdk/activate/a;->ajT(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/activate/a;->ajV(I)Lcom/xiaomi/accountsdk/activate/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/activate/b;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_5

    const-string/jumbo v4, "vkey2"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vkey2_nonce"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/g;

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/accountsdk/account/data/g;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/xiaomi/accountsdk/activate/OperationCancelledException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v0, "SetPasswordActivity"

    const-string/jumbo v1, "finish getting activate info"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_5
    move-object v5, v6

    move-object v4, v6

    goto :goto_2
.end method

.method private af()Lcom/xiaomi/accountsdk/account/data/g;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->ae()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "this should not be happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/g;

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->B:Landroid/accounts/Account;

    const-string/jumbo v5, "acc_user_phone"

    invoke-virtual {v0, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/g;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/g;->Ql:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/g;

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private ag(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->B:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

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

.method private aj(Lcom/xiaomi/accountsdk/account/data/e;)V
    .locals 2

    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->al(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/passport/uicontroller/y;

    invoke-direct {v0}, Lcom/xiaomi/passport/uicontroller/y;-><init>()V

    new-instance v1, Lcom/xiaomi/account/ui/an;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/account/ui/an;-><init>(Lcom/xiaomi/account/ui/SetPasswordActivity;Lcom/xiaomi/accountsdk/account/data/e;)V

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/passport/uicontroller/y;->NA(Lcom/xiaomi/accountsdk/account/data/e;Lcom/xiaomi/passport/uicontroller/E;)Lcom/xiaomi/passport/uicontroller/v;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->F:Lcom/xiaomi/passport/uicontroller/v;

    return-void
.end method

.method private ak(II)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->ad()V

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/SetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xG(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/xiaomi/account/ui/SetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->xC(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "detail message"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private al(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->D:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->ad()V

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->D:Lcom/xiaomi/passport/ui/C;

    iget-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->D:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "SetPasswordActivity"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private am(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2, p1}, Lcom/xiaomi/passport/v2/ui/n;->Kz(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/passport/v2/ui/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method static synthetic an(Lcom/xiaomi/account/ui/SetPasswordActivity;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->B:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic ao(Lcom/xiaomi/account/ui/SetPasswordActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ap(Lcom/xiaomi/account/ui/SetPasswordActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->C:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic aq(Lcom/xiaomi/account/ui/SetPasswordActivity;Lcom/xiaomi/passport/uicontroller/v;)Lcom/xiaomi/passport/uicontroller/v;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->E:Lcom/xiaomi/passport/uicontroller/v;

    return-object p1
.end method

.method static synthetic ar(Lcom/xiaomi/account/ui/SetPasswordActivity;)Lcom/xiaomi/accountsdk/account/data/g;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->af()Lcom/xiaomi/accountsdk/account/data/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic as(Lcom/xiaomi/account/ui/SetPasswordActivity;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/SetPasswordActivity;->ag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic at(Lcom/xiaomi/account/ui/SetPasswordActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->ad()V

    return-void
.end method

.method static synthetic au(Lcom/xiaomi/account/ui/SetPasswordActivity;Lcom/xiaomi/accountsdk/account/data/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/SetPasswordActivity;->aj(Lcom/xiaomi/accountsdk/account/data/e;)V

    return-void
.end method

.method static synthetic av(Lcom/xiaomi/account/ui/SetPasswordActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/SetPasswordActivity;->ak(II)V

    return-void
.end method

.method static synthetic aw(Lcom/xiaomi/account/ui/SetPasswordActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/SetPasswordActivity;->al(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ax(Lcom/xiaomi/account/ui/SetPasswordActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/SetPasswordActivity;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ah(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->C:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->C:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    const-string/jumbo v0, "SetPasswordActivity"

    const-string/jumbo v1, "set pwd params task is running"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Lcom/xiaomi/account/ui/am;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/xiaomi/account/ui/am;-><init>(Lcom/xiaomi/account/ui/SetPasswordActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->C:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->C:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public ai(Lcom/xiaomi/passport/v2/ui/p;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/aq;

    invoke-direct {v1, p0, v0, p1}, Lcom/xiaomi/account/ui/aq;-><init>(Lcom/xiaomi/account/ui/SetPasswordActivity;Landroid/content/Context;Lcom/xiaomi/passport/v2/ui/p;)V

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/account/ui/aq;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string/jumbo v0, "SetPasswordActivity"

    const-string/jumbo v1, "add phone successfully"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SetPasswordActivity"

    const-string/jumbo v1, "add phone cancelled"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->B:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->B:Landroid/accounts/Account;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->ac()V

    new-instance v0, Lcom/xiaomi/passport/v2/ui/e;

    invoke-direct {v0}, Lcom/xiaomi/passport/v2/ui/e;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/e;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x1020002

    invoke-static {v1, v2, v0}, Lcom/xiaomi/passport/utils/f;->Df(Landroid/app/FragmentManager;ILandroid/app/Fragment;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "service_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->G:Ljava/lang/String;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->finish()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->F:Lcom/xiaomi/passport/uicontroller/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->F:Lcom/xiaomi/passport/uicontroller/v;

    invoke-virtual {v0}, Lcom/xiaomi/passport/uicontroller/v;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->E:Lcom/xiaomi/passport/uicontroller/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->E:Lcom/xiaomi/passport/uicontroller/v;

    invoke-virtual {v0}, Lcom/xiaomi/passport/uicontroller/v;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    invoke-super {p0}, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;->onDestroy()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->F:Lcom/xiaomi/passport/uicontroller/v;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/v;->cancel(Z)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/account/ui/SetPasswordActivity;->E:Lcom/xiaomi/passport/uicontroller/v;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/v;->cancel(Z)Z

    goto :goto_1
.end method
