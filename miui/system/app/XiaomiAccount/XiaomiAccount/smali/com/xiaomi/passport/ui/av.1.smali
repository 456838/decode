.class final Lcom/xiaomi/passport/ui/av;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic uo:Lcom/xiaomi/passport/ui/u;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/u;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/av;->uo:Lcom/xiaomi/passport/ui/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/av;->uo:Lcom/xiaomi/passport/ui/u;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/u;->vK(Lcom/xiaomi/passport/ui/u;)Z

    :cond_0
    return-void
.end method
