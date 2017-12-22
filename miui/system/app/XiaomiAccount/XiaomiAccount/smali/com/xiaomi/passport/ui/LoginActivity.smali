.class public Lcom/xiaomi/passport/ui/LoginActivity;
.super Lcom/xiaomi/passport/ui/BaseActivity;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/ui/m;


# instance fields
.field private final st:I

.field private su:Lcom/xiaomi/passport/utils/p;

.field private sv:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/passport/ui/LoginActivity;->st:I

    return-void
.end method

.method private xK()V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/LoginActivity;->xL()V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/LoginActivity;->xM()Lcom/xiaomi/passport/ui/l;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string/jumbo v2, "extra_build_region_info"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/l;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LoginActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v2, 0x1020002

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/utils/f;->Dg(Landroid/app/FragmentManager;ILandroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/l;

    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/ui/l;->tQ(Lcom/xiaomi/passport/ui/m;)V

    return-void
.end method

.method private xL()V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/ui/aY;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/aY;-><init>(Lcom/xiaomi/passport/ui/LoginActivity;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/LoginActivity;->xQ(Ljava/lang/Runnable;)V

    return-void
.end method

.method private xM()Lcom/xiaomi/passport/ui/l;
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/LoginActivity;->xN()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/passport/v2/ui/l;

    invoke-direct {v0}, Lcom/xiaomi/passport/v2/ui/l;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/LoginActivity;->xO()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xiaomi/passport/ui/o;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/o;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/xiaomi/passport/ui/w;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/w;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/xiaomi/passport/v2/ui/a;

    invoke-direct {v0}, Lcom/xiaomi/passport/v2/ui/a;-><init>()V

    goto :goto_0
.end method

.method private xN()Z
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_auto_login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private xO()Z
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "registered_but_not_recycled_phone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "registered_but_not_recycled_phone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return v0
.end method

.method private xP(Ljava/lang/Runnable;)Lcom/xiaomi/passport/utils/p;
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
    iget-object v0, p0, Lcom/xiaomi/passport/ui/LoginActivity;->su:Lcom/xiaomi/passport/utils/p;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/xiaomi/passport/ui/LoginActivity;->su:Lcom/xiaomi/passport/utils/p;

    :cond_1
    new-instance v0, Lcom/xiaomi/passport/utils/q;

    invoke-direct {v0}, Lcom/xiaomi/passport/utils/q;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/utils/q;->Et(I)Lcom/xiaomi/passport/utils/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/utils/q;->Eu(Ljava/lang/Runnable;)Lcom/xiaomi/passport/utils/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/utils/q;->Es(Landroid/app/Activity;)Lcom/xiaomi/passport/utils/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/utils/q;->build()Lcom/xiaomi/passport/utils/p;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/LoginActivity;->su:Lcom/xiaomi/passport/utils/p;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/LoginActivity;->su:Lcom/xiaomi/passport/utils/p;

    return-object v0
.end method

.method private xR(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/passport/ui/LoginActivity;->sR(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fA(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public fJ(Lcom/xiaomi/passport/ui/n;)V
    .locals 0

    return-void
.end method

.method public fK(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/LoginActivity;->sv:Z

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/ui/LoginActivity;->xR(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LoginActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LoginActivity;->sP()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LoginActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/LoginActivity;->xK()V

    invoke-static {v2}, Lcom/xiaomi/passport/data/e;->yY(Lcom/xiaomi/passport/data/f;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/LoginActivity;->su:Lcom/xiaomi/passport/utils/p;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/xiaomi/passport/ui/LoginActivity;->su:Lcom/xiaomi/passport/utils/p;

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/LoginActivity;->su:Lcom/xiaomi/passport/utils/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/LoginActivity;->su:Lcom/xiaomi/passport/utils/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/passport/utils/p;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->onResume()V

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/LoginActivity;->sv:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LoginActivity;->sP()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/xiaomi/passport/g;->LC:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/xiaomi/passport/utils/r;->ED(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public xQ(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/LoginActivity;->xP(Ljava/lang/Runnable;)Lcom/xiaomi/passport/utils/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/utils/p;->run()V

    return-void
.end method
