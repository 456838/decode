.class public Lcom/xiaomi/account/ui/F;
.super Lmiui/app/Fragment;
.source ""


# static fields
.field private static final ci:Ljava/lang/String;


# instance fields
.field private cj:Ljava/lang/String;

.field private ck:Lcom/xiaomi/account/ui/H;

.field private cl:Lcom/xiaomi/account/ui/G;

.field private cm:Lcom/xiaomi/account/data/a;

.field private cn:J

.field private co:Lcom/xiaomi/passport/ui/C;

.field private cp:Lcom/xiaomi/account/XiaomiOAuthResponse;

.field private cq:Ljava/lang/String;

.field private cr:Ljava/lang/String;

.field private cs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/account/ui/F;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/account/ui/F;->ci:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiui/app/Fragment;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/account/ui/F;->cn:J

    return-void
.end method

.method static synthetic eA(Lcom/xiaomi/account/ui/F;)Lcom/xiaomi/account/ui/H;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/F;->ck:Lcom/xiaomi/account/ui/H;

    return-object v0
.end method

.method static synthetic eB(Lcom/xiaomi/account/ui/F;)Lcom/xiaomi/account/ui/G;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/F;->cl:Lcom/xiaomi/account/ui/G;

    return-object v0
.end method

.method static synthetic eC(Lcom/xiaomi/account/ui/F;)Lcom/xiaomi/account/data/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/F;->cm:Lcom/xiaomi/account/data/a;

    return-object v0
.end method

.method static synthetic eD(Lcom/xiaomi/account/ui/F;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/F;->cq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic eE(Lcom/xiaomi/account/ui/F;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/F;->cr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic eF(Lcom/xiaomi/account/ui/F;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/F;->cs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic eG(Lcom/xiaomi/account/ui/F;Lcom/xiaomi/account/ui/H;)Lcom/xiaomi/account/ui/H;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/F;->ck:Lcom/xiaomi/account/ui/H;

    return-object p1
.end method

.method static synthetic eH(Lcom/xiaomi/account/ui/F;Lcom/xiaomi/account/data/a;)Lcom/xiaomi/account/data/a;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/F;->cm:Lcom/xiaomi/account/data/a;

    return-object p1
.end method

.method static synthetic eI(Lcom/xiaomi/account/ui/F;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/F;->et()V

    return-void
.end method

.method static synthetic eJ(Lcom/xiaomi/account/ui/F;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/F;->eu(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic eK(Lcom/xiaomi/account/ui/F;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/F;->ev(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic eL(Lcom/xiaomi/account/ui/F;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/F;->ew(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic eM(Lcom/xiaomi/account/ui/F;Lcom/xiaomi/account/data/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/F;->ex(Lcom/xiaomi/account/data/a;)V

    return-void
.end method

.method private et()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/F;->co:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/F;->co:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/F;->co:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    iput-object v1, p0, Lcom/xiaomi/account/ui/F;->co:Lcom/xiaomi/passport/ui/C;

    :cond_0
    return-void
.end method

.method private eu(ILandroid/os/Bundle;)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/F;->cp:Lcom/xiaomi/account/XiaomiOAuthResponse;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/F;->cp:Lcom/xiaomi/account/XiaomiOAuthResponse;

    invoke-virtual {v0}, Lcom/xiaomi/account/XiaomiOAuthResponse;->qi()V

    :cond_1
    :goto_0
    const-string/jumbo v0, "oauth_native"

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/account/ui/F;->cn:J

    sub-long/2addr v2, v4

    invoke-static {v0, p1, v1, v2, v3}, Lcom/xiaomi/account/utils/d;->nn(Ljava/lang/String;ILjava/lang/String;J)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/account/ui/F;->cp:Lcom/xiaomi/account/XiaomiOAuthResponse;

    invoke-virtual {v0, p2}, Lcom/xiaomi/account/XiaomiOAuthResponse;->qk(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private ev(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "extra_error_description"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_error_code"

    const/16 v2, -0x3eb

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/account/ui/F;->eu(ILandroid/os/Bundle;)V

    return-void
.end method

.method private ew(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/F;->co:Lcom/xiaomi/passport/ui/C;

    iget-object v0, p0, Lcom/xiaomi/account/ui/F;->co:Lcom/xiaomi/passport/ui/C;

    new-instance v1, Lcom/xiaomi/account/ui/bu;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bu;-><init>(Lcom/xiaomi/account/ui/F;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/C;->xE(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/F;->co:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/F;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "oauth precessing"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private ex(Lcom/xiaomi/account/data/a;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f100004

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f100005

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f10002c

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string/jumbo v7, "acc_avatar_file_name"

    invoke-virtual {v6, v5, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/xiaomi/account/utils/p;->on(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/account/data/a;->lq()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " &#40;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/account/data/a;->lp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "&#41;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/xiaomi/account/data/a;->ln()Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v3

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v8, "&#183;"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    const-string/jumbo v1, "<br>"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/F;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/F;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v7, "%X"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-virtual {p1}, Lcom/xiaomi/account/data/a;->lk()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    const v0, 0x7f0c0194

    invoke-virtual {v1, v0, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0191

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/F;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/br;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/br;-><init>(Lcom/xiaomi/account/ui/F;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/bs;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bs;-><init>(Lcom/xiaomi/account/ui/F;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/bt;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bt;-><init>(Lcom/xiaomi/account/ui/F;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic ey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/ui/F;->ci:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ez(Lcom/xiaomi/account/ui/F;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/F;->cj:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public es(Lcom/xiaomi/account/XiaomiOAuthResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/F;->cp:Lcom/xiaomi/account/XiaomiOAuthResponse;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiui/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/F;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "client_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/F;->cj:Ljava/lang/String;

    const-string/jumbo v1, "redirect_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/F;->cq:Ljava/lang/String;

    const-string/jumbo v1, "response_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/F;->cr:Ljava/lang/String;

    const-string/jumbo v1, "scope"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/F;->cs:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/account/ui/G;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/account/ui/G;-><init>(Lcom/xiaomi/account/ui/F;Lcom/xiaomi/account/ui/G;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/F;->cl:Lcom/xiaomi/account/ui/G;

    iget-object v0, p0, Lcom/xiaomi/account/ui/F;->cl:Lcom/xiaomi/account/ui/G;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/G;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
