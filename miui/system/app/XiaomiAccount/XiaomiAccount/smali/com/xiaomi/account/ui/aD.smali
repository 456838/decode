.class final Lcom/xiaomi/account/ui/aD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fp:Lcom/xiaomi/account/ui/k;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/k;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aD;->fp:Lcom/xiaomi/account/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/aD;->fp:Lcom/xiaomi/account/ui/k;

    iget-object v0, v0, Lcom/xiaomi/account/ui/k;->dg:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/account/ui/aD;->fp:Lcom/xiaomi/account/ui/k;

    iget-object v1, v1, Lcom/xiaomi/account/ui/k;->di:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/account/task/q;->ks(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
