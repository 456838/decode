.class final Lcom/xiaomi/account/ui/aV;
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
        "Landroid/util/Pair",
        "<",
        "Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;",
        "Ljava/util/Map",
        "<",
        "Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xiaomi/account/data/LockedDeviceInfo;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic fN:Lcom/xiaomi/account/ui/r;

.field final synthetic fO:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/r;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aV;->fN:Lcom/xiaomi/account/ui/r;

    iput-object p2, p0, Lcom/xiaomi/account/ui/aV;->fO:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iG(Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;",
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/account/data/LockedDeviceInfo;",
            ">;>;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/aV;->fN:Lcom/xiaomi/account/ui/r;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/aV;->fN:Lcom/xiaomi/account/ui/r;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v0}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ko()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/xiaomi/account/ui/aV;->fO:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "query locked devices"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/account/ui/aV;->fN:Lcom/xiaomi/account/ui/r;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v0}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->kp()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/account/ui/r;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/account/ui/aV;->fN:Lcom/xiaomi/account/ui/r;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v0}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ko()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    :goto_0
    invoke-static {v2, v0}, Lcom/xiaomi/account/ui/r;->cm(Lcom/xiaomi/account/ui/r;Ljava/util/Map;)V

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic iH(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/aV;->iG(Landroid/util/Pair;)V

    return-void
.end method
