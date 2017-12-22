.class final Lcom/xiaomi/passport/ui/ai;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic tW:Lcom/xiaomi/passport/ui/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/ai;->tW:Lcom/xiaomi/passport/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ai;->tW:Lcom/xiaomi/passport/ui/l;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
