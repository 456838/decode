.class final Lcom/xiaomi/passport/ui/aF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic uE:Lcom/xiaomi/passport/ui/w;

.field final synthetic uF:Lcom/xiaomi/passport/widget/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/w;Lcom/xiaomi/passport/widget/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aF;->uE:Lcom/xiaomi/passport/ui/w;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/aF;->uF:Lcom/xiaomi/passport/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aF;->uE:Lcom/xiaomi/passport/ui/w;

    const-string/jumbo v1, "click_downLink_reg_btn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/w;->ug(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aF;->uE:Lcom/xiaomi/passport/ui/w;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/w;->wq(Lcom/xiaomi/passport/ui/w;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aF;->uF:Lcom/xiaomi/passport/widget/e;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/e;->dismiss()V

    return-void
.end method
