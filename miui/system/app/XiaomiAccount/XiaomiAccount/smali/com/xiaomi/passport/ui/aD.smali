.class final Lcom/xiaomi/passport/ui/aD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic uA:Lcom/xiaomi/passport/ui/w;

.field final synthetic uB:Lcom/xiaomi/passport/widget/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/w;Lcom/xiaomi/passport/widget/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aD;->uA:Lcom/xiaomi/passport/ui/w;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/aD;->uB:Lcom/xiaomi/passport/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aD;->uA:Lcom/xiaomi/passport/ui/w;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aD;->uA:Lcom/xiaomi/passport/ui/w;

    invoke-static {v1}, Lcom/xiaomi/passport/ui/w;->wk(Lcom/xiaomi/passport/ui/w;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/xiaomi/passport/ui/w;->wt(Lcom/xiaomi/passport/ui/w;I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aD;->uB:Lcom/xiaomi/passport/widget/e;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/e;->dismiss()V

    return-void
.end method
