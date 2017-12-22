.class final Lcom/xiaomi/account/ui/be;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/widget/a;


# instance fields
.field final synthetic gg:Lcom/xiaomi/account/ui/LockedDeviceListActivity;

.field final synthetic gh:Lcom/xiaomi/account/data/LockedDeviceInfo;

.field final synthetic gi:Lcom/xiaomi/account/widget/LockedDevicePreference;

.field final synthetic gj:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/LockedDeviceListActivity;Lcom/xiaomi/account/data/LockedDeviceInfo;Lcom/xiaomi/account/widget/LockedDevicePreference;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/be;->gg:Lcom/xiaomi/account/ui/LockedDeviceListActivity;

    iput-object p2, p0, Lcom/xiaomi/account/ui/be;->gh:Lcom/xiaomi/account/data/LockedDeviceInfo;

    iput-object p3, p0, Lcom/xiaomi/account/ui/be;->gi:Lcom/xiaomi/account/widget/LockedDevicePreference;

    iput-object p4, p0, Lcom/xiaomi/account/ui/be;->gj:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iF(Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/xiaomi/account/ui/be;->gg:Lcom/xiaomi/account/ui/LockedDeviceListActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/LockedDeviceListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jw:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {p1, v0}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/be;->gg:Lcom/xiaomi/account/ui/LockedDeviceListActivity;

    iget-object v1, p0, Lcom/xiaomi/account/ui/be;->gh:Lcom/xiaomi/account/data/LockedDeviceInfo;

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/LockedDeviceListActivity;->cR(Lcom/xiaomi/account/ui/LockedDeviceListActivity;Lcom/xiaomi/account/data/LockedDeviceInfo;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ko()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/account/ui/be;->gg:Lcom/xiaomi/account/ui/LockedDeviceListActivity;

    const v1, 0x7f0c0182

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/be;->gg:Lcom/xiaomi/account/ui/LockedDeviceListActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/LockedDeviceListActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/be;->gi:Lcom/xiaomi/account/widget/LockedDevicePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/xiaomi/account/ui/be;->gj:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/account/ui/be;->gh:Lcom/xiaomi/account/data/LockedDeviceInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/account/ui/be;->gg:Lcom/xiaomi/account/ui/LockedDeviceListActivity;

    invoke-virtual {p1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->kp()I

    move-result v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
