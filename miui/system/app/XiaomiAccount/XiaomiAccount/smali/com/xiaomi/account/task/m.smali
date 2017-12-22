.class public Lcom/xiaomi/account/task/m;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private ja:Z

.field private final jb:Ljava/lang/String;

.field private final jc:Lcom/xiaomi/account/task/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/account/task/o",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final jd:Landroid/app/FragmentManager;

.field private je:Lcom/xiaomi/passport/ui/C;

.field private final jf:Lcom/xiaomi/account/task/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/account/task/p",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/xiaomi/account/task/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/account/task/n",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/account/task/n;->km(Lcom/xiaomi/account/task/n;)Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/task/m;->jd:Landroid/app/FragmentManager;

    invoke-static {p1}, Lcom/xiaomi/account/task/n;->kk(Lcom/xiaomi/account/task/n;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/task/m;->jb:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/account/task/n;->kj(Lcom/xiaomi/account/task/n;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/account/task/m;->ja:Z

    invoke-static {p1}, Lcom/xiaomi/account/task/n;->kl(Lcom/xiaomi/account/task/n;)Lcom/xiaomi/account/task/o;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/task/m;->jc:Lcom/xiaomi/account/task/o;

    invoke-static {p1}, Lcom/xiaomi/account/task/n;->kn(Lcom/xiaomi/account/task/n;)Lcom/xiaomi/account/task/p;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/task/m;->jf:Lcom/xiaomi/account/task/p;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/task/n;Lcom/xiaomi/account/task/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/task/m;-><init>(Lcom/xiaomi/account/task/n;)V

    return-void
.end method

.method private kc()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/task/m;->je:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/task/m;->je:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/task/m;->je:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/task/m;->je:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    iput-object v1, p0, Lcom/xiaomi/account/task/m;->je:Lcom/xiaomi/passport/ui/C;

    goto :goto_0
.end method

.method private ke()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/task/m;->jd:Landroid/app/FragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/task/m;->jb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    iget-object v1, p0, Lcom/xiaomi/account/task/m;->jb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/task/m;->je:Lcom/xiaomi/passport/ui/C;

    iget-object v0, p0, Lcom/xiaomi/account/task/m;->je:Lcom/xiaomi/passport/ui/C;

    new-instance v1, Lcom/xiaomi/account/task/B;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/task/B;-><init>(Lcom/xiaomi/account/task/m;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/C;->xE(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/xiaomi/account/task/m;->je:Lcom/xiaomi/passport/ui/C;

    iget-boolean v1, p0, Lcom/xiaomi/account/task/m;->ja:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/C;->setCancelable(Z)V

    iget-object v0, p0, Lcom/xiaomi/account/task/m;->je:Lcom/xiaomi/passport/ui/C;

    iget-object v1, p0, Lcom/xiaomi/account/task/m;->jd:Landroid/app/FragmentManager;

    const-string/jumbo v2, "SimpleAsyncTask"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/task/m;->kd([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public kb()Z
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/account/task/m;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected varargs kd([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/task/m;->jc:Lcom/xiaomi/account/task/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/task/m;->jc:Lcom/xiaomi/account/task/o;

    invoke-interface {v0}, Lcom/xiaomi/account/task/o;->run()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/xiaomi/account/task/m;->kc()V

    invoke-static {}, Lcom/xiaomi/passport/utils/b;->Da()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/account/task/m;->kc()V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/account/task/m;->jf:Lcom/xiaomi/account/task/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/task/m;->jf:Lcom/xiaomi/account/task/p;

    invoke-interface {v0, p1}, Lcom/xiaomi/account/task/p;->iH(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/passport/utils/b;->Da()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    invoke-direct {p0}, Lcom/xiaomi/account/task/m;->ke()V

    invoke-static {}, Lcom/xiaomi/passport/utils/b;->Db()V

    return-void
.end method
