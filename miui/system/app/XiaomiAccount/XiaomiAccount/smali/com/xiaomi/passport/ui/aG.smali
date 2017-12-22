.class final Lcom/xiaomi/passport/ui/aG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic uG:Lcom/xiaomi/passport/ui/w;

.field final synthetic uH:Lcom/xiaomi/passport/widget/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/w;Lcom/xiaomi/passport/widget/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aG;->uG:Lcom/xiaomi/passport/ui/w;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/aG;->uH:Lcom/xiaomi/passport/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aG;->uG:Lcom/xiaomi/passport/ui/w;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/w;->wr(Lcom/xiaomi/passport/ui/w;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aG;->uH:Lcom/xiaomi/passport/widget/e;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/e;->dismiss()V

    return-void
.end method
