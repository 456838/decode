.class final Lcom/xiaomi/accounts/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Nq:Lcom/xiaomi/accounts/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/accounts/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accounts/v;->Nq:Lcom/xiaomi/accounts/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/accounts/v;->call()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method