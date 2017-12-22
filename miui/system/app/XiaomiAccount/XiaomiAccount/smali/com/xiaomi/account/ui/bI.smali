.class final Lcom/xiaomi/account/ui/bI;
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
        "Lcom/xiaomi/account/data/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic gW:Lcom/xiaomi/account/ui/LoginActivity;

.field final synthetic gX:Lcom/xiaomi/account/n;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/LoginActivity;Lcom/xiaomi/account/n;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bI;->gW:Lcom/xiaomi/account/ui/LoginActivity;

    iput-object p2, p0, Lcom/xiaomi/account/ui/bI;->gX:Lcom/xiaomi/account/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/xiaomi/account/data/c;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bI;->gX:Lcom/xiaomi/account/n;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bI;->gW:Lcom/xiaomi/account/ui/LoginActivity;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/n;->sf(Landroid/content/Context;)Lcom/xiaomi/account/data/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/bI;->call()Lcom/xiaomi/account/data/c;

    move-result-object v0

    return-object v0
.end method
