.class final Lcom/xiaomi/account/ui/aT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic fK:Lcom/xiaomi/account/ui/r;

.field final synthetic fL:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/r;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aT;->fK:Lcom/xiaomi/account/ui/r;

    iput-object p2, p0, Lcom/xiaomi/account/ui/aT;->fL:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/xiaomi/account/ui/aT;->fL:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/xiaomi/account/data/j;->mA(Ljava/util/ArrayList;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/account/ui/aT;->fK:Lcom/xiaomi/account/ui/r;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/xiaomi/account/ui/LockedDeviceListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/aT;->fK:Lcom/xiaomi/account/ui/r;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/account/ui/aT;->fK:Lcom/xiaomi/account/ui/r;

    invoke-virtual {v1, v0, v3}, Lcom/xiaomi/account/ui/r;->startActivityForResult(Landroid/content/Intent;I)V

    return v3
.end method
