.class Lcom/xiaomi/phonenum/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic aft:Lcom/xiaomi/phonenum/b;

.field final synthetic afu:Lcom/xiaomi/phonenum/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/d;Lcom/xiaomi/phonenum/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/g;->afu:Lcom/xiaomi/phonenum/d;

    iput-object p2, p0, Lcom/xiaomi/phonenum/g;->aft:Lcom/xiaomi/phonenum/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/phonenum/g;->afu:Lcom/xiaomi/phonenum/d;

    invoke-static {p2}, Lcom/xiaomi/simactivate/service/IPhoneNumService$Stub;->atJ(Landroid/os/IBinder;)Lcom/xiaomi/simactivate/service/IPhoneNumService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/phonenum/d;->aoE(Lcom/xiaomi/phonenum/d;Lcom/xiaomi/simactivate/service/IPhoneNumService;)Lcom/xiaomi/simactivate/service/IPhoneNumService;

    iget-object v0, p0, Lcom/xiaomi/phonenum/g;->afu:Lcom/xiaomi/phonenum/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/phonenum/d;->aoF(Lcom/xiaomi/phonenum/d;Z)Z

    iget-object v0, p0, Lcom/xiaomi/phonenum/g;->afu:Lcom/xiaomi/phonenum/d;

    invoke-static {v0}, Lcom/xiaomi/phonenum/d;->aoG(Lcom/xiaomi/phonenum/d;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/xiaomi/phonenum/g;->aft:Lcom/xiaomi/phonenum/b;

    sget-object v1, Lcom/xiaomi/phonenum/bean/Error;->aca:Lcom/xiaomi/phonenum/bean/Error;

    invoke-interface {v0, v1}, Lcom/xiaomi/phonenum/b;->LG(Lcom/xiaomi/phonenum/bean/Error;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
