.class final Lcom/xiaomi/passport/ui/ay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic us:Lcom/xiaomi/passport/ui/w;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/w;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/ay;->us:Lcom/xiaomi/passport/ui/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ay;->us:Lcom/xiaomi/passport/ui/w;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/w;->pH:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ay;->us:Lcom/xiaomi/passport/ui/w;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/w;->wh(Lcom/xiaomi/passport/ui/w;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ay;->us:Lcom/xiaomi/passport/ui/w;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/w;->wi(Lcom/xiaomi/passport/ui/w;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
