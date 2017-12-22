.class public Lcom/xiaomi/account/ui/MiPayInfoActivity;
.super Lmiui/preference/PreferenceActivity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/account/ui/R;

    invoke-direct {v0}, Lcom/xiaomi/account/ui/R;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/MiPayInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x1020002

    invoke-static {v1, v2, v0}, Lcom/xiaomi/passport/utils/f;->Df(Landroid/app/FragmentManager;ILandroid/app/Fragment;)V

    return-void
.end method
