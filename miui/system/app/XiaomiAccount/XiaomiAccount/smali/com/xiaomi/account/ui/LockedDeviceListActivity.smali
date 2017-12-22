.class public Lcom/xiaomi/account/ui/LockedDeviceListActivity;
.super Lmiui/preference/PreferenceActivity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private cP(Ljava/util/ArrayList;Lcom/xiaomi/account/data/LockedDeviceInfo;)Lcom/xiaomi/account/widget/LockedDevicePreference;
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

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/account/widget/LockedDevicePreference;-><init>(Landroid/app/Activity;Lcom/xiaomi/account/data/LockedDeviceInfo;)V

    new-instance v1, Lcom/xiaomi/account/ui/be;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/xiaomi/account/ui/be;-><init>(Lcom/xiaomi/account/ui/LockedDeviceListActivity;Lcom/xiaomi/account/data/LockedDeviceInfo;Lcom/xiaomi/account/widget/LockedDevicePreference;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/widget/LockedDevicePreference;->pA(Lcom/xiaomi/account/widget/a;)Lcom/xiaomi/account/widget/LockedDevicePreference;

    return-object v0
.end method

.method private cQ(Lcom/xiaomi/account/data/LockedDeviceInfo;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/account/ui/VerifyPhoneActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_selected_locked_device_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LockedDeviceListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/ui/LockedDeviceListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic cR(Lcom/xiaomi/account/ui/LockedDeviceListActivity;Lcom/xiaomi/account/data/LockedDeviceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/LockedDeviceListActivity;->cQ(Lcom/xiaomi/account/data/LockedDeviceInfo;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/LockedDeviceListActivity;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/xiaomi/account/data/j;->mB()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LockedDeviceListActivity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LockedDeviceListActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/data/LockedDeviceInfo;

    invoke-virtual {v0}, Lcom/xiaomi/account/data/LockedDeviceInfo;->type()Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lJ(Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;)Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lN()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/data/LockedDeviceInfo;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LockedDeviceListActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/account/ui/LockedDeviceListActivity;->cP(Ljava/util/ArrayList;Lcom/xiaomi/account/data/LockedDeviceInfo;)Lcom/xiaomi/account/widget/LockedDevicePreference;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/account/data/j;->mA(Ljava/util/ArrayList;)V

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method
