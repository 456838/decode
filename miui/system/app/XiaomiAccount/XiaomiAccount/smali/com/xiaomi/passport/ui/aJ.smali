.class final Lcom/xiaomi/passport/ui/aJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/task/l;


# instance fields
.field final synthetic uM:Lcom/xiaomi/passport/ui/w;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/w;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aJ;->uM:Lcom/xiaomi/passport/ui/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public yz(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/widget/f;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aJ;->uM:Lcom/xiaomi/passport/ui/w;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/w;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/widget/f;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0086

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/f;->setTitle(I)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/f;->zw(Ljava/lang/CharSequence;)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/aK;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/aK;-><init>(Lcom/xiaomi/passport/ui/aJ;)V

    const v2, 0x7f0c0012

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/passport/widget/f;->zy(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/f;->zt()Lcom/xiaomi/passport/widget/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/e;->show()V

    return-void
.end method
