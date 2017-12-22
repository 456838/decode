.class public Lcom/xiaomi/passport/utils/f;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Df(Landroid/app/FragmentManager;ILandroid/app/Fragment;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/passport/utils/f;->Dg(Landroid/app/FragmentManager;ILandroid/app/Fragment;)Landroid/app/Fragment;

    return-void
.end method

.method public static Dg(Landroid/app/FragmentManager;ILandroid/app/Fragment;)Landroid/app/Fragment;
    .locals 2

    invoke-virtual {p2}, Landroid/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-object p2

    :cond_0
    return-object v1
.end method
