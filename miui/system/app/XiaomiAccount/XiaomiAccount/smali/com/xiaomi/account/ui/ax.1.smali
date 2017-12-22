.class final Lcom/xiaomi/account/ui/ax;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/utils/h;


# instance fields
.field final synthetic fi:Lcom/xiaomi/account/ui/aw;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/ax;->fi:Lcom/xiaomi/account/ui/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iy(Z)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/xiaomi/a/a/a;->aoI()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/ax;->fi:Lcom/xiaomi/account/ui/aw;

    iget-object v1, v1, Lcom/xiaomi/account/ui/aw;->fh:Lcom/xiaomi/account/ui/h;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/account/ui/h;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/ax;->fi:Lcom/xiaomi/account/ui/aw;

    iget-object v0, v0, Lcom/xiaomi/account/ui/aw;->fh:Lcom/xiaomi/account/ui/h;

    invoke-virtual {v0, v1, v1}, Lcom/xiaomi/account/ui/h;->aB(ZZ)V

    goto :goto_0
.end method
