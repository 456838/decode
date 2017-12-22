.class final Lcom/xiaomi/account/ui/aX;
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
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic fQ:Lcom/xiaomi/account/ui/r;

.field final synthetic fR:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/r;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aX;->fQ:Lcom/xiaomi/account/ui/r;

    iput-object p2, p0, Lcom/xiaomi/account/ui/aX;->fR:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iH(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/aX;->iI(Landroid/util/Pair;)V

    return-void
.end method

.method public iI(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/account/ui/aX;->fQ:Lcom/xiaomi/account/ui/r;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/aX;->fQ:Lcom/xiaomi/account/ui/r;

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

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/aX;->fQ:Lcom/xiaomi/account/ui/r;

    invoke-static {v0}, Lcom/xiaomi/account/ui/r;->ch(Lcom/xiaomi/account/ui/r;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/account/ui/aX;->fR:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query is device locked"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/account/ui/aX;->fQ:Lcom/xiaomi/account/ui/r;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v0}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->kp()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/account/ui/r;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
