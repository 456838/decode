.class final Lcom/xiaomi/account/ui/ck;
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
        "Lcom/xiaomi/account/utils/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic hK:Lcom/xiaomi/account/ui/R;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/R;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/ck;->hK:Lcom/xiaomi/account/ui/R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iH(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/utils/r;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/ck;->iW(Lcom/xiaomi/account/utils/r;)V

    return-void
.end method

.method public iW(Lcom/xiaomi/account/utils/r;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/ck;->hK:Lcom/xiaomi/account/ui/R;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/R;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/account/ui/ck;->hK:Lcom/xiaomi/account/ui/R;

    invoke-static {v0, p1}, Lcom/xiaomi/account/ui/R;->hu(Lcom/xiaomi/account/ui/R;Lcom/xiaomi/account/utils/r;)V

    return-void
.end method
