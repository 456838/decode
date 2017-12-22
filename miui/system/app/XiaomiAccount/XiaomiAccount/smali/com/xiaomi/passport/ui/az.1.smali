.class final Lcom/xiaomi/passport/ui/az;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/ui/n;


# instance fields
.field final synthetic ut:Lcom/xiaomi/passport/ui/w;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/w;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/az;->ut:Lcom/xiaomi/passport/ui/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uj(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/az;->ut:Lcom/xiaomi/passport/ui/w;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/w;->wj(Lcom/xiaomi/passport/ui/w;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
