.class final Lcom/xiaomi/account/ui/aL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fA:Lcom/xiaomi/account/ui/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aL;->fA:Lcom/xiaomi/account/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/aL;->fA:Lcom/xiaomi/account/ui/l;

    iget-object v0, v0, Lcom/xiaomi/account/ui/l;->dg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/aL;->fA:Lcom/xiaomi/account/ui/l;

    iget-object v1, p0, Lcom/xiaomi/account/ui/aL;->fA:Lcom/xiaomi/account/ui/l;

    iget-object v1, v1, Lcom/xiaomi/account/ui/l;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/l;->gg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/aL;->fA:Lcom/xiaomi/account/ui/l;

    iget-object v0, v0, Lcom/xiaomi/account/ui/l;->dl:Lcom/xiaomi/account/ui/g;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/g;->notifyDataSetChanged()V

    goto :goto_0
.end method
