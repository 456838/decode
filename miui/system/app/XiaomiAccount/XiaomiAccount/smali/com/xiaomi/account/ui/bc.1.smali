.class final Lcom/xiaomi/account/ui/bc;
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
.field final synthetic gc:Lcom/xiaomi/account/ui/s;

.field final synthetic gd:Ljava/lang/String;

.field final synthetic ge:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/s;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bc;->gc:Lcom/xiaomi/account/ui/s;

    iput-object p2, p0, Lcom/xiaomi/account/ui/bc;->gd:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaomi/account/ui/bc;->ge:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iH(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/bc;->iL(Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;)V

    return-void
.end method

.method public iL(Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/bc;->gc:Lcom/xiaomi/account/ui/s;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/bc;->gc:Lcom/xiaomi/account/ui/s;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ko()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bc;->gc:Lcom/xiaomi/account/ui/s;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bc;->gd:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/xiaomi/account/ui/bc;->ge:Z

    invoke-static {v0, v1, v2}, Lcom/xiaomi/account/ui/s;->cs(Lcom/xiaomi/account/ui/s;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/xiaomi/account/ui/bc;->ge:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/account/ui/bc;->gc:Lcom/xiaomi/account/ui/s;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/account/ui/bc;->gc:Lcom/xiaomi/account/ui/s;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->kp()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
