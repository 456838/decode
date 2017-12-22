.class final Lcom/xiaomi/accounts/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Nj:Lcom/xiaomi/accounts/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/accounts/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accounts/s;->Nj:Lcom/xiaomi/accounts/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accounts/s;->Nj:Lcom/xiaomi/accounts/c;

    invoke-virtual {v0}, Lcom/xiaomi/accounts/c;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/xiaomi/accounts/s;->Nj:Lcom/xiaomi/accounts/c;

    const-string/jumbo v1, "remote exception"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/accounts/c;->Ry(ILjava/lang/String;)V

    goto :goto_0
.end method
