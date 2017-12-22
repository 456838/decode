.class final Lcom/xiaomi/account/ui/as;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fd:Lcom/xiaomi/account/ui/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/as;->fd:Lcom/xiaomi/account/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/account/ui/as;->fd:Lcom/xiaomi/account/ui/f;

    iget-object v0, v0, Lcom/xiaomi/account/ui/f;->dg:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/account/ui/as;->fd:Lcom/xiaomi/account/ui/f;

    iget-object v1, v1, Lcom/xiaomi/account/ui/f;->di:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/account/ui/as;->fd:Lcom/xiaomi/account/ui/f;

    iget-object v2, v2, Lcom/xiaomi/account/ui/f;->dj:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/account/ui/as;->fd:Lcom/xiaomi/account/ui/f;

    iget-object v3, v3, Lcom/xiaomi/account/ui/f;->df:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/account/task/q;->kr(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
