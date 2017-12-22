.class public Lcom/xiaomi/passport/task/i;
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
.field protected final Cc:Landroid/app/Activity;

.field private final Cd:Ljava/lang/Runnable;

.field private final Ce:Ljava/lang/Runnable;

.field private Cf:Lcom/xiaomi/passport/ui/C;

.field private final Cg:Ljava/lang/String;

.field private final Ch:Lcom/xiaomi/passport/task/k;

.field private final Ci:Ljava/lang/Runnable;

.field private final Cj:Lcom/xiaomi/passport/task/l;


# direct methods
.method protected constructor <init>(Lcom/xiaomi/passport/task/j;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/passport/task/j;->Hl(Lcom/xiaomi/passport/task/j;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/i;->Cc:Landroid/app/Activity;

    invoke-static {p1}, Lcom/xiaomi/passport/task/j;->Ho(Lcom/xiaomi/passport/task/j;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/i;->Cg:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/task/j;->Hp(Lcom/xiaomi/passport/task/j;)Lcom/xiaomi/passport/task/k;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/i;->Ch:Lcom/xiaomi/passport/task/k;

    invoke-static {p1}, Lcom/xiaomi/passport/task/j;->Hq(Lcom/xiaomi/passport/task/j;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/i;->Ci:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaomi/passport/task/j;->Hn(Lcom/xiaomi/passport/task/j;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/i;->Ce:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaomi/passport/task/j;->Hr(Lcom/xiaomi/passport/task/j;)Lcom/xiaomi/passport/task/l;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/i;->Cj:Lcom/xiaomi/passport/task/l;

    invoke-static {p1}, Lcom/xiaomi/passport/task/j;->Hm(Lcom/xiaomi/passport/task/j;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/i;->Cd:Ljava/lang/Runnable;

    return-void
.end method

.method private Hb()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Cf:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Cf:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Cf:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Cf:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs Gu([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Ch:Lcom/xiaomi/passport/task/k;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Ch:Lcom/xiaomi/passport/task/k;

    invoke-interface {v0}, Lcom/xiaomi/passport/task/k;->run()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected Gx(Ljava/lang/Integer;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/task/i;->Hb()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Cc:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/task/i;->Hc(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method protected Hc(Landroid/app/Activity;I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const v0, 0x7f0c0096

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/passport/task/i;->Cj:Lcom/xiaomi/passport/task/l;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/xiaomi/passport/task/i;->Cj:Lcom/xiaomi/passport/task/l;

    invoke-interface {v1, v0}, Lcom/xiaomi/passport/task/l;->yz(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Ci:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Ci:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Ce:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Ce:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_3
    :pswitch_3
    const v0, 0x7f0c0093

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0c0091

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0c0095

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0c0092

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0c0090

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0c008e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0c001e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0c008c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Cd:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Cd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_4
    const v0, 0x7f0c0046

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/passport/task/i;->He(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_9
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method protected Hd(Ljava/lang/Integer;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/task/i;->Hb()V

    return-void
.end method

.method protected He(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    const v1, 0x7f0c0086

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xG(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->xC(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "register_fail_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/task/i;->Gu([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/task/i;->Hd(Ljava/lang/Integer;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/task/i;->Gx(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    new-instance v1, Lcom/xiaomi/passport/ui/D;

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Cg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Cg:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/i;->Cf:Lcom/xiaomi/passport/ui/C;

    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Cf:Lcom/xiaomi/passport/ui/C;

    new-instance v1, Lcom/xiaomi/passport/task/p;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/task/p;-><init>(Lcom/xiaomi/passport/task/i;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/C;->xE(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Cf:Lcom/xiaomi/passport/ui/C;

    iget-object v1, p0, Lcom/xiaomi/passport/task/i;->Cc:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "RegRelatedProgress"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/task/i;->Cc:Landroid/app/Activity;

    const v2, 0x7f0c0071

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
