.class final Lcom/xiaomi/account/ui/aK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fz:Lcom/xiaomi/account/ui/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aK;->fz:Lcom/xiaomi/account/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/aK;->fz:Lcom/xiaomi/account/ui/l;

    iget-object v0, v0, Lcom/xiaomi/account/ui/l;->dg:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/account/ui/aK;->fz:Lcom/xiaomi/account/ui/l;

    iget-object v1, v1, Lcom/xiaomi/account/ui/l;->di:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/account/ui/aK;->fz:Lcom/xiaomi/account/ui/l;

    iget-object v2, v2, Lcom/xiaomi/account/ui/l;->dj:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/account/task/q;->kt(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
