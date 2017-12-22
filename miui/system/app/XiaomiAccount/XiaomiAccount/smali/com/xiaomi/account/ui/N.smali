.class public Lcom/xiaomi/account/ui/N;
.super Lcom/xiaomi/passport/ui/x;
.source ""


# instance fields
.field private dG:Lcom/xiaomi/account/task/h;

.field private dH:Lcom/xiaomi/accountsdk/account/data/BindingType;

.field private dI:Ljava/lang/String;

.field private dJ:Lcom/xiaomi/account/task/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/x;-><init>()V

    return-void
.end method

.method public static gF(Ljava/lang/String;Landroid/os/Bundle;)Lcom/xiaomi/account/ui/N;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/account/ui/N;

    invoke-direct {v0}, Lcom/xiaomi/account/ui/N;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/ui/N;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private gH()V
    .locals 4

    const v0, 0x7f0c0123

    const v1, 0x7f0c0124

    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/N;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    new-instance v0, Lcom/xiaomi/account/ui/ca;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/ui/ca;-><init>(Lcom/xiaomi/account/ui/N;)V

    const v1, 0x7f0c0125

    invoke-virtual {v2, v1, v0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private gJ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/account/ui/N;->dG:Lcom/xiaomi/account/task/h;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/N;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/x;->FC(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "InputBindedVerifyCodeFr"

    const-string/jumbo v1, "no xiaomi account"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/N;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string/jumbo v2, "identity_auth_token"

    invoke-virtual {v1, v0, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/xiaomi/account/task/h;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/N;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaomi/account/ui/N;->dI:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/account/ui/N;->dH:Lcom/xiaomi/accountsdk/account/data/BindingType;

    new-instance v7, Lcom/xiaomi/account/ui/bY;

    invoke-direct {v7, p0}, Lcom/xiaomi/account/ui/bY;-><init>(Lcom/xiaomi/account/ui/N;)V

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/account/task/h;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/BindingType;Ljava/lang/String;Lcom/xiaomi/account/task/i;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/N;->dG:Lcom/xiaomi/account/task/h;

    iget-object v0, p0, Lcom/xiaomi/account/ui/N;->dG:Lcom/xiaomi/account/task/h;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/h;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method static synthetic gK(Lcom/xiaomi/account/ui/N;Lcom/xiaomi/account/task/h;)Lcom/xiaomi/account/task/h;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/N;->dG:Lcom/xiaomi/account/task/h;

    return-object p1
.end method

.method static synthetic gL(Lcom/xiaomi/account/ui/N;Lcom/xiaomi/account/task/a;)Lcom/xiaomi/account/task/a;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/N;->dJ:Lcom/xiaomi/account/task/a;

    return-object p1
.end method

.method static synthetic gM(Lcom/xiaomi/account/ui/N;)V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/N;->wz()V

    return-void
.end method

.method static synthetic gN(Lcom/xiaomi/account/ui/N;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/N;->wD(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "InputBindedVerifyCodeFr"

    return-object v0
.end method

.method public gG(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/N;->gJ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public gI(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/account/ui/N;->dJ:Lcom/xiaomi/account/task/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/account/task/a;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/N;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/N;->dH:Lcom/xiaomi/accountsdk/account/data/BindingType;

    new-instance v3, Lcom/xiaomi/account/ui/bZ;

    invoke-direct {v3, p0}, Lcom/xiaomi/account/ui/bZ;-><init>(Lcom/xiaomi/account/ui/N;)V

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/xiaomi/account/task/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/BindingType;Lcom/xiaomi/account/task/b;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/N;->dJ:Lcom/xiaomi/account/task/a;

    iget-object v0, p0, Lcom/xiaomi/account/ui/N;->dJ:Lcom/xiaomi/account/task/a;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/x;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/N;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/N;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "InputBindedVerifyCodeFr"

    const-string/jumbo v1, "args is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/N;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string/jumbo v0, "update_binded_phone_or_email"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/BindingType;

    iput-object v0, p0, Lcom/xiaomi/account/ui/N;->dH:Lcom/xiaomi/accountsdk/account/data/BindingType;

    const-string/jumbo v0, "old_binded_phone_num"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/N;->dI:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/N;->dJ:Lcom/xiaomi/account/task/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/N;->dJ:Lcom/xiaomi/account/task/a;

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/task/a;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/N;->dJ:Lcom/xiaomi/account/task/a;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/N;->dG:Lcom/xiaomi/account/task/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/N;->dG:Lcom/xiaomi/account/task/h;

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/task/h;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/N;->dG:Lcom/xiaomi/account/task/h;

    :cond_1
    invoke-super {p0}, Lcom/xiaomi/passport/ui/x;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/N;->gH()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/x;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/xiaomi/passport/ui/x;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/N;->ry:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method
