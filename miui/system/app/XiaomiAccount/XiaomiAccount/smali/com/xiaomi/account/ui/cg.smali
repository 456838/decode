.class final Lcom/xiaomi/account/ui/cg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/account/task/p",
        "<",
        "Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic hF:Lcom/xiaomi/account/ui/O;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/O;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/cg;->hF:Lcom/xiaomi/account/ui/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iH(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/cg;->iT(Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;)V

    return-void
.end method

.method public iT(Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/cg;->hF:Lcom/xiaomi/account/ui/O;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/O;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/cg;->hF:Lcom/xiaomi/account/ui/O;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/O;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ko()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/cg;->hF:Lcom/xiaomi/account/ui/O;

    invoke-static {v0}, Lcom/xiaomi/account/ui/O;->gS(Lcom/xiaomi/account/ui/O;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/cg;->hF:Lcom/xiaomi/account/ui/O;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/O;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0185

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/account/ui/cg;->hF:Lcom/xiaomi/account/ui/O;

    iget-object v1, p0, Lcom/xiaomi/account/ui/cg;->hF:Lcom/xiaomi/account/ui/O;

    invoke-virtual {p1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->kp()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/ui/O;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/O;->gT(Lcom/xiaomi/account/ui/O;Ljava/lang/String;)V

    goto :goto_0
.end method
