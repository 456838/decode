.class final Lcom/xiaomi/passport/ui/af;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic tS:Lcom/xiaomi/passport/ui/k;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/k;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/af;->tS:Lcom/xiaomi/passport/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/af;->tS:Lcom/xiaomi/passport/ui/k;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/k;->tM(Lcom/xiaomi/passport/ui/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/af;->tS:Lcom/xiaomi/passport/ui/k;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/k;->tN(Lcom/xiaomi/passport/ui/k;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/af;->tS:Lcom/xiaomi/passport/ui/k;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/ui/q;->uI(Landroid/app/Activity;)V

    goto :goto_0
.end method
