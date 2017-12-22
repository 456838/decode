.class public Lcom/xiaomi/account/ui/SnsAccountActivity;
.super Lmiui/app/Activity;
.source ""


# instance fields
.field private bA:Landroid/widget/LinearLayout;

.field private bB:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/xiaomi/account/ui/B;",
            ">;"
        }
    .end annotation
.end field

.field private bC:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/xiaomi/account/ui/z;",
            ">;"
        }
    .end annotation
.end field

.field private bD:Landroid/widget/ProgressBar;

.field private bE:Lcom/xiaomi/account/data/e;

.field private bF:Landroid/widget/Button;

.field private bG:Landroid/widget/ImageView;

.field private bH:Landroid/widget/TextView;

.field private by:Landroid/accounts/Account;

.field private bz:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method private dP(Z)V
    .locals 3

    new-instance v0, Lcom/xiaomi/account/ui/A;

    invoke-direct {v0, p0, p0, p1}, Lcom/xiaomi/account/ui/A;-><init>(Lcom/xiaomi/account/ui/SnsAccountActivity;Lmiui/app/Activity;Z)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bB:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bB:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private dQ()V
    .locals 4

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->by:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bE:Lcom/xiaomi/account/data/e;

    invoke-virtual {v2}, Lcom/xiaomi/account/data/e;->lY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->by:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bE:Lcom/xiaomi/account/data/e;

    invoke-virtual {v3}, Lcom/xiaomi/account/data/e;->lS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Lcom/xiaomi/account/ui/y;

    invoke-direct {v0, p0, p0}, Lcom/xiaomi/account/ui/y;-><init>(Lcom/xiaomi/account/ui/SnsAccountActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bC:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bC:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    invoke-static {p0, v0}, Lcom/xiaomi/account/utils/k;->oc(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lmiui/graphics/BitmapFactory;->createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bH:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bG:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dR()V

    return-void
.end method

.method private dR()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bD:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bD:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bA:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bA:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private dS()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bA:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bA:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bD:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bD:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private dT()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c010d

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/bp;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bp;-><init>(Lcom/xiaomi/account/ui/SnsAccountActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method public static dU(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_sns_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/xiaomi/account/data/e;->lW(Ljava/lang/String;)Lcom/xiaomi/account/data/e;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, ":miui:starting_window_label"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaomi/account/data/e;->mc()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic dV(Lcom/xiaomi/account/ui/SnsAccountActivity;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->by:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic dW(Lcom/xiaomi/account/ui/SnsAccountActivity;)Lcom/xiaomi/account/data/e;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bE:Lcom/xiaomi/account/data/e;

    return-object v0
.end method

.method static synthetic dX(Lcom/xiaomi/account/ui/SnsAccountActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bG:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic dY(Lcom/xiaomi/account/ui/SnsAccountActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bH:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic dZ(Lcom/xiaomi/account/ui/SnsAccountActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bB:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic ea(Lcom/xiaomi/account/ui/SnsAccountActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bC:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic eb(Lcom/xiaomi/account/ui/SnsAccountActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dP(Z)V

    return-void
.end method

.method static synthetic ec(Lcom/xiaomi/account/ui/SnsAccountActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dR()V

    return-void
.end method

.method static synthetic ed(Lcom/xiaomi/account/ui/SnsAccountActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dS()V

    return-void
.end method

.method static synthetic ee(Lcom/xiaomi/account/ui/SnsAccountActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dT()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->setContentView(I)V

    const v0, 0x7f1000af

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bA:Landroid/widget/LinearLayout;

    const v0, 0x7f1000ae

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bD:Landroid/widget/ProgressBar;

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->by:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->by:Landroid/accounts/Account;

    if-nez v0, :cond_1

    const-string/jumbo v0, "SnsAccountActivity"

    const-string/jumbo v1, "no xiaomi account"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_sns_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "SnsAccountActivity"

    const-string/jumbo v1, "snsType is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->finish()V

    return-void

    :cond_2
    invoke-static {v0}, Lcom/xiaomi/account/data/e;->lW(Ljava/lang/String;)Lcom/xiaomi/account/data/e;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bE:Lcom/xiaomi/account/data/e;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bE:Lcom/xiaomi/account/data/e;

    invoke-virtual {v1}, Lcom/xiaomi/account/data/e;->mc()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    :cond_3
    const v0, 0x7f100005

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bH:Landroid/widget/TextView;

    const v0, 0x7f100004

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bG:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dQ()V

    const v0, 0x7f0c00e5

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bE:Lcom/xiaomi/account/data/e;

    invoke-virtual {v2}, Lcom/xiaomi/account/data/e;->me()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/account/ui/SnsAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bE:Lcom/xiaomi/account/data/e;

    invoke-virtual {v2}, Lcom/xiaomi/account/data/e;->me()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/account/ui/SnsAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f1000b0

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bz:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bz:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f1000b1

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bF:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bF:Landroid/widget/Button;

    new-instance v1, Lcom/xiaomi/account/ui/bn;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bn;-><init>(Lcom/xiaomi/account/ui/SnsAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bB:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bB:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bB:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bC:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bC:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/SnsAccountActivity;->bC:Landroid/os/AsyncTask;

    :cond_1
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/account/utils/p;->op(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
