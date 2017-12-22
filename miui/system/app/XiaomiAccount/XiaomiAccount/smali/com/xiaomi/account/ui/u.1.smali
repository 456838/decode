.class public Lcom/xiaomi/account/ui/u;
.super Landroid/app/Fragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private aW:Landroid/widget/Button;

.field private aX:Ljava/lang/String;

.field private aY:Landroid/widget/EditText;

.field private aZ:Landroid/widget/ImageView;

.field private ba:Landroid/view/View;

.field private bb:Ljava/lang/String;

.field private bc:Landroid/widget/EditText;

.field private bd:Landroid/widget/TextView;

.field private be:Lcom/xiaomi/account/ui/w;

.field private bf:Lcom/xiaomi/account/ui/v;

.field private bg:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final bh:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/xiaomi/account/ui/bd;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/ui/bd;-><init>(Lcom/xiaomi/account/ui/u;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/u;->bh:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic cA(Lcom/xiaomi/account/ui/u;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->ba:Landroid/view/View;

    return-object v0
.end method

.method static synthetic cB(Lcom/xiaomi/account/ui/u;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->bb:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic cC(Lcom/xiaomi/account/ui/u;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->bc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic cD(Lcom/xiaomi/account/ui/u;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/u;->aX:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic cE(Lcom/xiaomi/account/ui/u;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/u;->bb:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic cF(Lcom/xiaomi/account/ui/u;Lcom/xiaomi/account/ui/w;)Lcom/xiaomi/account/ui/w;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/u;->be:Lcom/xiaomi/account/ui/w;

    return-object p1
.end method

.method static synthetic cG(Lcom/xiaomi/account/ui/u;Lcom/xiaomi/account/ui/v;)Lcom/xiaomi/account/ui/v;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/u;->bf:Lcom/xiaomi/account/ui/v;

    return-object p1
.end method

.method static synthetic cH(Lcom/xiaomi/account/ui/u;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/u;->ct(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic cI(Lcom/xiaomi/account/ui/u;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/u;->cv(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic cJ(Lcom/xiaomi/account/ui/u;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/u;->cy(ZLjava/lang/String;)V

    return-void
.end method

.method private ct(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->be:Lcom/xiaomi/account/ui/w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/account/ui/w;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/account/ui/w;-><init>(Lcom/xiaomi/account/ui/u;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/u;->be:Lcom/xiaomi/account/ui/w;

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->be:Lcom/xiaomi/account/ui/w;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/ui/w;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private cu()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->bc:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->bc:Landroid/widget/EditText;

    const v1, 0x7f0c005e

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/u;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_0
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->bc:Landroid/widget/EditText;

    const v1, 0x7f0c005f

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/u;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method private cv(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "InputBindedEmailFragmen"

    const-string/jumbo v1, "no xiaomi account"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/u;->getActivity()Landroid/app/Activity;

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

.method private cw()V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/u;->cu()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->aY:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->ba:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->aY:Landroid/widget/EditText;

    const v1, 0x7f0c0062

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/u;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "InputBindedEmailFragmen"

    const-string/jumbo v2, "no xiaomi account"

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/account/ui/u;->bf:Lcom/xiaomi/account/ui/v;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string/jumbo v2, "identity_auth_token"

    invoke-virtual {v1, v0, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/xiaomi/account/ui/v;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v6, p0, Lcom/xiaomi/account/ui/u;->aX:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/account/ui/v;-><init>(Lcom/xiaomi/account/ui/u;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/u;->bf:Lcom/xiaomi/account/ui/v;

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->bf:Lcom/xiaomi/account/ui/v;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/ui/v;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method

.method private cx(I)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, p1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/u;->aW:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private cy(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->bd:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->bd:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a003f

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/u;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/u;->cx(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->bd:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0021

    goto :goto_0
.end method

.method static synthetic cz(Lcom/xiaomi/account/ui/u;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->aZ:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->aW:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/account/ui/u;->cw()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->aZ:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->bb:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/u;->ct(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f030007

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f100015

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaomi/account/ui/u;->bc:Landroid/widget/EditText;

    const v0, 0x7f100017

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/account/ui/u;->aW:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->aW:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10001f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/u;->ba:Landroid/view/View;

    const v0, 0x7f100061

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaomi/account/ui/u;->aY:Landroid/widget/EditText;

    const v0, 0x7f100062

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/u;->aZ:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->aZ:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/u;->bd:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->bc:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/xiaomi/account/ui/u;->bh:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->aY:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/xiaomi/account/ui/u;->bh:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->bg:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->bg:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/u;->bg:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->be:Lcom/xiaomi/account/ui/w;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->be:Lcom/xiaomi/account/ui/w;

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/ui/w;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/u;->be:Lcom/xiaomi/account/ui/w;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->bf:Lcom/xiaomi/account/ui/v;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->bf:Lcom/xiaomi/account/ui/v;

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/ui/v;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/u;->bf:Lcom/xiaomi/account/ui/v;

    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/u;->bc:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/utils/r;->EI(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/u;->bc:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/u;->bc:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/utils/r;->EI(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method
