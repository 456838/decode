.class final Lcom/xiaomi/passport/ui/ag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic tT:Lcom/xiaomi/passport/ui/k;

.field final synthetic tU:Lcom/xiaomi/passport/widget/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/k;Lcom/xiaomi/passport/widget/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/ag;->tT:Lcom/xiaomi/passport/ui/k;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/ag;->tU:Lcom/xiaomi/passport/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ag;->tU:Lcom/xiaomi/passport/widget/e;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/e;->dismiss()V

    return-void
.end method
