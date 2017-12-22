.class public Lcom/xiaomi/account/widget/LockedDevicePreference;
.super Landroid/preference/Preference;
.source ""


# instance fields
.field private final nf:Landroid/app/Activity;

.field private final ng:Lcom/xiaomi/account/data/LockedDeviceInfo;

.field private nh:Landroid/content/DialogInterface$OnClickListener;

.field private ni:Lcom/xiaomi/account/widget/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/xiaomi/account/data/LockedDeviceInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/xiaomi/account/widget/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/widget/b;-><init>(Lcom/xiaomi/account/widget/LockedDevicePreference;)V

    iput-object v0, p0, Lcom/xiaomi/account/widget/LockedDevicePreference;->nh:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/xiaomi/account/widget/LockedDevicePreference;->nf:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xiaomi/account/widget/LockedDevicePreference;->ng:Lcom/xiaomi/account/data/LockedDeviceInfo;

    invoke-direct {p0, p2}, Lcom/xiaomi/account/widget/LockedDevicePreference;->pz(Lcom/xiaomi/account/data/LockedDeviceInfo;)V

    return-void
.end method

.method private pB()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/account/widget/LockedDevicePreference;->ng:Lcom/xiaomi/account/data/LockedDeviceInfo;

    if-nez v0, :cond_0

    const-string/jumbo v0, "LockedDevicePreference"

    const-string/jumbo v1, "null device info"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/account/widget/LockedDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/widget/LockedDevicePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/account/widget/LockedDevicePreference;->ng:Lcom/xiaomi/account/data/LockedDeviceInfo;

    invoke-virtual {v2}, Lcom/xiaomi/account/data/LockedDeviceInfo;->type()Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lJ(Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;)Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lK()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/xiaomi/account/widget/LockedDevicePreference;->px(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/high16 v2, 0x1040000

    invoke-direct {p0, v2}, Lcom/xiaomi/account/widget/LockedDevicePreference;->px(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/account/widget/LockedDevicePreference;->nh:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic pC(Lcom/xiaomi/account/widget/LockedDevicePreference;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/widget/LockedDevicePreference;->nf:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic pD(Lcom/xiaomi/account/widget/LockedDevicePreference;)Lcom/xiaomi/account/data/LockedDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/widget/LockedDevicePreference;->ng:Lcom/xiaomi/account/data/LockedDeviceInfo;

    return-object v0
.end method

.method static synthetic pE(Lcom/xiaomi/account/widget/LockedDevicePreference;)Lcom/xiaomi/account/widget/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/widget/LockedDevicePreference;->ni:Lcom/xiaomi/account/widget/a;

    return-object v0
.end method

.method static synthetic pF(Lcom/xiaomi/account/widget/LockedDevicePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/widget/LockedDevicePreference;->pv()V

    return-void
.end method

.method static synthetic pG(Lcom/xiaomi/account/widget/LockedDevicePreference;Landroid/app/Activity;Lcom/xiaomi/account/data/LockedDeviceInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/widget/LockedDevicePreference;->pw(Landroid/app/Activity;Lcom/xiaomi/account/data/LockedDeviceInfo;)V

    return-void
.end method

.method private pv()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/account/widget/LockedDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/widget/LockedDevicePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/widget/LockedDevicePreference;->ng:Lcom/xiaomi/account/data/LockedDeviceInfo;

    invoke-virtual {v1}, Lcom/xiaomi/account/data/LockedDeviceInfo;->type()Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lJ(Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;)Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lL()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xiaomi/account/widget/LockedDevicePreference;->px(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/widget/c;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/widget/c;-><init>(Lcom/xiaomi/account/widget/LockedDevicePreference;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private pw(Landroid/app/Activity;Lcom/xiaomi/account/data/LockedDeviceInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "delete lock device"

    new-instance v0, Lcom/xiaomi/account/task/n;

    invoke-direct {v0}, Lcom/xiaomi/account/task/n;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c006f

    invoke-direct {p0, v2}, Lcom/xiaomi/account/widget/LockedDevicePreference;->px(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/n;->kf(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/widget/d;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/account/widget/d;-><init>(Lcom/xiaomi/account/widget/LockedDevicePreference;Lcom/xiaomi/account/data/LockedDeviceInfo;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/n;->kg(Lcom/xiaomi/account/task/o;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/widget/e;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/widget/e;-><init>(Lcom/xiaomi/account/widget/LockedDevicePreference;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/n;->kh(Lcom/xiaomi/account/task/p;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/n;->build()Lcom/xiaomi/account/task/m;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/m;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private final px(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/account/widget/LockedDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final varargs py(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/account/widget/LockedDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pz(Lcom/xiaomi/account/data/LockedDeviceInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/account/data/LockedDeviceInfo;->mf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/account/data/LockedDeviceInfo;->mg()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/account/data/LockedDeviceInfo;->mh()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c017b

    invoke-direct {p0, v1}, Lcom/xiaomi/account/widget/LockedDevicePreference;->px(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaomi/account/widget/LockedDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/account/data/LockedDeviceInfo;->mi()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0c017a

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/account/widget/LockedDevicePreference;->py(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/widget/LockedDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/account/data/LockedDeviceInfo;->mf()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    invoke-direct {p0}, Lcom/xiaomi/account/widget/LockedDevicePreference;->pB()V

    return-void
.end method

.method public pA(Lcom/xiaomi/account/widget/a;)Lcom/xiaomi/account/widget/LockedDevicePreference;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/widget/LockedDevicePreference;->ni:Lcom/xiaomi/account/widget/a;

    return-object p0
.end method
