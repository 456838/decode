.class final Lcom/xiaomi/passport/ui/aY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic vh:Lcom/xiaomi/passport/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aY;->vh:Lcom/xiaomi/passport/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/task/d;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/aY;->vh:Lcom/xiaomi/passport/ui/LoginActivity;

    invoke-virtual {v2}, Lcom/xiaomi/passport/ui/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaomi/passport/task/d;-><init>(Landroid/app/Application;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
