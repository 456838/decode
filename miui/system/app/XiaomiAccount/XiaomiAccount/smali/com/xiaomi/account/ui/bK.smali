.class final Lcom/xiaomi/account/ui/bK;
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
        "Lcom/xiaomi/account/data/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ha:Lcom/xiaomi/account/ui/LoginActivity;

.field final synthetic hb:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/LoginActivity;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bK;->ha:Lcom/xiaomi/account/ui/LoginActivity;

    iput-object p2, p0, Lcom/xiaomi/account/ui/bK;->hb:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iH(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/data/c;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/bK;->iR(Lcom/xiaomi/account/data/c;)V

    return-void
.end method

.method public iR(Lcom/xiaomi/account/data/c;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bK;->ha:Lcom/xiaomi/account/ui/LoginActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/LoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/bK;->ha:Lcom/xiaomi/account/ui/LoginActivity;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bK;->hb:Ljava/lang/Runnable;

    invoke-static {v0, p1, v1}, Lcom/xiaomi/account/ui/LoginActivity;->fY(Lcom/xiaomi/account/ui/LoginActivity;Lcom/xiaomi/account/data/c;Ljava/lang/Runnable;)V

    return-void
.end method
