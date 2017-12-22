.class public Lcom/xiaomi/account/ui/f;
.super Lcom/xiaomi/account/ui/L;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/L;-><init>()V

    return-void
.end method


# virtual methods
.method protected aA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/xiaomi/account/ui/f;->gg(Ljava/lang/String;)V

    return-void
.end method

.method protected ay()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/f;->dg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/xiaomi/account/task/r;

    invoke-direct {v0}, Lcom/xiaomi/account/task/r;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/f;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c006f

    invoke-virtual {p0, v2}, Lcom/xiaomi/account/ui/f;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/r;->kF(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/xiaomi/account/task/r;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaomi/account/task/r;->kG(Z)Lcom/xiaomi/account/task/r;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/as;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/as;-><init>(Lcom/xiaomi/account/ui/f;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/r;->kD(Ljava/lang/Runnable;)Lcom/xiaomi/account/task/r;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/at;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/at;-><init>(Lcom/xiaomi/account/ui/f;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/r;->kE(Ljava/lang/Runnable;)Lcom/xiaomi/account/task/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/r;->build()Lcom/xiaomi/account/task/q;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/f;->dh:Lcom/xiaomi/account/task/q;

    iget-object v0, p0, Lcom/xiaomi/account/ui/f;->dh:Lcom/xiaomi/account/task/q;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/q;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected az()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/f;->dd:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/f;->de:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaomi/account/ui/f;->df:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
