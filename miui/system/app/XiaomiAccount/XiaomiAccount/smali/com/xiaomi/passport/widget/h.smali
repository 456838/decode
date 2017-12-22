.class public Lcom/xiaomi/passport/widget/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/utils/e;


# instance fields
.field private wJ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/widget/h;->wJ:Landroid/content/Context;

    return-void
.end method

.method static synthetic zN(Lcom/xiaomi/passport/widget/h;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/h;->wJ:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public wK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/widget/h;->wJ:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/widget/f;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/h;->wJ:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/widget/f;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c009f

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/f;->setTitle(I)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/f;->zw(Ljava/lang/CharSequence;)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/widget/t;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/passport/widget/t;-><init>(Lcom/xiaomi/passport/widget/h;Ljava/lang/String;)V

    const v2, 0x7f0c009e

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/passport/widget/f;->zy(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/f;->zt()Lcom/xiaomi/passport/widget/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/e;->show()V

    return-void
.end method
