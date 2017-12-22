.class public Lcom/xiaomi/passport/ui/BaseActivity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/ui/g;


# instance fields
.field oW:Lcom/xiaomi/passport/ui/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dL()Lcom/xiaomi/passport/ui/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/BaseActivity;->oW:Lcom/xiaomi/passport/ui/a;

    return-object v0
.end method

.method public dM(Lcom/xiaomi/passport/ui/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/BaseActivity;->oW:Lcom/xiaomi/passport/ui/a;

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/BaseActivity;->oW:Lcom/xiaomi/passport/ui/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/BaseActivity;->oW:Lcom/xiaomi/passport/ui/a;

    invoke-interface {v0}, Lcom/xiaomi/passport/ui/a;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/passport/b;->OO()Lcom/xiaomi/passport/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/passport/b;->OO()Lcom/xiaomi/passport/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/xiaomi/passport/a/d;->rA(Landroid/app/Activity;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/e;->acH(Landroid/app/Application;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->sS()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->sU()V

    :cond_1
    invoke-static {}, Lcom/xiaomi/passport/b;->OO()Lcom/xiaomi/passport/a/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/xiaomi/passport/b;->OO()Lcom/xiaomi/passport/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/xiaomi/passport/a/d;->rz(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/a/a;->sB()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/a/a;->sC(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected sP()Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/xiaomi/passport/utils/x;->FC(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaomi/passport/ui/BaseActivity;->sR(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected sQ(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/xiaomi/passport/ui/BaseActivity;->sR(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected sR(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/xiaomi/passport/utils/x;->FF(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/passport/utils/o;->Ej(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/BaseActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->finish()V

    return-void
.end method

.method public sS()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/xiaomi/passport/b;->OO()Lcom/xiaomi/passport/a/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/passport/b;->OO()Lcom/xiaomi/passport/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/xiaomi/passport/a/d;->rB(Landroid/app/Activity;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->sT()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sT()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected sU()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/g;->ahs(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/xiaomi/accountsdk/utils/n;

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaomi/accountsdk/utils/n;-><init>(III)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/n;->ahV(Lcom/xiaomi/accountsdk/utils/n;Z)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/g;->aht(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/xiaomi/accountsdk/utils/o;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/o;-><init>(II)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/o;->ahZ(Lcom/xiaomi/accountsdk/utils/o;Z)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_3

    :cond_2
    const-string/jumbo v1, "android.view.MiuiWindowManager$LayoutParams"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Window;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setExtraFlags"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance v0, Lcom/xiaomi/passport/utils/m;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/utils/m;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/utils/m;->DO(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/utils/m;->DP(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/utils/m;->DQ(I)V

    :goto_1
    return-void

    :cond_3
    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v2, "FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-class v2, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const-class v1, Landroid/view/View;

    const-string/jumbo v2, "SYSTEM_UI_FLAG_LIGHT_STATUS_BAR"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-class v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public setContentView(I)V
    .locals 2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/BaseActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->sS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->sS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
