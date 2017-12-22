.class public Lcom/xiaomi/account/ui/r;
.super Lcom/xiaomi/account/ui/x;
.source ""


# instance fields
.field private aR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/account/task/m;",
            ">;"
        }
    .end annotation
.end field

.field private aS:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/account/ui/x;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/account/ui/r;->aR:Ljava/util/List;

    return-void
.end method

.method private bW(Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/account/data/LockedDeviceInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/r;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lJ(Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;)Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lO()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/xiaomi/account/ui/aT;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/account/ui/aT;-><init>(Lcom/xiaomi/account/ui/r;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {p1}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lJ(Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;)Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/account/ui/r;->cW(Ljava/lang/String;Landroid/preference/Preference;)V

    return-void
.end method

.method private bX()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/r;->aR:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/task/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/m;->kb()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/task/m;->cancel(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/r;->aR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private bY(Lcom/xiaomi/account/task/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/account/task/m",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/account/task/m;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/xiaomi/account/ui/r;->aR:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private bZ(Ljava/util/ArrayList;Lcom/xiaomi/account/data/LockedDeviceInfo;)Lcom/xiaomi/account/widget/LockedDevicePreference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/account/data/LockedDeviceInfo;",
            ">;",
            "Lcom/xiaomi/account/data/LockedDeviceInfo;",
            ")",
            "Lcom/xiaomi/account/widget/LockedDevicePreference;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/account/widget/LockedDevicePreference;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/xiaomi/account/widget/LockedDevicePreference;-><init>(Landroid/app/Activity;Lcom/xiaomi/account/data/LockedDeviceInfo;)V

    new-instance v1, Lcom/xiaomi/account/ui/aS;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/account/ui/aS;-><init>(Lcom/xiaomi/account/ui/r;Lcom/xiaomi/account/data/LockedDeviceInfo;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/widget/LockedDevicePreference;->pA(Lcom/xiaomi/account/widget/a;)Lcom/xiaomi/account/widget/LockedDevicePreference;

    move-result-object v0

    return-object v0
.end method

.method private ca()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "query is device locked"

    new-instance v1, Lcom/xiaomi/account/task/n;

    invoke-direct {v1}, Lcom/xiaomi/account/task/n;-><init>()V

    new-instance v2, Lcom/xiaomi/account/ui/aW;

    invoke-direct {v2, p0}, Lcom/xiaomi/account/ui/aW;-><init>(Lcom/xiaomi/account/ui/r;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/task/n;->kg(Lcom/xiaomi/account/task/o;)Lcom/xiaomi/account/task/n;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/account/ui/aX;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/account/ui/aX;-><init>(Lcom/xiaomi/account/ui/r;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/task/n;->kh(Lcom/xiaomi/account/task/p;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/n;->build()Lcom/xiaomi/account/task/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/r;->bY(Lcom/xiaomi/account/task/m;)V

    return-void
.end method

.method private cb()V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "query locked devices"

    new-instance v1, Lcom/xiaomi/account/task/n;

    invoke-direct {v1}, Lcom/xiaomi/account/task/n;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/r;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c006f

    invoke-virtual {p0, v3}, Lcom/xiaomi/account/ui/r;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/account/task/n;->kf(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/xiaomi/account/task/n;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/task/n;->ki(Z)Lcom/xiaomi/account/task/n;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/account/ui/aU;

    invoke-direct {v2, p0}, Lcom/xiaomi/account/ui/aU;-><init>(Lcom/xiaomi/account/ui/r;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/task/n;->kg(Lcom/xiaomi/account/task/o;)Lcom/xiaomi/account/task/n;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/account/ui/aV;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/account/ui/aV;-><init>(Lcom/xiaomi/account/ui/r;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/task/n;->kh(Lcom/xiaomi/account/task/p;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/n;->build()Lcom/xiaomi/account/task/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/r;->bY(Lcom/xiaomi/account/task/m;)V

    return-void
.end method

.method private cc(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "set device lock switch flag"

    new-instance v1, Lcom/xiaomi/account/task/n;

    invoke-direct {v1}, Lcom/xiaomi/account/task/n;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/r;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0075

    invoke-virtual {p0, v3}, Lcom/xiaomi/account/ui/r;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/account/task/n;->kf(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/xiaomi/account/task/n;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/account/ui/aY;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/account/ui/aY;-><init>(Lcom/xiaomi/account/ui/r;Z)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/task/n;->kg(Lcom/xiaomi/account/task/o;)Lcom/xiaomi/account/task/n;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/account/ui/aZ;

    invoke-direct {v2, p0, p1, v0}, Lcom/xiaomi/account/ui/aZ;-><init>(Lcom/xiaomi/account/ui/r;ZLandroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/task/n;->kh(Lcom/xiaomi/account/task/p;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/n;->build()Lcom/xiaomi/account/task/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/r;->bY(Lcom/xiaomi/account/task/m;)V

    return-void
.end method

.method private cd(Lcom/xiaomi/account/data/LockedDeviceInfo;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/xiaomi/account/ui/VerifyPhoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_selected_locked_device_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/ui/r;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private ce(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/xiaomi/account/ui/VerifyPhoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_account_protection_switch"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/ui/r;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private cf(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/account/data/LockedDeviceInfo;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->values()[Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    move-result-object v2

    const/4 v0, 0x0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v4, v0}, Lcom/xiaomi/account/ui/r;->cg(Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cg(Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/account/data/LockedDeviceInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lJ(Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;)Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lM()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0, v3}, Lcom/xiaomi/account/ui/r;->cV(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v3}, Lcom/xiaomi/account/ui/r;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-nez v0, :cond_5

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lJ(Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;)Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lN()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/r;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    const/4 v0, 0x3

    if-ge v2, v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/data/LockedDeviceInfo;

    invoke-direct {p0, p2, v0}, Lcom/xiaomi/account/ui/r;->bZ(Ljava/util/ArrayList;Lcom/xiaomi/account/data/LockedDeviceInfo;)Lcom/xiaomi/account/widget/LockedDevicePreference;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/xiaomi/account/ui/r;->cW(Ljava/lang/String;Landroid/preference/Preference;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/r;->bW(Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;Ljava/util/ArrayList;)V

    :cond_4
    sget-object v0, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->lk:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/xiaomi/account/widget/TextPreference;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/account/widget/TextPreference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0179

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/widget/TextPreference;->setTitle(I)V

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic ch(Lcom/xiaomi/account/ui/r;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/r;->aS:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic ci(Lcom/xiaomi/account/ui/r;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/r;->cc(Z)V

    return-void
.end method

.method static synthetic cj(Lcom/xiaomi/account/ui/r;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/r;->ce(Z)V

    return-void
.end method

.method static synthetic ck(Lcom/xiaomi/account/ui/r;Lcom/xiaomi/account/data/LockedDeviceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/r;->cd(Lcom/xiaomi/account/data/LockedDeviceInfo;)V

    return-void
.end method

.method static synthetic cl(Lcom/xiaomi/account/ui/r;Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/r;->cg(Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic cm(Lcom/xiaomi/account/ui/r;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/r;->cf(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/account/ui/x;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/xiaomi/account/ui/r;->cb()V

    goto :goto_0

    :sswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/r;->ca()V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/r;->cb()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/account/ui/x;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/r;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "login_guard_switch"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/r;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/xiaomi/account/ui/r;->aS:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/xiaomi/account/ui/r;->aS:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/xiaomi/account/ui/aR;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/aR;-><init>(Lcom/xiaomi/account/ui/r;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/r;->ca()V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/r;->cb()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/r;->bX()V

    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onDestroy()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "login_guard_switch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/r;->cc(Z)V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xiaomi/account/ui/x;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onResume()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/r;->cS()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method protected w()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "AccountProtectionFragment"

    return-object v0
.end method
