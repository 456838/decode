.class public Lcom/xiaomi/passport/ui/LicenseActivity;
.super Lcom/xiaomi/passport/ui/BaseActivity;
.source ""


# static fields
.field private static final sG:[I

.field private static final sH:[Ljava/lang/String;


# instance fields
.field private sI:Lcom/xiaomi/passport/ui/C;

.field private sJ:Landroid/content/DialogInterface$OnCancelListener;

.field private sK:Landroid/content/DialogInterface$OnClickListener;

.field private sL:Ljava/lang/String;

.field private sM:Ljava/lang/String;

.field private sN:Landroid/webkit/WebView;

.field private sO:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http://www.miui.com/res/doc/privacy/%s.html"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://www.miui.com/res/doc/eula/%s.html"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaomi/passport/ui/LicenseActivity;->sH:[Ljava/lang/String;

    const v0, 0x7f0c0082

    const v1, 0x7f0c0083

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/ui/LicenseActivity;->sG:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/BaseActivity;-><init>()V

    new-instance v0, Lcom/xiaomi/passport/ui/aZ;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/aZ;-><init>(Lcom/xiaomi/passport/ui/LicenseActivity;)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sJ:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/xiaomi/passport/ui/ba;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/ba;-><init>(Lcom/xiaomi/passport/ui/LicenseActivity;)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sK:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/xiaomi/passport/ui/bb;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/bb;-><init>(Lcom/xiaomi/passport/ui/LicenseActivity;)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sO:Landroid/webkit/WebViewClient;

    return-void
.end method

.method public static xY(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/passport/ui/LicenseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "license_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "license_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private xZ()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sI:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sI:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sI:Lcom/xiaomi/passport/ui/C;

    :cond_0
    return-void
.end method

.method private ya(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/ui/LicenseActivity;->sH:[Ljava/lang/String;

    aget-object v0, v0, p1

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "cn"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/passport/ui/LicenseActivity;->sH:[Ljava/lang/String;

    aget-object v0, v0, p1

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "tw"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/passport/ui/LicenseActivity;->sH:[Ljava/lang/String;

    aget-object v0, v0, p1

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "pt"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/xiaomi/passport/ui/LicenseActivity;->sH:[Ljava/lang/String;

    aget-object v0, v0, p1

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "en"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private yb(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    sget-object v1, Lcom/xiaomi/passport/ui/LicenseActivity;->sG:[I

    array-length v1, v1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private yc()V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LicenseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sN:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/LicenseActivity;->xZ()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/LicenseActivity;->showDialog(I)V

    return-void
.end method

.method private yd()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sI:Lcom/xiaomi/passport/ui/C;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    const v1, 0x7f0c006f

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/LicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sI:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LicenseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sI:Lcom/xiaomi/passport/ui/C;

    const-string/jumbo v2, "loading"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method static synthetic ye(Lcom/xiaomi/passport/ui/LicenseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/LicenseActivity;->xZ()V

    return-void
.end method

.method static synthetic yf(Lcom/xiaomi/passport/ui/LicenseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/LicenseActivity;->yc()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sN:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sN:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x2

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LicenseActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LicenseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "license_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-direct {p0, v1}, Lcom/xiaomi/passport/ui/LicenseActivity;->yb(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    if-ne v1, v3, :cond_3

    const-string/jumbo v1, "license_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sM:Ljava/lang/String;

    const v1, 0x7f0c0083

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/LicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sL:Ljava/lang/String;

    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sM:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/LicenseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LicenseActivity;->finish()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LicenseActivity;->finish()V

    return-void

    :cond_3
    sget-object v2, Lcom/xiaomi/passport/ui/LicenseActivity;->sG:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/ui/LicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sL:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LicenseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/passport/ui/LicenseActivity;->ya(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sM:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/LicenseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/LicenseActivity;->yd()V

    const v0, 0x7f10006d

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/LicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sN:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sN:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sN:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sO:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sN:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LicenseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/xiaomi/passport/widget/f;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/widget/f;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0084

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/LicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sM:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/f;->zw(Ljava/lang/CharSequence;)Lcom/xiaomi/passport/widget/f;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/widget/f;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaomi/passport/widget/f;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sK:Landroid/content/DialogInterface$OnClickListener;

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/passport/widget/f;->zy(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/passport/widget/f;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/LicenseActivity;->sJ:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/widget/f;->zz(Landroid/content/DialogInterface$OnCancelListener;)Lcom/xiaomi/passport/widget/f;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/f;->zt()Lcom/xiaomi/passport/widget/e;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/LicenseActivity;->xZ()V

    invoke-super {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/LicenseActivity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
