.class Lcom/xiaomi/mistatistic/sdk/a/I;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic ahy:Lcom/xiaomi/mistatistic/sdk/a/D;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/D;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/I;->ahy:Lcom/xiaomi/mistatistic/sdk/a/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/I;->ahy:Lcom/xiaomi/mistatistic/sdk/a/D;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/D;->ark(Lcom/xiaomi/mistatistic/sdk/a/D;Z)Z

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/I;->ahy:Lcom/xiaomi/mistatistic/sdk/a/D;

    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/a$a;->atD(Landroid/os/IBinder;)Lcom/xiaomi/mistatistic/sdk/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/D;->arl(Lcom/xiaomi/mistatistic/sdk/a/D;Lcom/xiaomi/mistatistic/sdk/a;)Lcom/xiaomi/mistatistic/sdk/a;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/I;->ahy:Lcom/xiaomi/mistatistic/sdk/a/D;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/D;->ark(Lcom/xiaomi/mistatistic/sdk/a/D;Z)Z

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/I;->ahy:Lcom/xiaomi/mistatistic/sdk/a/D;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/D;->arl(Lcom/xiaomi/mistatistic/sdk/a/D;Lcom/xiaomi/mistatistic/sdk/a;)Lcom/xiaomi/mistatistic/sdk/a;

    return-void
.end method
