.class Lcom/xiaomi/passport/ui/v;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private rb:Ljava/lang/String;

.field private rc:Lcom/xiaomi/passport/ui/C;

.field final synthetic rd:Lcom/xiaomi/passport/ui/u;


# direct methods
.method protected constructor <init>(Lcom/xiaomi/passport/ui/u;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/passport/ui/v;->rb:Ljava/lang/String;

    return-void
.end method

.method private vP(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    const v1, 0x7f0c0089

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/u;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    const v1, 0x7f0c0061

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/u;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    const v1, 0x7f0c0093

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/u;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    const v1, 0x7f0c0095

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/u;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    const v1, 0x7f0c0096

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/u;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/v;->vO([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/v;->vQ(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0075

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xJ(Z)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/v;->rc:Lcom/xiaomi/passport/ui/C;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/v;->rc:Lcom/xiaomi/passport/ui/C;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "Setting progress"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected varargs vO([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/u;->vJ(Lcom/xiaomi/passport/ui/u;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/v;->rb:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-static {v2}, Lcom/xiaomi/passport/ui/u;->vD(Lcom/xiaomi/passport/ui/u;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-static {v3}, Lcom/xiaomi/passport/ui/u;->vE(Lcom/xiaomi/passport/ui/u;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-static {v4}, Lcom/xiaomi/passport/ui/u;->vF(Lcom/xiaomi/passport/ui/u;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/accountsdk/account/b;->abs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "InputRegisterPasswordFr"

    const-string/jumbo v2, "ResetPasswordTask error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "InputRegisterPasswordFr"

    const-string/jumbo v2, "ResetPasswordTask error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "InputRegisterPasswordFr"

    const-string/jumbo v2, "ResetPasswordTask error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_3
    move-exception v0

    const-string/jumbo v1, "InputRegisterPasswordFr"

    const-string/jumbo v2, "ResetPasswordTask error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_4
    move-exception v0

    const-string/jumbo v1, "InputRegisterPasswordFr"

    const-string/jumbo v2, "ResetPasswordTask error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected vQ(Ljava/lang/Integer;)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/passport/ui/v;->rc:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    const-string/jumbo v1, "success_set_password"

    iget-object v2, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-static {v2}, Lcom/xiaomi/passport/ui/u;->vG(Lcom/xiaomi/passport/ui/u;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/u;->ug(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-static {v1}, Lcom/xiaomi/passport/ui/u;->vJ(Lcom/xiaomi/passport/ui/u;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/v;->rb:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-static {v3}, Lcom/xiaomi/passport/ui/u;->vH(Lcom/xiaomi/passport/ui/u;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-static {v4}, Lcom/xiaomi/passport/ui/u;->vI(Lcom/xiaomi/passport/ui/u;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/passport/utils/x;->FG(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    const v2, 0x7f0c0088

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/ui/u;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xG(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xiaomi/passport/ui/v;->vP(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/xiaomi/passport/ui/au;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/au;-><init>(Lcom/xiaomi/passport/ui/v;)V

    const v2, 0x7f0c006b

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/passport/ui/C;->xC(ILandroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "Reset password alert"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void

    :cond_1
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->xC(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
