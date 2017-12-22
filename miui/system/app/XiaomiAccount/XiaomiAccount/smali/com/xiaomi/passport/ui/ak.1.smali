.class final Lcom/xiaomi/passport/ui/ak;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic tY:Lcom/xiaomi/passport/ui/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/ak;->tY:Lcom/xiaomi/passport/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ak;->tY:Lcom/xiaomi/passport/ui/l;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/l;->tY()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ak;->tY:Lcom/xiaomi/passport/ui/l;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ak;->tY:Lcom/xiaomi/passport/ui/l;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
